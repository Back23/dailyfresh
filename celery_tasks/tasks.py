# coding=gbk
# ʹ��celery
from celery import Celery
from django.conf import settings
from django.core.mail import send_mail
from django.template import loader, RequestContext

import time

# ����������һ�˼��⼸��
import os
import django
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'dailyfresh.settings')
django.setup()

from goods.models import GoodsType, IndexGoodsBanner, IndexPromotionBanner, IndexTypeGoodsBanner

# ����һ��Celery���ʵ������
# app = Celery('celery_tasks.tasks', broker='redis://127.0.0.1:6379/8')
app = Celery('celery_tasks.tasks', broker='redis://192.168.160.130:6379/8')


# ����������
@app.task
def send_register_active_email(to_email, username, token):
    """���ͼ����ʼ�"""
    # ��֯�ʼ���Ϣ
    subject = '�������ʻ�ӭ��Ϣ'
    message = ''
    sender = settings.EMAIL_FROM
    receiver = [to_email]
    html_message = '<h1>%s����ӭ���Ϊ��������ע���Ա</h1>�����������Ӽ��������˻�<br/>' \
                   '<a href="http://127.0.0.1:8000/user/active/%s">http://127.0.0.1:8000/user/active/%s</a>' \
                   % (username, token, token)

    send_mail(subject, message, sender, receiver, html_message=html_message)
    # time.sleep(5)


@app.task
def generate_static_index_html():
    """������ҳ��̬ҳ��"""
    types = GoodsType.objects.all()

    # ��ȡ��ҳ�ֲ���Ʒ��Ϣ
    goods_banners = IndexGoodsBanner.objects.all().order_by('index')

    # ��ȡ��ҳ�������Ϣ
    promotion_banners = IndexPromotionBanner.objects.all().order_by('index')

    # ��ȡ��ҳ������Ʒչʾ��Ϣ
    for type in types:
        # ��ȡtype������ҳ������Ʒ��ͼƬչʾ��Ϣ
        image_banners = IndexTypeGoodsBanner.objects.filter(type=type, display_type=1).order_by('index')
        # ��ȡtype������ҳ������Ʒ������չʾ��Ϣ
        title_banners = IndexTypeGoodsBanner.objects.filter(type=type, display_type=0).order_by('index')

        # ��̬��type�������ԣ��ֱ𱣴���ҳ������Ʒ��ͼƬչʾ��Ϣ������չʾ��Ϣ
        type.image_banners = image_banners
        type.title_banners = title_banners

    # ��֯ģ��������
    context = {'types': types,
               'goods_banners': goods_banners,
               'promotion_banners': promotion_banners}

    # ʹ��ģ��
    # 1.����ģ���ļ�����ģ�����
    temp = loader.get_template('static_index.html')
    # 1.1����ģ��������
    # context = RequestContext(request, context)
    # 2.ģ����Ⱦ
    static_index_html = temp.render(context)

    # ������ҳ��Ӧ��̬�ļ�
    save_path = os.path.join(settings.BASE_DIR, 'static/index.html')
    with open(save_path, 'w') as f:
        f.write(static_index_html)
