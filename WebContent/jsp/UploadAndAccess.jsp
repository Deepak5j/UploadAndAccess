<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, test2.curd.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload And Access</title>
</head>
<body class="im" bottommargin="0px" topmargin="0px" rightmargin="0px" leftmargin="0px">
<!-- blue header -->
<div style="background-color: #000099; width:100%;height:30px;padding-top: 25px">	
</div>		
<!-- light blue background -->	
<div style="border-radius:0px;float:left;margin-left:9%;background-color: #a7ffeb;border-width:1px;
	border-color: #000000;border-style: ridge;width:82%;height:100%;margin-right:9%;margin-top:20px;margin-bottom:20px">
	<!-- Add file -->
	<h1 style="text-align: center;font-size: 24px; color:#000088;font-family: arial;text-transform: uppercase;">
		<br><u>UPLOAD AND ACCESS PICS</u>
	</h1>
	<div align="center">
	<!-- form -->
	<table align="center" style="border-spacing:2px; border-style:inset;background-color: #ede7ff;border-color: #000000;border-width: 1px;">
		<tr>
			<td>		
				<%	Connection con =null;
					PreparedStatement ps=null;
					ResultSet rs=null;
					String str = "select * from files2 where sr = (select max(sr) from files2)";
					//String strsql="select * from files2 order by sr desc limit 1";";
					con=CrudOperation.createConnection();
					try
					{
						ps=con.prepareStatement(str);
						rs=ps.executeQuery();
						while(rs.next())
						{
						
							String path=request.getContextPath();
							String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
							String newpath=basePath+"pics";
							String name=rs.getString("name");
							String source=newpath+"/"+name;	
					%>
							<img src="<%=source %>" style="width:200px;height:200px">
					<%	} 
					}
					catch(SQLException se)
					{
						se.printStackTrace();
						System.out.println("==>db catch");
					}
					finally
					{
						System.out.println("==>db finally");
					}
				%>	
			</td>
		</tr>
	</table>		
	<br>	
		<form method="post" action="/test2/UPLOADANDACCESS" enctype="multipart/form-data" ">
			<table  align="center" style="border-spacing:20px; border-style:inset;background-color: #ede7ff;border-color: #000000;border-width: 1px;">
				<tr>
					<th>Browse File:</th>
			    	<th>
			    		<input type="file" name="ddd" required="required">
			    	</th>
			    </tr>
				<tr>
					<th colspan=2><button type="submit">Click To Upload</button></th>
				</tr>
			</table>
		</form >
		<br><br>
		<br><br>				
	</div>
</div> 
<!-- footer -->					
<div style="border-radius:0px;background-color: #000077;width:100%;height:50px;margin-top:540px;margin-bottom:0%">
</div>
</body>
</html>