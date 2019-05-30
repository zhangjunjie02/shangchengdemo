from django.conf.urls import url

from mobile.views import index

urlpatterns = [
    # 移动端首页
    url(r'^$', index.index, name="mobile_index"),

    # 移动端会员注册/登录路由
    url(r'^register$', index.register, name="mobile_register"),
    url(r'^doregister$', index.doregister, name="mobile_doregister"),

    # 选择商铺
    url(r'^shop$', index.shop, name="mobile_shop"),
    # url(r'^shop/select$', index.selectShop, name="mobile_select_shop"),

    # # Ajax加载单个菜品信息
    # url(r'^loadProduct$', index.loadProduct, name="mobile_loadProduct"),

    # # 处理订单
    # url(r'^orders/add$', index.addOrders, name="mobile_orders_add"),

    # # 会员中心
    # url(r'^member$', member.index, name="mobile_member_index"), #会员中心首页
    # url(r'^member/orders$', member.orders, name="mobile_member_orders"), #会员中心订单
    # url(r'^member/detail$', member.detail, name="mobile_member_detail"), #会员订单详情
    # url(r'^member/logout$', member.logout, name="mobile_member_logout"), #会员退出
]
