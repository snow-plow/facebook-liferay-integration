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
<%@page import="pt.snowplow.liferay.facebook.Constants.FIELDS"%>

<%@ include file="/html/init.jsp" %>

<% 
	String href = preferences.getValue(FIELDS.HREF, StringPool.BLANK);
	boolean usecurrenturl = GetterUtil.getBoolean(preferences.getValue(FIELDS.USE_CURRENT_URL, Boolean.TRUE.toString()));
	String appid = preferences.getValue(FIELDS.APPID, StringPool.BLANK);
	String action = preferences.getValue(FIELDS.ACTION, StringPool.BLANK);
	String size = preferences.getValue(FIELDS.SIZE, FIELDS.SIZE_VALUES.MEDIUM);
	String maxrows = preferences.getValue(FIELDS.MAX_ROWS, "5");
	boolean showcount = GetterUtil.getBoolean(preferences.getValue(FIELDS.SHOW_COUNT, Boolean.TRUE.toString()));
	String width = preferences.getValue(FIELDS.WIDTH, "300");
	String colorscheme = preferences.getValue(FIELDS.COLOR_SCHEME, StringPool.BLANK);
%>
