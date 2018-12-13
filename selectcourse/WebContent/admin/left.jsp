<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.yqh.beans.Admin" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="http://localhost:8088/selectcourse/resources/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="http://localhost:8088/selectcourse/resources/js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson .header").click(function(){
		var $parent = $(this).parent();
		$(".menuson>li.active").not($parent).removeClass("active open").find('.sub-menus').hide();
		
		$parent.addClass("active");
		if(!!$(this).next('.sub-menus').size()){
			if($parent.hasClass("open")){
				$parent.removeClass("open").find('.sub-menus').hide();
			}else{
				$parent.addClass("open").find('.sub-menus').show();	
			}
			
			
		}
	});
	
	// 三级菜单点击
	$('.sub-menus li').click(function(e) {
        $(".sub-menus li.active").removeClass("active")
		$(this).addClass("active");
    });
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('.menuson').slideUp();
		if($ul.is(':visible')){
			$(this).next('.menuson').slideUp();
		}else{
			$(this).next('.menuson').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#fff3e1;">
	<div class="lefttop"><span></span>学生选课系统</div>
    
    <dl class="leftmenu">
        
    <dd>
	    <div class="title">
	    	<span><img src="http://localhost:8088/selectcourse/resources/images/leftico01.png" /></span>课程管理
	    </div>
    	<ul class="menuson">
	        <li>
	            <div class="header"><cite></cite><a href="/selectcourse/CourseServlet?action=findAllAdm" target="rightFrame">管理选课</a><i></i></div>                
	        </li>
	        <%
				//HttpSession sessions=request.getSession();
				//Object stus = session.getAttribute("stus");
				//Students stus1 = (Students)stus;
			%>
	        
	       <li><cite></cite><a href="http://localhost:8088/selectcourse/admin/addCou.jsp" target="rightFrame">新建课程</a><i></i></li>
        </ul>    
    </dd>
        
    
   <dd>
	    <div class="title">
	    	<span><img src="http://localhost:8088/selectcourse/resources/images/leftico02.png" /></span>学生管理
	    </div>
	    <ul class="menuson">
	        <li><cite></cite><a href="/selectcourse/StuCouServlet?action=findStuSelectCou" target="rightFrame">学生选课记录</a><i></i></li>
	        <li><cite></cite><a href="/selectcourse/ShowLogServlet?action=findHisAll" target="rightFrame">学生操作记录</a><i></i></li>
        </ul>     
    </dd> 
    <dd>
	    <div class="title">
	    	<span><img src="http://localhost:8088/selectcourse/resources/images/leftico03.png" /></span>Admin管理
	    </div>
	    <ul class="menuson">
         	<li><cite></cite><a href="http://localhost:8088/selectcourse/admin/updatePwd.jsp" target="rightFrame">修改密码</a><i></i></li>
	        <li><cite></cite><a href="/selectcourse/ShowLogServlet?action=findHisAdm&stuId=1" target="rightFrame">Admin操作记录</a><i></i></li>
         	<li><cite></cite><a href="http://localhost:8088/selectcourse/admin/explain.jsp" target="rightFrame">操作说明</a><i></i></li>
        </ul>     
    </dd>
    </dl>
    
</body>
</html>
