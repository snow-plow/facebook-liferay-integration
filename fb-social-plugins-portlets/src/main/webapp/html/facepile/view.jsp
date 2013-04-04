<%@page import="com.liferay.portal.util.PortalUtil"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/html/facepile/init.jsp" %>
<%@include file="/html/fb_script.jspf" %>

<%
	//Decide which url to use
	String url = usecurrenturl ? PortalUtil.getCurrentCompleteURL(request) : href;
	
%>
<div
	class="fb-facepile"
	data-href="<%= url %>"
	data-size="<%= size %>"
	data-max-rows="<%= maxrows %>"
	data-width="<%= width %>"
	data-show-count="<%= showcount %>"
	data-action="<%= action %>"
	data-colorscheme="<%= colorscheme %>">
</div>
