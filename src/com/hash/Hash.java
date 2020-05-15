package com.hash;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Hash")
public class Hash extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String input= request.getParameter("input");
		String output=request.getParameter("output");
		try {
			output=Md5Hash(input);
			getServletContext().setAttribute("data", output);
			response.sendRedirect("index.jsp");
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generbbkated catch block
			e.printStackTrace();
		}
	}
 public static String Md5Hash(String hash) throws NoSuchAlgorithmException {
	 MessageDigest md =MessageDigest.getInstance("MD5");
	 md.update(hash.getBytes());
	 byte[] b=md.digest();
	 StringBuffer sb=new StringBuffer();
	 for(byte b1 : b){
		sb.append(Integer.toHexString(b1 & 0xff).toString()); 
	 }
	 return sb.toString();
 }
}
