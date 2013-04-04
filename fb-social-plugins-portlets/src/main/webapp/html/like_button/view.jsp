<%@page import="com.liferay.portal.util.PortalUtil"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/html/like_button/init.jsp" %>
<%@include file="/html/fb_script.jspf" %>
<%
	//Decide which url to use
	String url = usecurrenturl ? PortalUtil.getCurrentCompleteURL(request) : href;
	
%>
<div
	class="fb-like"
	data-href="<%= url %>"
	data-send="<%= sendbutton %>"
	data-layout="<%= layoutstyle %>"
	data-width="<%= width %>"
	data-show-faces="<%= showfaces %>"
	data-action="<%= verb %>"
	data-colorscheme="<%= colorscheme %>"
	data-font="<%= font %>"
	data-ref="<%= ref %>">
</div>



