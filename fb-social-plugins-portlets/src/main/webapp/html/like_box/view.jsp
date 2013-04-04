<%
/**
 * Copyright (c) 2000-2012 Liferay, Inc. All rights reserved.
 * Copyright (c) 2013 Snowplow. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
%>
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
