<%@ page contentType="text/html; charset=gbk"%>
<%@ page import="java.sql.*,com.changzhou.ecport.entity.*,com.changzhou.ecport.biz.*,java.util.*" %>
<%
	UserList users = (UserList) session.getAttribute("user");
	User user =users.getUserList();
	String userid = user.getName();
	ServiceBiz getSer = ServiceBizFactory.getServ();
	List ord =(List)getSer.getOrders(userid);
	
	

%>


<!--文件头开始-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta name="description" content="达内电子商务门户">
		<title>达内电子商务门户</title>
		<LINK href="../css/tarena.css" rel=stylesheet>
		<script language = "JavaScript" src = "../js/tarena.js"></script>
	</head>
	<body onLoad="MM_preloadImages('../images/index_on.gif','../images/reg_on.gif','../images/order_on.gif','../images/top/topxmas/jp_on.gif','../images/top/topxmas/download_on.gif','../images/top/topxmas/bbs_on.gif','../images/top/topxmas/designwz_on.gif')" topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" id="table2">
		  <tr>
		    <td align="left" width="7%" background="../images/top_bg.gif"><img src="../images/logo.gif" width="286" height="58"></td>
		    <td width="62%" background="../images/top_bg.gif">　</td>
		    <td width="31%" background="../images/top_bg.gif" align="right">
			<img src="../images/top_r.gif" width="352" height="58" border="0"></td>
		  </tr>
		</table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
		    <td background="../images/dh_bg.gif" align="left" height="12">
		      <table width="100" border="0" cellspacing="0" cellpadding="0" align="center">
		        <tr>
		          <td width="5%">　</td>
		          <td width="10%"><a href="../index.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image1','','../images/index_on.gif',1)">
					<img name="Image1" border="0" src="../images/index.gif" width="90" height="36"></a></td>
		          <td width="10%"><a href="../user/ViewUser.do" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image2','','../images/reg_on.gif',1)">
					<img name="Image2" border="0" src="../images/reg.gif" width="92" height="36"></a></td>
		          <td width="10%"><a href="../adm/ViewShoppingAction.do" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image4','','../images/carts_on.gif',1)">
					<img name="Image4" border="0" src="../images/cart.gif" width="92" height="36"></a></td>
		          <td width="10%"><a href="../user/order.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image5','','../images/order_on.gif',1)">
					<img name="Image5" border="0" src="../images/order.gif" width="92" height="36"></a></td>
		          <td width="10%"><a href="../adm/ExitAction.do" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image6','','../images/exit_on.gif',1)">
					<img name="Image6" border="0" src="../images/exit.gif" width="92" height="36"></a></td>
		        </tr>
		      </table>
		    </td>
		  </tr>
		</table>
		<table cellspacing="1" cellpadding="3" align="center" border="0" width="98%">
		<tr>
		<td width="65%"><BR>
		>> 欢迎访问 <b>达内电子商务门户</b> </td>
		<td width="35%" align="right">

		</td></tr></table>



<!--文件体开始-->

		<table cellspacing=1 cellpadding=3 align=center class=tableBorder2>
		<tr>
		<td height=25 valign=middle>
                  <img src="../images/Forum_nav.gif" align="absmiddle">
                  <a href=index.jsp>达内电子商务门户</a> →
					<img border="0" src="../images/dog.gif" width="19" height="18">
					订单列表
                </td>
                </tr>
		</table>
              <br>

		<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
		<tr>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>序号</b></font></td>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>订单编号</b></font></td>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>订单金额</b></font></td>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>订单状态</b></font></td>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>付款方式</b></font></td>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>操作</b></font></td>
		</tr>
   <%	int id=1;
	for(Iterator it=ord.iterator();it.hasNext();){
		Order order =(Order)it.next();
		
%>                
		<tr>
			<td class=tablebody2 valign=middle align=center width=""><%=id %></td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;<a href="../user/ViewOrder.do?oid=<%=order.getOriderId() %>"><%=order.getOriderId() %></a></td>
			<td class=tablebody2 valign=middle align=left width="">&nbsp;&nbsp;￥<%=order.getOriderPrice() %></td>
			<td class=tablebody1 valign=middle align=center width=""><%=order.getOriderStats() %></td>
			<td class=tablebody2 valign=middle align=left width="">&nbsp;&nbsp;<%=order.getOriderPayway() %> </td>
			<td class=tablebody1 valign=middle align=center width="">
			<input type="button" value="删除" onclick="javascript:window.location='../user/removeOrderAction.do?name=<%=order.getOriderId() %>';">&nbsp;<input type="button" value="明细" onclick="javascript:window.location='../user/ViewOrder.do?oid=<%=order.getOriderId() %>';"><!--&nbsp;<input type="button" value="修改"/>--> </td>
		</tr>
                  		
<%
			id++;
} %>      
  
                </table><br>
<!--文件尾开始-->
		<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="28">
		  <tr>
		    <td height="17" background="../images/bot_bg.gif">
		      　</td>
		  </tr>
		</table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
		  <tr>
		    <td bgcolor="#f1f1f6" height="53" valign="center">
			<p align="center">Copyright &copy;2004 - 2005 <a href="http://www.tarena.com.cn"><b><font face="Verdana,">Tarena</font></b><font color=#CC0000>.com.cn</font></p><br>
			</td>
		  </tr>
		</table>
	</body>
</html>

