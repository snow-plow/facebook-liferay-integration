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
<%@include file="/html/facepile/init.jsp" %>


<liferay-portlet:actionURL portletConfiguration="true" var="configurationActionURL" />
<div>
	<p>See <a href="https://developers.facebook.com/docs/reference/plugins/facepile/">facepile plugin documentation</a> for a more detailed explanation of each parameter</p>
</div>
<aui:form action="<%= configurationActionURL %>" method="post" name="fm">
	<aui:input name="<%= Constants.CMD %>" type="hidden" value="<%= Constants.UPDATE %>" />

	<aui:fieldset>
		<aui:input label="Page URL" name="preferences--href--" type="text" value="<%= href %>" />
		<aui:input label="Use Current  URL" name="preferences--usecurrenturl--" type="checkbox" value="<%= usecurrenturl %>"/>
		<aui:input label="App ID" name="preferences--appid--" type="text" value="<%= appid %>" />
		<aui:input label="Action" name="preferences--action--" type="text" value="<%= action %>" />
		<aui:select label="Size" name="preferences--size--">
			<aui:option label="<%= FIELDS.SIZE_VALUES.SMALL %>" 
				selected='<%= size.equals(StringPool.BLANK) || size.equals(FIELDS.SIZE_VALUES.SMALL) %>' />
			<aui:option label="<%= FIELDS.SIZE_VALUES.MEDIUM %>" 
				selected='<%= size.equals(FIELDS.SIZE_VALUES.MEDIUM) %>' />
			<aui:option label="<%= FIELDS.SIZE_VALUES.LARGE %>" 
				selected='<%= size.equals(FIELDS.SIZE_VALUES.LARGE) %>' />
		</aui:select>
		<aui:input name="preferences--maxrows--" type="text" value="<%= maxrows %>" />
		<aui:input label="Show Count" name="preferences--showcount--" type="checkbox" value="<%= showcount %>"/>
		<aui:input name="preferences--width--" type="text" value="<%= width %>" />
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