<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/17
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <!--css样式-->
    <style type="text/css">
        #imgId5{
            margin-left: 275px;
        }
        /*控制超链接下划线*/
        a{
            text-decoration: none;
        }
    </style>
</head>
<body>
<table   width="100%">
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
    <!--第二行：存放菜单信息  背景黑色 超链接颜色为白色-->
    <tr bgcolor="#808080" height="50px">
        <td>
            <a href=""><font color="white">首页</font></a>&nbsp;&nbsp;&nbsp;
            <a href=""><font color="white">精品手机</font></a>&nbsp;&nbsp;&nbsp;
            <a href=""><font color="white">数码时尚</font></a>&nbsp;&nbsp;&nbsp;
            <a href=""><font color="white">办公设备</font></a>&nbsp;&nbsp;&nbsp;
            <a href=""><font color="white">主板显卡</font></a>&nbsp;&nbsp;&nbsp;
            <a href=""><font color="white">智能设备</font></a>&nbsp;&nbsp;&nbsp;
            <a href=""><font color="white">Macbook</font></a>&nbsp;&nbsp;&nbsp;
        </td>
    </tr>

    <!-- 银行图片-->
    <tr align="center">
        <td>
            <table cellspacing="20px">
                <tr>
                    <td colspan="3">
                        <strong>付款金额：<span style="color:red">￥${requestScope.total}</span>元</strong>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <strong>选择银行</strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" name="pd_FrpId" value="BOC-NET-B2C" />中国银行
                        <img src="${pageContext.request.contextPath}/bank_img/bc.bmp" align="middle" />
                    </td>
                    <td>
                        <input type="radio" name="pd_FrpId" value="ABC-NET-B2C" />农业银行
                        <img src="${pageContext.request.contextPath}/bank_img/abc.bmp" align="middle" />
                    </td>
                    <td>
                        <input type="radio" name="pd_FrpId" value="ICBC-NET-B2C" checked="checked" />工商银行
                        <img src="${pageContext.request.contextPath}/bank_img/icbc.bmp" align="middle" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" name="pd_FrpId" value="BOCO-NET-B2C" />交通银行
                        <img src="${pageContext.request.contextPath}/bank_img/bcc.bmp" align="middle" />
                    </td>
                    <td>
                        <input type="radio" name="pd_FrpId" value="PINGANBANK-NET" />平安银行
                        <img src="${pageContext.request.contextPath}/bank_img/pingan.bmp" align="middle" />
                    </td>
                    <td>
                        <input type="radio" name="pd_FrpId" value="CCB-NET-B2C" />建设银行
                        <img src="${pageContext.request.contextPath}/bank_img/ccb.bmp" align="middle" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" name="pd_FrpId" value="CEB-NET-B2C" />光大银行
                        <img src="${pageContext.request.contextPath}/bank_img/guangda.bmp" align="middle" />
                    </td>
                    <td>
                        <input type="radio" name="pd_FrpId" value="CMBCHINA-NET-B2C" />招商银行
                        <img src="${pageContext.request.contextPath}/bank_img/cmb.bmp" align="middle" />
                    </td>
                    <td></td>
                </tr>
                <tr align="right">
                    <td colspan="3" >
                        <a href="${pageContext.request.contextPath}/jsp/success.jsp">
                            <img src="${pageContext.request.contextPath}/img/quedingfukuan.png" width="100px" height="30px" />
                        </a>
                    </td>
                </tr>

            </table>

        </td>

    </tr>
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
</table>
</body>
</html>