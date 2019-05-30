from django.conf.urls import url

from web.views import index

urlpatterns = [
    # 前台点餐首页
    url(r'^$', index.index, name="web_index"),

    # 前台管理员路由
    url(r'^login$', index.login, name="web_login"),
    url(r'^dologin$', index.dologin, name="web_dologin"),
    url(r'^logout$', index.logout, name="web_logout"),
    url(r'^verify$', index.verify, name="web_verify"), #验证码

    # # 购物车信息管理路由配置
    # url(r'^cart/add/(?P<pid>[0-9]+)$', cart.add, name="web_cart_add"),
    # url(r'^cart/del/(?P<pid>[0-9]+)$', cart.delete, name="web_cart_del"),
    # url(r'^cart/clear$', cart.clear, name="web_cart_clear"),
    # url(r'^cart/change$', cart.change, name="web_cart_change"),

    # # 订单处理
    # url(r'^orders/(?P<pIndex>[0-9]+)$', orders.index, name="web_orders_index"), #浏览订单
    # url(r'^orders/insert$', orders.insert,name='web_orders_insert'), #执行订单添加操作
    # url(r'^orders/detail$', orders.detail,name='web_orders_detail'), #订单的详情信息
    # url(r'^orders/status$', orders.status,name='web_orders_status'), #修改订单状态
]
