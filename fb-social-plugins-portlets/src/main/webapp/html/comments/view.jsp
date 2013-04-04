<%@page import="com.liferay.portal.util.PortalUtil"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/html/comments/init.jsp" %>
<%@include file="/html/fb_script.jspf" %>
<%
	//Decide which url to use
	String url = usecurrenturl ? PortalUtil.getCurrentCompleteURL(request) : href;
	
%>
<div
	class="fb-comments"
	data-href="<%= url %>"
	data-num-posts="<%= numposts %>"
	data-width="<%= width %>"
	data-colorscheme="<%= colorscheme %>">
</div>
