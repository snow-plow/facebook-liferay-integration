<%@page import="com.liferay.portal.kernel.util.WebKeys"%>
<%@page import="java.net.URI"%>
<%@page import="java.net.URLEncoder"%>
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
<%@include file="/html/comments/init.jsp" %>
<%@include file="/html/fb_script.jspf" %>
<%
	
	String currentCompleteUrl = PortalUtil.getCurrentCompleteURL(request);

	String scheme = HttpUtil.getProtocol(currentCompleteUrl);
	String host = HttpUtil.getDomain(currentCompleteUrl);
	String path = HttpUtil.getPath(currentCompleteUrl);
	String query = HttpUtil.getQueryString(currentCompleteUrl);
	
	URI uri = new URI(scheme,host,path,query,null);
	System.out.println(uri);
	
%>
<div
	class="fb-comments"
	data-href="<%= uri.toString() %>"
	data-num-posts="<%= numposts %>"
	data-width="<%= width %>"
	data-colorscheme="<%= colorscheme %>">
</div>
