<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>持名法州主页</title>
<link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../themes/IconExtension.css">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	<!--菜单处理-->

    alert("页面开始加载")
    $.ajax({
        url:"${pageContext.request.contextPath}/menu/showAllByMenu",
        dataType:"JSON",
        type:"post",
        success:function (menus) {
            $.each(menus,function (index,first) {

                var a = "";
                $.each(first.menuList,function (index1,first1) {
                    a+="<p style='text-align: center'>"+first1.title+"</p>";
                })


                $('#aa').accordion('add', {
                    title: first.title,
                    content: a,
                    selected: false,
                    iconCls:"icon-neighbourhood"
                });



                console.log(first.title)
                //alert("哈哈哈")
                
            })
        },

    })

</script>

</head>
<body class="easyui-layout">
<%--suppress BadExpressionStatementJS --%>
    <div data-options="region:'north',split:true" style="height:60px;background-color:  #5C160C">
    	<div style="font-size: 24px;color: #FAF7F7;font-family: 楷体;font-weight: 900;width: 500px;float:left;padding-left: 20px;padding-top: 10px" >持名法州后台管理系统</div>
    	<div style="font-size: 16px;color: #FAF7F7;font-family: 楷体;width: 300px;float:right;padding-top:15px">欢迎您:${sessionScope.u.username}&nbsp;<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">修改密码</a>&nbsp;&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-01'" id="logout" >退出系统</a></div>
    </div>
    <div data-options="region:'south',split:true" style="height: 40px;background: #5C160C">
    	<div style="text-align: center;font-size:15px; color: #FAF7F7;font-family: 楷体" >&copy;百知教育 htf@zparkhr.com.cn</div>
    </div>


    <!--目录导航-->
    <div data-options="region:'west',title:'目录导航',split:true" style="width:220px;">
            <div id="aa" class="easyui-accordion">
            </div>
    </div>


    <!--中间的展示部分-->
    <div data-options="region:'center'">
        <div id="tt" class="easyui-tabs" data-options="fit:true,narrow:true,pill:true,">
            <div title="主页" data-options="iconCls:'icon-neighbourhood',closable:true,"  style="background-image:url(image/shouye.jpg);background-repeat: no-repeat;background-size:100% 100%;">
                <img src="../img/shouye.jpg"/>
            </div>
        </div>
    </div>



</body>
</html>