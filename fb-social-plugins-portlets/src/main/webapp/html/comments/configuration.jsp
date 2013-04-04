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
<%@include file="/html/comments/init.jsp" %>

<liferay-portlet:actionURL portletConfiguration="true" var="configurationActionURL" />
<div>
	<p>See <a href="https://developers.facebook.com/docs/reference/plugins/comments/">comments plugin documentation</a> for a more detailed explanation of each parameter</p>
</div>
<aui:form action="<%= configurationActionURL %>" method="post" name="fm">
	<aui:input name="<%= Constants.CMD %>" type="hidden" value="<%= Constants.UPDATE %>" />
	<aui:fieldset>
		<aui:input label="Page URL" name="preferences--href--" type="text" value="<%= href %>" />
		<aui:input label="Use Current  URL" name="preferences--usecurrenturl--" type="checkbox" value="<%= usecurrenturl %>"/>
		<aui:input label="App ID" name="preferences--appid--" type="text" value="<%= appid %>" />
		<aui:input label="Number of Posts" name="preferences--numposts--" type="text" value="<%= numposts %>" />
		<aui:input label="Width" name="preferences--width--" type="text" value="<%= width %>" />
		<aui:select label="Color Scheme" name="preferences--colorscheme--">
			<aui:option label="<%= FIELDS.COLOR_SCHEME_VALUES.LIGHT %>" 
				selected='<%= colorscheme.equals(StringPool.BLANK) || colorscheme.equals(FIELDS.COLOR_SCHEME_VALUES.LIGHT) %>' />
			<aui:option label="<%= FIELDS.COLOR_SCHEME_VALUES.DARK %>" 
				selected='<%= colorscheme.equals(FIELDS.COLOR_SCHEME_VALUES.DARK) %>' />
		</aui:select>
	</aui:fieldset>
	<aui:button-row>
		<aui:button type="submit" />
	</aui:button-row>
</aui:form>