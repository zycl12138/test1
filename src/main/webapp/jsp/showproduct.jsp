<%@ page import="com.bean.Product" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/15
  Time: 0:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <!--js动态效果-->
    <script type="text/javascript">
        /*轮播图*/
        onload = function(){
            setInterval("qhimg()",2000);
        }
        var i = 8;
        function qhimg(){
            i++;
            var imgObj = document.getElementById("imgid");
            imgObj.src="../img/img"+i+".jpg";

            if(i==9){
                i=7;
            }
        }
    </script>
</head>
<body>
<table   width="100%">
    <!--第一行：存放logo信息   嵌套一个一行三列的表格 -->
    <tr>
        <td>
            <table   width="100%" >
                <tr>
                    <td>
                        <img src="../img/logo.jpg" />
                    </td>
                    <td >
                        <img src="../img/img5.jpg" id="imgId5"/>&nbsp;&nbsp;
                        <img src="../img/img6.jpg" />&nbsp;&nbsp;
                        <img src="../img/img7.jpg" />&nbsp;&nbsp;
                        <img src="../img/img4.jpg" />
                    </td>
                    <td align="center">
                        <c:choose>
                            <c:when test="${sessionScope.user!=null}">
                                欢迎,${sessionScope.user.name}&nbsp;&nbsp;
                                <a href="${pageContext.request.contextPath}/jsp/register.jsp"><font color="#337AB7">退出</font></a>&nbsp;&nbsp;
                                <a href="cart.html"><font color="#337AB7">购物车</font></a>
                            </c:when>
                            <c:otherwise>
                                <a href="${pageContext.request.contextPath}/jsp/login.jsp"><font color="#337AB7">登录</font></a>&nbsp;&nbsp;
                                <a href="${pageContext.request.contextPath}/jsp/register.jsp"><font color="#337AB7">注册</font></a>&nbsp;&nbsp;
                                <a href="${pageContext.request.contextPath}/jsp/cart.jsp"><font color="#337AB7">购物车</font></a>
                            </c:otherwise>
                        </c:choose>
                       &nbsp;&nbsp;
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
    <!--第三行：存放轮播图信息-->
    <tr>
        <td>
            <p></p>
            <img id="imgid" src="../img/img8.jpg" width="100%" height="350px"/>
        </td>
    </tr>
    <!--第四行：存放热门商品信息  需要嵌套一个三行七列的表格  涉及到行列合并-->
    <tr>
        <td>
            <table width="100%">
                <tr>
                    <td colspan="5">
                        <font size="5">热门商品</font>
                        <img src="../img/title2.jpg" />
                    </td>
                </tr>

                <tr align="center">
                <c:forEach items="${requestScope.hotProduct}" var="p" begin="0" end="4">
                    <td>
                        <a href="${pageContext.request.contextPath}/ProductServlet?method=findProductById&productId=${p.pro_id}">
                            <img src="${pageContext.request.contextPath}/${p.pro_min_img}" width="70%"/>
                        </a>
                        <br />
                        <font color="red">￥：${p.shop_price}</font>
                        <br />
                        <span>${p.pro_name}</span>
                    </td>
                </c:forEach>
                </tr>
                <tr align="center">
                    <c:forEach items="${requestScope.hotProduct}" var="p" begin="5" end="9">
                        <td>
                            <a href="${pageContext.request.contextPath}/ProductServlet?method=findProductById&productId=${p.pro_id}">
                                <img src="${pageContext.request.contextPath}/${p.pro_min_img}" width="70%"/>
                            </a>
                            <br />
                            <font color="red">￥：${p.shop_price}</font>
                            <br />
                            <span>${p.pro_name}</span>
                        </td>
                    </c:forEach>
                </tr>
                <tr align="center">
                    <c:forEach items="${requestScope.hotProduct}" var="p" begin="10" end="14">
                        <td>
                            <a href="${pageContext.request.contextPath}/ProductServlet?method=findProductById&productId=${p.pro_id}">
                                <img src="${pageContext.request.contextPath}/${p.pro_min_img}" width="70%"/>
                            </a>
                            <br />
                            <font color="red">￥：${p.shop_price}</font>
                            <br />
                            <span>${p.pro_name}</span>
                        </td>
                    </c:forEach>
                </tr>

