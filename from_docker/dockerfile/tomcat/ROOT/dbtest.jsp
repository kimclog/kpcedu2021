<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.ResultSetMetaData" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.DatabaseMetaData" %>
<%@ page import = "java.sql.SQLException" %>

<%
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
                ResultSetMetaData rmd = null;

        try{
        String url = "jdbc:mysql://mysql-svc:3306/mydb";
        String id = "root";
        String pw = "root";
        Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection(url,id,pw);
        String sql = "select count(*) from employees";
        DatabaseMetaData meta = conn.getMetaData();
        pstmt = conn.prepareStatement(sql);
        pstmt.executeQuery();
        rs = pstmt.executeQuery();
        while (rs.next()){
                out.print("result: " + rs.getString(1));
        }
        }catch(Exception e){
                        e.printStackTrace();
                }
                finally{
        if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
        if(conn != null) try{conn.close();}catch(SQLException sqle){}
        }
%>
