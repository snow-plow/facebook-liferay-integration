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
<%@include file="/html/init.jsp" %>

<%
	
	String domain = preferences.getValue(FIELDS.DOMAIN, StringPool.BLANK);
	String appid = preferences.getValue(FIELDS.APPID, StringPool.BLANK);
	String action = preferences.getValue(FIELDS.ACTION, StringPool.BLANK);
	String width = preferences.getValue(FIELDS.WIDTH, "300");
	String height = preferences.getValue(FIELDS.HEIGHT, "300");
	boolean showheader = GetterUtil.getBoolean(preferences.getValue(FIELDS.SHOW_HEADER, Boolean.TRUE.toString()));
	String bordercolor = preferences.getValue(FIELDS.BORDER_COLOR, StringPool.BLANK);
	String colorscheme = preferences.getValue(FIELDS.COLOR_SCHEME, StringPool.BLANK);
	String linktarget = preferences.getValue(FIELDS.LINK_TARGET, StringPool.BLANK);
	String font = preferences.getValue(FIELDS.FONT, StringPool.BLANK);
	String recommendations = preferences.getValue(FIELDS.SHOW_RECOMMENDATIONS, StringPool.BLANK);
	String ref = preferences.getValue(FIELDS.REF, StringPool.BLANK);
	
%>

	