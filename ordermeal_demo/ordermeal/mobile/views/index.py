from django.shortcuts import render
from django.http import HttpResponse,JsonResponse
from django.shortcuts import redirect
from django.core.urlresolvers import reverse
from django.core.exceptions import ObjectDoesNotExist

from datetime import datetime
import re
from common.models import Member,Shop,Category,Product
# Create your views here.
def index(request):
    '''移动端首页'''
    # 判断当前会员是否选择店铺
    if "shopinfo" not in request.session:
        return redirect(reverse('mobile_shop'))
    #加载菜品信息
    #context = {"cplist":[]}
    #return render(request,"mobile/index.html",context)
    return HttpResponse("首页")

def register(request):
    '''加载注册/登录页面'''
    return render(request,"mobile/register.html")

def doregister(request):
    '''执行注册/登录'''
    #验证判断
    verifycode = "1234" #request.session['verifycode']
    code = request.POST['code']
    if verifycode != code:
        context = {'info':'验证码错误！测试：1234'}
        return render(request,"mobile/register.html",context)

    #获取手机号码
    mobile=request.POST['mobile']
    if not(re.match("^[1][0-9]{10}$",mobile)):
        context = {'info':'手机号码格式错误!'}
        return render(request,"mobile/register.html",context)
    try:
        member = Member.objects.get(mobile=mobile)
        request.session['member_user'] = member.toDict()
    except ObjectDoesNotExist:
        member = Member()
        member.nickname = "顾客"
        member.avatar = "moren.png"
        member.mobile = mobile
        member.status = 1
        member.create_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        member.update_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        member.save()
        request.session['member_user'] = Member.objects.get(id=member.id).toDict()
    print(request.session['member_user'])
    return redirect(reverse('mobile_shop'))

def shop(request):
    ''' 呈现店铺选择页面 '''
    shoplist = Shop.objects.filter(status=1)
    context = {'shoplist':shoplist}
    return render(request,"mobile/shop.html",context)
