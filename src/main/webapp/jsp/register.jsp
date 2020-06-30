<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/11
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/registercss.css">
    <title>用户注册</title>
</head>
<body>

<div>
    <!--第一行：存放logo信息   嵌套一个一行三列的表格 -->
    <tr>
        <td>
            <table   width="100%" >
                <tr>
                    <td>
                        <img src="${pageContext.request.contextPath}/img/logo.jpg" />
                    </td>
                    <td >
                        <img src="${pageContext.request.contextPath}/img/img5.jpg" id="imgId5"/>&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/img6.jpg" />&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/img7.jpg" />&nbsp;&nbsp;
                        <img src="${pageContext.request.contextPath}/img/img4.jpg" />
                    </td>
                    <td align="center">
                        <a href=""><font color="#337AB7">登录</font></a>&nbsp;&nbsp;
                        <a href=""><font color="#337AB7">注册</font></a>&nbsp;&nbsp;
                        <a href=""><font color="#337AB7">购物车</font></a>&nbsp;&nbsp;
                    </td>
                </tr>
            </table>
        </td>
    </tr>

</div>

<div style="width:100%;background-image:url('${pageContext.request.contextPath}/image/registerBack.jpg'); background-size: cover;">


    <form action="${pageContext.request.contextPath}/UserServlet?method=register" method="post" class="bootstrap-frm">

        <h1>会员注册
            <span>USER REGISTER.</span>
        </h1>

        <label>
            <span>用户名</span>
            <input id="name" type="text" name="username" placeholder="请输入用户名" />
        </label>

        <label>
            <span>密  码</span>
            <input type="password" id="inputPassword" name="password" placeholder="请输入密码"/>
        </label>

        <label>
            <span>确认密码</span>
            <input type="password" id="confirmpwd" name="repassword" placeholder="请输入确认密码"/>
        </label>

        <label>
            <span>Email</span>
            <input type="email" id="inputEmail" name="email" placeholder="Email"/>
        </label>

        <label>
            <span>姓  名</span>
            <input type="text" id="usercaption" name="name" placeholder="请输入姓名"/>
        </label>




        <label>
            <span>性  别</span>
            <select name="sex">
                <option value="男">男</option>
                <option value="女">女</option>
            </select>
        </label>

        <label>
            <span>出生日期</span>
            <input id="birthday" type="text" name="birthday" placeholder="年/月/日" />
        </label>


        <label>
            <span>&nbsp;</span>
            <input type="submit"  width="100" value="注册" name="submit" border="0"
                   style="background: url('${pageContext.request.contextPath}/image/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0);
				    height:35px;width:100px;color:white;">
        </label>
    </form>

</div>

<div align="center">

    <!--第八行：存放友情链接-->
    <tr>
        <td>
            <p align="center">
                <a href=""><font color="#337AB7">关于我们</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">联系我们</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">联系客服</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">合作招商</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">商家帮助</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">营销中心</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">手机帮助</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">销售联盟</font></a>&nbsp;&nbsp;
            </p>
        </td>
    </tr>
    <!--第九行：存放版权信息-->
    <tr>
        <td align="center">
            © 2005-2020 东易买 版权所有，并保留所有权利
        </td>
    </tr>

</div>

</body>


</html>