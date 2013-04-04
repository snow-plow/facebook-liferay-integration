<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/html/activity/init.jsp" %>
<%@ include file="/html/fb_script.jspf" %>

<div
	class="fb-activity"
	data-site="<%= domain  %>"
	data-app-id="<%= appid  %>"
	data-action="<%= action %>"
	data-width="<%= width %>"
	data-height="<%= height %>"
	data-header="<%= showheader %>"
	data-colorscheme="<%= colorscheme %>"
	data-border-color="<%= bordercolor %>"
	data-font="<%= font %>"
	data-recommendations="<%= recommendations %>"
	data-ref="<%= ref %>">
</div>