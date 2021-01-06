<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
 

 <div class="content">
  <form  name="form1" action="userServlet?action=login" method="post">
        <div class="form sign-in">
            <h2>欢迎登录联想</h2>
            <label>
                <!-- <span>用户名</span> -->
                <input type="text" name="userno" id="userno" placeholder="用户名"/>
            </label>
            <label>
                <!-- <span>密码</span> -->
                <input type="password" name="pwd" id="pwd" placeholder="密码" />
            </label>
            <p class="forgot-pass"><a href="javascript:">忘记密码？</a></p>
            <!-- <button type="button" class="submit" >登 录</button> -->
            <input type="submit" class="submit"  value="登录">
            <!-- <button type="button" class="fb-btn">使用 <span>facebook</span> 帐号登录</button> -->
        </div>
       </form>
        
        <div class="sub-cont">
            <div class="img">
                <div class="img__text m--up">
                    <h2>还未注册？</h2>
                    <p>立即注册，获取大量优惠！</p>
                </div>
                <div class="img__text m--in">
                    <h2>已有帐号？</h2>
                    <p>有帐号就登录吧，好久不见了！</p>
                </div>
                <div class="img__btn">
                    <span class="m--up">注 册</span>
                    <span class="m--in">登 录</span>
                </div>
            </div>
            <form  name="form2" action="userServlet?action=reg" method="post">
            <div class="form sign-up">
                <h2>立即注册</h2>
                <label>
                    <!-- <span>用户名</span> -->
                    <input type="text"  name="Nuserno" id="Nuserno" placeholder="输入用户名"/>
                </label>
                <label>
                    <!-- <span>密码</span> -->
                    <input type="password"  name="Npwd" id="Npwd" placeholder="输入密码"/>
                </label>
                <label>
                    <!-- <span>邮箱</span> -->
                    <input type="email"  name="Nemail" id="Nemail" placeholder="输入邮箱"/>
                </label>
                <label>
                    <!-- <span>手机号码</span> -->
                    <input type="text"  name="Nphone" id="Nphone" placeholder="输入手机号码"/>
                </label>
                <input type="submit" class="submit"  value="注册">
                <!-- <button type="button" class="fb-btn">使用 <span>facebook</span> 帐号注册</button> -->
            </div>
            </form>
        </div>
    </div>

    <script src="js/script.js"></script>
	
	<div style="text-align:center;">
	</div>
 

</body>
</html>