<%--                <tr align="center">--%>
<%--                    <td>--%>
<%--                        <img src="../img/ry00001min.jpg" width="70%"/>--%>
<%--                        <br />--%>
<%--                        <font color="red">￥：1499</font>--%>
<%--                        <br />--%>
<%--                        <span>荣耀9X</span>--%>
<%--                    </td>--%>
<%--                    <td>--%>
<%--                        <img src="../img/ry00002min.jpg" width="70%"/>--%>
<%--                        <br />--%>
<%--                        <font color="red">￥：3210</font>--%>
<%--                        <br />--%>
<%--                        <span>荣耀20 李现同款</span>--%>
<%--                    </td>--%>
<%--                    <td>--%>
<%--                        <img src="../img/ry00003min.jpg" width="70%"/>--%>
<%--                        <br />--%>
<%--                        <font color="red">￥：999</font>--%>
<%--                        <br />--%>
<%--                        <span>荣耀20i 3200万</span>--%>
<%--                    </td>--%>

<%--                    <td>--%>
<%--                        <img src="../img/hm00001min.jpg" width="70%"/>--%>
<%--                        <br />--%>
<%--                        <font color="red">￥：1999</font>--%>
<%--                        <br />--%>
<%--                        <span>Redmi 8A 5000m</span>--%>
<%--                    </td>--%>

