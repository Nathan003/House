<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
	<title>廉价租房-美好生活</title>

<meta name="keywords" content=""/>
<meta name="description" content=""/>
<link rel="shortcut icon" href="http://www.zhaotexiao.com/favicon.ico" type="image/x-icon"/>
	<link rel="stylesheet" href="../resources/css/style.css">
	<link rel="stylesheet" href="../resources/css/iconfont.css">
	<script
		src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
		<style type="text/css">
	#login-head{
	width:200px;
	padding-top:90px;
	padding-left:600px;
	color:white;
	}
	
	</style> 
		
</head>
<body>

	<div class="login-banner">
		<p style="color:red">${message }</p>
	<p style="color:red">${messages }</p>
	</div>
	<div class="login-box">
		<div class="box-con tran">
		<FORM method="post" action="login">
			<div class="login-con f-l">
				<div class="form-group">
					<input name="userName" value="${messagess} }" type="text" placeholder="您的账号" onkeyup="this.value=this.value.replace(/[, /<>]/g,'')"/>
					<span class="error-notic">您的账号不正确</span>
				</div>
				<div class="form-group">
					<input name="userPassword" type="password" placeholder="密码（字母、数字，至少6位）" onBlur="verify.PasswordLenght(this)">
					<span class="error-notic">密码不正确</span>
				</div>
				<div class="form-group">
					<button type="submit" class="tran pr">
						<a href="javascript:;" class="tran">登录</a>
						<!-- <img class="loading" src="../resources/images/loading.gif" style="display:block"> -->
					</button>
				</div>
				<div class="from-line"></div>
				<div class="form-group">
					<a href="javascript:;" class="move-signup a-tag tran blue-border">还没有帐号？免费注册<i class="iconfont tran">&#xe606;</i></a>
				</div>
				<div class="form-group">
					<a href="javascript:;" class="move-other a-tag tran">忘记密码？重置<i class="iconfont tran">&#xe606;</i></a>
				</div>
			</div>
			</FORM>	
			<!-- 登录 -->
			
			
          <FORM action="add">
			<div class="signup f-l">
				<div class="form-group">
					<div class="signup-form">
						<input name="userEmail" type="text" placeholder="您的邮箱" class="email-mobile" onBlur="verify.verifyEmail(this)">
					</div>
					<span class="error-notic">邮箱格式不正确</span>
				</div>
				<div class="signup-email">
					<div class="form-group">
						<input name="userName" type="text" placeholder="您的账号" onkeyup="this.value=this.value.replace(/[, /<>]/g,'')">
					</div>
					<div class="form-group">
						<input name="userPassword" type="password" placeholder="密码（字母、数字，至少6位）" onBlur="verify.PasswordLenght(this)">
						<span class="error-notic">密码长度不够</span>
					</div>
					<div class="form-group">
						<input name="userAddress" type="text" placeholder="您的住址">
					</div>
					<div class="form-group">
						<input name="userPhone" placeholder="您的手机号码" onBlur="verify.verifyMobile(this)" onkeyup="this.value=this.value.replace(/[, /<>]/g,'')">
						<span class="error-notic">手机号码不对</span>
					</div>
					<div class="form-group">
						<button type="submit" class="tran pr">
							<a href="javascript:;" class="tran">注册</a>
							<img class="loading" src="../resources/images/loading.gif">
						</button>
					</div>
					<p class="view-clause">点击注册，即同意我们的 <a href="#">用户隐私条款</a></p>
				</div>
				<div class="from-line"></div>
				<div class="form-group">
					<a href="javascript:;" class="move-login a-tag tran blue-border">已有帐号？登录<i class="iconfont tran">&#xe606;</i></a>
				</div>
			</div>
			</FORM>
			<!-- 邮箱注册 -->
			
			
          <form action="update">
			<div class="mimachongzhi f-l">
			<div class="form-group">
						<input name="userName" type="text" placeholder="您的账号" onkeyup="this.value=this.value.replace(/[, /<>]/g,'')">
					</div>
				<div class="form-group">
					<input name="userEmail" type="text" placeholder="请输入您的邮箱地址" onBlur="verify.verifyEmail(this)">
					<span class="error-notic">邮箱格式不正确</span>
				</div>
				<div class="form-group">
						<input name="userPassword" type="password" placeholder="更改后密码（字母、数字，至少6位）" onBlur="verify.PasswordLenght(this)">
						<span class="error-notic">密码长度不够</span>
				</div>
				<div class="form-group">
					<button type="submit" class="tran pr">
						<a href="javascript:;" class="tran">重置密码</a>
						<img class="loading" src="../resources/images/loading.gif">
					</button>
				</div>
				<div class="from-line"></div>
				<div class="form-group">
					<a href="javascript:;" class="move-signup	a-tag tran blue-border">还没有帐号？免费注册<i class="iconfont tran">&#xe606;</i></a>
				</div>
				<div class="form-group">
					<a href="javascript:;" class="move-login a-tag tran">已有帐号？登录<i class="iconfont tran">&#xe606;</i></a>
				</div>
			</div>
			<!-- 密码重置 -->
			</form>

		</div>
	</div>
	
	<div style="height:80px;"></div>
	
	
	<script>
		var _handle='';//储存电话是否填写正确
		$(function(){
			$(".signup-form input").on("focus",function(){
				$(this).parent().addClass("border");
			});
			$(".signup-form input").on("blur",function(){
				$(this).parent().removeClass("border");
			})
			//注册方式切换
			$(".signup-select").on("click",function(){
				var _text=$(this).text();
				var $_input=$(this).prev();
				$_input.val('');
				if(_text=="手机注册"){
					$(".signup-tel").fadeIn(200);
					$(".signup-email").fadeOut(180);
					$(this).text("邮箱注册");
					$_input.attr("placeholder","手机号码");
					$_input.attr("onblur","verify.verifyMobile(this)");
					$(this).parents(".form-group").find(".error-notic").text("手机号码格式不正确")

				}
				if(_text=="邮箱注册"){
					$(".signup-tel").fadeOut(180);
					$(".signup-email").fadeIn(200);
					$(this).text("手机注册");
					$_input.attr("placeholder","邮箱");
					$_input.attr("onblur","verify.verifyEmail(this)");
					$(this).parents(".form-group").find(".error-notic").text("邮箱格式不正确")
				}
			});
			//步骤切换
			var _boxCon=$(".box-con");
			$(".move-login").on("click",function(){
				$(_boxCon).css({
					'marginLeft':0
				})
			});
			$(".move-signup").on("click",function(){
				$(_boxCon).css({
					'marginLeft':-320
				})
			});
			$(".move-other").on("click",function(){
				$(_boxCon).css({
					'marginLeft':-640
				})
			});
			$(".move-reset").on("click",function(){
				$(_boxCon).css({
					'marginLeft':-960
				})
			});
			$("body").on("click",".move-addinf",function(){
				$(_boxCon).css({
					'marginLeft':-1280
				})
			});

			//获取短信验证码
			var messageVerify=function (){
				$(".get-message").on("click",function(){
					if(_handle){
						$("#message-inf").fadeIn(100)
						$(this).html('<a href="javascript:;">下一步</a><img class="loading" src="images/loading.gif">').addClass("move-addinf");
					}
				});
			}();
		});
		
		//表单验证
		function showNotic(_this){
			$(_this).parents(".form-group").find(".error-notic").fadeIn(100);
            $(_this).focus();
		}//错误提示显示
		function hideNotic(_this){
			$(_this).parents(".form-group").find(".error-notic").fadeOut(100);
		}//错误提示隐藏
		var verify={
			verifyEmail:function(_this){
				var validateReg = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
				var _value=$(_this).val();
            	if(!validateReg.test(_value)){
            		showNotic(_this)
            	}else{
            		hideNotic(_this)
            	}
			},//验证邮箱
			verifyMobile:function(_this){
				var validateReg = /^((\+?86)|(\(\+86\)))?1\d{10}$/;
				var _value=$(_this).val();
            	if(!validateReg.test(_value)){
            		showNotic(_this);
            		_handle=false;
            	}else{
            		hideNotic(_this);
            		_handle=true;
            	}
            	return _handle
			},//验证手机号码
			PasswordLenght:function(_this){
				var _length=$(_this).val().length;
				if(_length<6){
					showNotic(_this)
				}else{
            		hideNotic(_this)
            	}
			},//验证设置密码长度
			VerifyCount:function(_this){
				var _count="123456";
				var _value=$(_this).val();
				console.log(_value)
				if(_value!=_count){
					showNotic(_this)
				}else{
					hideNotic(_this)
				}
			}//验证验证码
		}
	</script>
<!-- 统计代码 start -->
<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F96790c81142777e7724407f030936c10' type='text/javascript'%3E%3C/script%3E"));
</script> 
<!-- 统计代码 end -->

</body>
</html>