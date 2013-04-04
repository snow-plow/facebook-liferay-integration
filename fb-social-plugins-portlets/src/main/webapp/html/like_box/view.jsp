<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/html/like_box/init.jsp" %>
<%@ include file="/html/fb_script.jspf" %>
<div
	class="fb-like-box"
	data-href="<%= href %>"
	data-width="<%= width %>"
	data-height="<%= height %>"
	data-show-faces="<%= showfaces %>"
	data-stream="<%= stream %>"
	data-header="<%= showheader %>"
	data-colorscheme="<%= colorscheme %>"
	data-border-color="<%= bordercolor %>">
</div>
