<%@ page contentType="text/html; charset=gbk"%>
<%@ page import="java.sql.*,com.changzhou.ecport.entity.*,com.changzhou.ecport.biz.*,java.util.*" %>

<%UserList users = (UserList) session.getAttribute("user");
	User user =users.getUserList();
	String payway=(String)request.getAttribute("pay");
	List pro = (List)request.getAttribute("ord");
%>




<!--�ļ�ͷ��ʼ-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta name="description" content="���ڵ��������Ż�">
		<title>���ڵ��������Ż�</title>
		<LINK href="../css/tarena.css" rel=stylesheet>
		<script language = "JavaScript" src = "../js/tarena.js"></script>
	</head>
	<body onLoad="MM_preloadImages('../images/index_on.gif','../images/reg_on.gif','../images/order_on.gif','../images/top/topxmas/jp_on.gif','../images/top/topxmas/download_on.gif','../images/top/topxmas/bbs_on.gif','../images/top/topxmas/designwz_on.gif')" topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" id="table2">
		  <tr>
		    <td align="left" width="7%" background="../images/top_bg.gif"><img src="../images/logo.gif" width="286" height="58"></td>
		    <td width="62%" background="../images/top_bg.gif">��</td>
		    <td width="31%" background="../images/top_bg.gif" align="right">
			<img src="../images/top_r.gif" width="352" height="58" border="0"></td>
		  </tr>
		</table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
		    <td background="../images/dh_bg.gif" align="left" height="12">
		      <table width="100" border="0" cellspacing="0" cellpadding="0" align="center">
		        <tr>
		          <td width="5%">��</td>
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
		>> ��ӭ���� <b>���ڵ��������Ż�</b> </td>
		<td width="35%" align="right">

		</td></tr></table>



<!--�ļ��忪ʼ-->

		<table cellspacing=1 cellpadding=3 align=center class=tableBorder2>
		<tr>
		<td height=25 valign=middle>
                  <img src="../images/Forum_nav.gif" align="absmiddle">
                  <a href=../index.html>���ڵ��������Ż�</a> ��
					<a href="../user/order.jsp">�����б�</a> ��
					������ϸ
                </td>
                </tr>
		</table>
              <br>

		<form name="order" method="post" action="../saveOrderAction.do"/>
		<table cellpadding="3" cellspacing="1" align="center" class="tableborder1" id="table1">
		<tr>
			<td valign="middle" colspan="2" align="center" height="25" background="../images/bg2.gif">
			<font color="#ffffff"><b>�û���Ϣ</b></font></td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody2" align="right"><b>�û���</b>��</td>
			<td width="60%" class="tablebody1"><%=user.getName() %></td>
		</tr>
		<tr>
			<td class="tablebody2" align="right"><b>��ϵ��ַ</b>��</td>
			<td class="tablebody1"><%=user.getAddress1() %></td>
		</tr>
		<tr>
			<td class="tablebody2" align="right"><b>�ʱ�</b>��</td>
			<td class="tablebody1"><%=user.getZipcode() %></td>
		</tr>
		<tr>
			<td class="tablebody2" align="right"><b>��ͥ�绰</b>��</td>
			<td class="tablebody1"><%=user.getHostPhone() %></td>
		</tr>
		<tr>
			<td class="tablebody2" align="right"><b>�칫�ҵ绰</b>��</td>
			<td class="tablebody1"><%=user.getOfficePhone() %></td>
		</tr>
		<tr>
			<td class="tablebody2" align="right"><b>�ֻ�</b>��</td>
			<td class="tablebody1"><%=user.getMobile() %></td>
		</tr>
		<tr>
			<td class="tablebody2" align="right"><b>Email��ַ</b>��</td>
			<td class="tablebody1"><%=user.getEmail() %></td>
		</tr>
	</table>
<br>
<!--�ļ�β��ʼ-->
		<table cellpadding="3" cellspacing="1" align="center" class="tableborder1" id="table2">
		<tr>
			<td valign="middle" colspan="2" align="center" height="25" background="../images/bg2.gif">
			<font color="#FFFFFF"><b>���ʽ</b></font></td>
		</tr>
		<tr>
			<td width="40%" class="tablebody2" align="right">��</td>
			<td width="60%" class="tablebody1"><%=payway %> </td>
		</tr>
		</table>
		<br>
		<table cellpadding=3 cellspacing=1 align=center class=tableborder1 id="table3">
		<tr>
			<td valign=middle align=center height=25 background="../images/bg2.gif" colspan="5">
			<font color="#ffffff"><b>��Ʒ�����嵥</b></font></td>
		</tr>
    <%
    int id=1;
    double alltotle=0.0;
	for(Iterator it=pro.iterator();it.hasNext();){
		Product product =(Product)it.next();
		alltotle=alltotle+product.getTotle();

    %>            
		<tr>
			<td class=tablebody2 valign=middle align=center width=""><%=id %></td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;<a href="../productDetail.jsp?productid=<%=product.getId() %>" target="_blank"><%=product.getName() %></a></td>
			<td class=tablebody2 valign=middle align=center width="">�۸�<%=product.getPrice() %></td>
			<td class=tablebody1 valign=middle align=center width="">������<%=product.getAmount() %></td>
			<td class=tablebody2 valign=middle align=left width="">С�ƣ���<%=product.getTotle() %></td>
		</tr>
      <%
      id++;
      }
       %>         
		<tr>
			<td class=tablebody1 valign=middle align=center colspan="4">��</td>
			<td class=tablebody1 valign=middle align=left width="">�ϼƣ�<font color="#ff0000"><b>��<%=alltotle %></b></font></td>
		</tr>
		        </table>
		</form>
		<br>


		<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="28">
		  <tr>
		    <td height="17" background="../images/bot_bg.gif">
		      ��</td>
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
