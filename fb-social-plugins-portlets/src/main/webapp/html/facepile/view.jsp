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
