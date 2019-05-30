from django.shortcuts import render
from django.http import HttpResponse
from django.shortcuts import redirect
from django.core.urlresolvers import reverse

from common.models import User,Shop,Category,Product
# Create your views here.
def index(request):
    '''点餐前台首页'''

    context = {"categorylist":[]}
    
    #加载模板输出
    return render(request,"web/index.html",context)

def login(request):
    '''加载登录页面'''
    shoplist = Shop.objects.filter(status=1)
    print(shoplist)
    context = {'shoplist':shoplist}
    return render(request,"web/login.html",context)

def dologin(request):
    '''执行登录'''
    #判断商铺选择
    if request.POST['shop_id'] == '0':
        #context = {'info':'请选择您所在的商铺！'}
        return redirect(reverse('web_login')+"?typeinfo=1")
        #return render(request,"web/login.html",context)

    #验证判断
    verifycode = request.session['verifycode']
    code = request.POST['code']
    if verifycode != code:
        return redirect(reverse('web_login')+"?typeinfo=2")
        #context = {'info':'验证码错误！'}
        #return render(request,"web/login.html",context)

    try:
        #根据登录账号获取用户信息
        user = User.objects.get(username=request.POST['username'])
        # 校验当前用户状态是否是管理员
        if user.status == 1:
            #获取密码并md5
            import hashlib
            md5 = hashlib.md5()
            n = user.password_salt
            s = request.POST['pass']+str(n) 
            md5.update(s.encode('utf-8'))
            # 校验密码是否正确
            if user.password_hash == md5.hexdigest():
                # 将当前登录成功用户信息以adminuser这个key放入到session中
                request.session['webuser']=user.toDict()
                #加载当前商铺信息
                shopob = Shop.objects.get(id=request.POST['shop_id'])
                request.session['shopinfo']=shopob.toDict()
                return redirect(reverse('web_index'))
            else:
                #context={"info":"登录密码错误！"}
                return redirect(reverse('web_login')+"?typeinfo=5")
        else:
            #context={"info":"此用户非管理账号！"}
            return redirect(reverse('web_login')+"?typeinfo=4")
    except Exception as err:
        print(err)
        #context={"info":"登录账号不存在！"}
        return redirect(reverse('web_login')+"?typeinfo=3")
    #return render(request,"web/login.html",context)

def logout(request):
    '''执行退出'''
    #del request.session['webuser']
    request.session.flush()
    return redirect(reverse('web_login'))

def verify(request):
    #引入随机函数模块
    import random
    from PIL import Image, ImageDraw, ImageFont
    #定义变量，用于画面的背景色、宽、高
    #bgcolor = (random.randrange(20, 100), random.randrange(
    #    20, 100),100)
    bgcolor = (242,164,247)
    width = 100
    height = 25
    #创建画面对象
    im = Image.new('RGB', (width, height), bgcolor)
    #创建画笔对象
    draw = ImageDraw.Draw(im)
    #调用画笔的point()函数绘制噪点
    for i in range(0, 100):
        xy = (random.randrange(0, width), random.randrange(0, height))
        fill = (random.randrange(0, 255), 255, random.randrange(0, 255))
        draw.point(xy, fill=fill)
    #定义验证码的备选值
    #str1 = 'ABCD123EFGHIJK456LMNOPQRS789TUVWXYZ0'
    str1 = '0123456789'
    #随机选取4个值作为验证码
    rand_str = ''
    for i in range(0, 4):
        rand_str += str1[random.randrange(0, len(str1))]
    #构造字体对象，ubuntu的字体路径为“/usr/share/fonts/truetype/freefont”
    font = ImageFont.truetype('static/msyh.ttf', 21)
    #font = ImageFont.load_default().font
    #构造字体颜色
    fontcolor = (255, random.randrange(0, 255), random.randrange(0, 255))
    #绘制4个字
    draw.text((5, -3), rand_str[0], font=font, fill=fontcolor)
    draw.text((25, -3), rand_str[1], font=font, fill=fontcolor)
    draw.text((50, -3), rand_str[2], font=font, fill=fontcolor)
    draw.text((75, -3), rand_str[3], font=font, fill=fontcolor)
    #释放画笔
    del draw
    #存入session，用于做进一步验证
    request.session['verifycode'] = rand_str
    """
    python2的为
    # 内存文件操作
    import cStringIO
    buf = cStringIO.StringIO()
    """
    # 内存文件操作-->此方法为python3的
    import io
    buf = io.BytesIO()
    #将图片保存在内存中，文件类型为png
    im.save(buf, 'png')
    #将内存中的图片数据返回给客户端，MIME类型为图片png
    return HttpResponse(buf.getvalue(), 'image/png')