<%--                    <td>--%>
<%--                        <img src="../img/hm00002min.jpg" width="70%"/>--%>
<%--                        <br />--%>
<%--                        <font color="red">￥：1399</font>--%>
<%--                        <br />--%>
<%--                        <span>Redmi Note8Pro </span>--%>
<%--                    </td>--%>
<%--                </tr>--%>
<%--                <tr align="center">--%>
<%--                    <td>--%>
<%--                        <img src="../img/hm00003min.jpg" width="70%"/>--%>
<%--                        <br />--%>
<%--                        <font color="red">￥：969</font>--%>
<%--                        <br />--%>
<%--                        <span>Redmi Note8 4800</span>--%>
<%--                    </td>--%>
<%--                    <td>--%>
<%--                        <img src="../img/hm00004min.jpg" width="70%"/>--%>
<%--                        <br />--%>
<%--                        <font color="red">￥：669</font>--%>
<%--                        <br />--%>
<%--                        <span>Redmi 8A 5000mAh</span>--%>
<%--                    </td>--%>
<%--                    <td>--%>
<%--                        <img src="../img/hm00005min.jpg" width="70%"/>--%>
<%--                        <br />--%>
<%--                        <font color="red">￥：3299</font>--%>
<%--                        <br />--%>
<%--                        <span>Redmi Note7 4800万</span>--%>
<%--                    </td>--%>
<%--                    <td>--%>
<%--                        <img src="../img/hm00006min.jpg" width="70%"/>--%>
<%--                        <br />--%>
<%--                        <font color="red">￥：748</font>--%>
<%--                        <br />--%>
<%--                        <span>Redmi 7 4000mAh</span>--%>
<%--                    </td>--%>
<%--                    <td>--%>
<%--                        <img src="../img/ry00004min.jpg" width="70%"/>--%>
<%--                        <br />--%>
<%--                        <font color="red">￥：3499</font>--%>
<%--                        <br />--%>
<%--                        <span>荣耀6m quse</span>--%>
<%--                    </td>--%>
<%--                </tr>--%>
<%--                <tr align="center">--%>
<%--                    <td>--%>
<%--                        <img src="../img/xm00001min.jpg" width="70%"/>--%>
<%--                        <br />--%>
<%--                        <font color="red">￥：999</font>--%>
<%--                        <br />--%>
<%--                        <span>小米Max3 5500mAh</span>--%>
<%--                    </td>--%>
<%--                    <td>--%>
<%--                        <img src="../img/xm00002min.jpg" width="70%"/>--%>
<%--                        <br />--%>
<%--                        <font color="red">￥：1698</font>--%>
<%--                        <br />--%>
<%--                        <span>小米CC9美图定制版 </span>--%>
<%--                    </td>--%>
<%--                    <td>--%>
<%--                        <img src="../img/xm00003min.jpg" width="70%"/>--%>
<%--                        <br />--%>
<%--                        <font color="red">￥：967</font>--%>
<%--                        <br />--%>
<%--                        <span>小米红米8A </span>--%>
<%--                    </td>--%>
<%--                    <td>--%>
<%--                        <img src="../img/xm00004min.jpg" width="70%"/>--%>
<%--                        <br />--%>
<%--                        <font color="red">￥：748</font>--%>
<%--                        <br />--%>
<%--                        <span>小米 红米Note8</span>--%>
<%--                    </td>--%>
<%--                    <td>--%>
<%--                        <img src="../img/ry00005min.jpg" width="70%"/>--%>
<%--                        <br />--%>
<%--                        <font color="red">￥：3499</font>--%>
<%--                        <br />--%>
<%--                        <span>荣耀6m quse</span>--%>
<%--                    </td>--%>
<%--                </tr>--%>
            </table>
        </td>
    </tr>
    <!--第五行：存放图片信息-->
    <tr>
        <td>
            <img src="../img/img2.webp" width="100%" />
        </td>
    </tr>
    <!--第六行：存放优选商品信息  需要嵌套一个三行七列的表格  涉及到行列合并-->
    <tr>
        <td>
            <table width="100%">
                <tr>
                    <td colspan="5">
                        <font size="5">优选商品</font>
                        <img src="../img/title2.jpg" />
                    </td>
                </tr>

                <tr align="center">
                    <c:forEach items="${requestScope.optimization}" var="p" begin="0" end="4">
                        <td>
                            <a href="${pageContext.request.contextPath}/ProductServlet?method=findProductById&productId=${p.pro_id}">
                                <img src="${pageContext.request.contextPath}/${p.pro_min_img}" width="70%"/>
                            </a>
                            <br />
                            <font color="red">￥：${p.market_price}</font>
                            <br />
                            <span>${p.pro_name}</span>
                        </td>
                    </c:forEach>
                </tr>
                <tr align="center">
                    <c:forEach items="${requestScope.optimization}" var="p" begin="5" end="9">
                        <td>
                            <a href="${pageContext.request.contextPath}/ProductServlet?method=findProductById&productId=${p.pro_id}">
                                <img src="${pageContext.request.contextPath}/${p.pro_min_img}" width="70%"/>
                            </a>
                            <br />
                            <font color="red">￥：${p.market_price}</font>
                            <br />
                            <span>${p.pro_name}</span>
                        </td>
                    </c:forEach>
                </tr>
               <%-- <tr align="center">
                    <td>
                        <img src="../img/ip1100001min.jpg" width="70%"/>
                        <br />
                        <font color="red">￥：4322</font>
                        <br />
                        <span>Apple 苹果 iPhone 11</span>
                    </td>
                    <td>
                        <img src="../img/ip1100002min.jpg" width="70%"/>
                        <br />
                        <font color="red">￥：3210</font>
                        <br />
                        <span>Apple iPhone 11</span>
                    </td>
                    <td>
                        <img src="../img/ip1100003min.jpg" width="70%"/>
                        <br />
                        <font color="red">￥：6322</font>
                        <br />
                        <span>Apple iPhone 8 Plus </span>
                    </td>

                    <td>
                        <img src="../img/ip800004min.jpg" width="70%"/>
                        <br />
                        <font color="red">￥：3999</font>
                        <br />
                        <span>Apple iPhone 8 (A1863) </span>
                    </td>

                    <td>
                        <img src="../img/ip1100005min.jpg" width="70%"/>
                        <br />
                        <font color="red">￥：2666</font>
                        <br />
                        <span>【至高可选12期免息】Apple</span>
                    </td>
                </tr>
                <tr align="center">
                    <td>
                        <img src="../img/ip700006min.jpg" width="70%"/>
                        <br />
                        <font color="red">￥：2666</font>
                        <br />
                        <span>Apple iPhone 7</span>
                    </td>
                    <td>
                        <img src="../img/vv00001min.jpg" width="70%"/>
                        <br />
                        <font color="red">￥：945</font>
                        <br />
                        <span>vivo U3x手机</span>
                    </td>
                    <td>
                        <img src="../img/vv00002min.jpg" width="70%"/>
                        <br />
                        <font color="red">￥：3299</font>
                        <br />
                        <span>vivo Z5x 6GB+128GB</span>
                    </td>
                    <td>
                        <img src="../img/vv00003min.jpg" width="70%"/>
                        <br />
                        <font color="red">￥：3298</font>
                        <br />
                        <span>vivo X30 5G 曜石</span>
                    </td>
                    <td>
                        <img src="../img/vv00004min.jpg" width="70%"/>
                        <br />
                        <font color="red">￥：858</font>
                        <br />
                        <span>vivo iQOO Neo 855版</span>
                    </td>
                </tr>--%>
            </table>
        </td>
    </tr>
    <!--第七行：存放一张图片-->
    <tr>
        <td>
            <p></p>
            <p></p>
            <img src="../img/img1.webp" width="100%"/>
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