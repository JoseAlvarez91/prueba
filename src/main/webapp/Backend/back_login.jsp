<%-- 
    Document   : back_login
    Created on : 05-oct-2022, 15:56:16
    Author     : jalvarez
--%>
<%@page import="java.sql.CallableStatement"%>
<%@include file="Conexion.jsp" %> 

<%   
    String contrasena = request.getParameter("pass");
    String usuario = request.getParameter("usuario");
   
    int tipo = 0;
    String nombre_apellido="";
    
    CallableStatement callableStatement = null;
    callableStatement = connection.prepareCall("{call [login_PA](?,?,?,?)}");
    
    callableStatement.setString(1, usuario );
    callableStatement.setString(2, contrasena);

    callableStatement.registerOutParameter("tipo", java.sql.Types.INTEGER);
    callableStatement.registerOutParameter("nombre_apellido", java.sql.Types.VARCHAR);

    callableStatement.execute();

    tipo = callableStatement.getInt("tipo");
    nombre_apellido= callableStatement.getString("nombre_apellido");
    if (tipo == 0) {
    
            response.sendRedirect("../Frontend/Login_error.jsp");
            
        } 
        else {
    
            HttpSession sesionOk = request.getSession();
            sesionOk.setAttribute("nombre_apellido", nombre_apellido);
            
            
            response.sendRedirect("../Frontend/menu.jsp");
          

        
    }
%> 
