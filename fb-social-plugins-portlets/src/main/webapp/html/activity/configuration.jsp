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
<%@include file="/html/activity/init.jsp" %>

<liferay-portlet:actionURL portletConfiguration="true" var="configurationActionURL" />
<div>
	<p>See <a href="https://developers.facebook.com/docs/reference/plugins/activity/">activity plugin documentation</a> for a more detailed explanation of each parameter</p>
</div>
<aui:form action="<%= configurationActionURL %>" method="post" name="fm">
	<aui:input name="<%= Constants.CMD %>" type="hidden" value="<%= Constants.UPDATE %>" />
	<aui:fieldset>
		<aui:input label="Domain" name="preferences--domain--" type="text" value="<%= domain %>" />
		<aui:input label="App ID" name="preferences--appid--" type="text" value="<%= appid %>" />
		<aui:input label="Action" name="preferences--action--" type="text" value="<%= action %>" />
		<aui:input label="Height" name="preferences--height--" type="text" value="<%= height %>" />
		<aui:input label="Width" name="preferences--width--" type="text" value="<%= width %>" />
		<aui:input label="Show Header" name="preferences--showheader--" type="checkbox" value="<%= showheader %>"/>
		<aui:input label="Border Color" name="preferences--bordercolor--" type="text" value="<%= bordercolor %>" />
		<aui:select label="Color Scheme" name="preferences--colorscheme--">
			<aui:option label="<%= FIELDS.COLOR_SCHEME_VALUES.LIGHT %>" 
				selected='<%= colorscheme.equals(StringPool.BLANK) || colorscheme.equals(FIELDS.COLOR_SCHEME_VALUES.LIGHT) %>' />
			<aui:option label="<%= FIELDS.COLOR_SCHEME_VALUES.DARK %>" 
				selected='<%= colorscheme.equals(FIELDS.COLOR_SCHEME_VALUES.DARK) %>' />
		</aui:select>
		<aui:select label="Link Target" name="preferences--linktarget--">
			<aui:option label="<%= FIELDS.LINK_TARGET_VALUES.BLANK %>" 
				selected='<%= linktarget.equals(StringPool.BLANK) || linktarget.equals(FIELDS.LINK_TARGET_VALUES.BLANK) %>' />
			<aui:option label="<%= FIELDS.LINK_TARGET_VALUES.PARENT %>" 
				selected='<%= linktarget.equals(FIELDS.LINK_TARGET_VALUES.PARENT) %>' />
			<aui:option label="<%= FIELDS.LINK_TARGET_VALUES.TOP %>" 
				selected='<%= linktarget.equals(FIELDS.LINK_TARGET_VALUES.TOP) %>' />
		</aui:select>
		<aui:select label="Font" name="preferences--font--">
			<aui:option label="<%= FIELDS.FONT_VALUES.ARIAL %>" 
				selected='<%= font.equals(StringPool.BLANK) || font.equals(FIELDS.FONT_VALUES.ARIAL) %>' />
			<aui:option label="<%= FIELDS.FONT_VALUES.LUCIDA_GRANDE %>" 
				selected='<%= font.equals(FIELDS.FONT_VALUES.LUCIDA_GRANDE) %>' />
			<aui:option label="<%= FIELDS.FONT_VALUES.SEGOE_UI %>" 
				selected='<%= font.equals(FIELDS.FONT_VALUES.SEGOE_UI) %>' /> />
			<aui:option label="<%= FIELDS.FONT_VALUES.TAHOMA %>" 
				selected='<%= font.equals(FIELDS.FONT_VALUES.TAHOMA) %>' />
			<aui:option label="<%= FIELDS.FONT_VALUES.TREBUCHET_MS %>" 
				selected='<%= font.equals(FIELDS.FONT_VALUES.TREBUCHET_MS) %>' /> />
			<aui:option label="<%= FIELDS.FONT_VALUES.VERDANA %>" 
				selected='<%= font.equals(FIELDS.FONT_VALUES.VERDANA) %>' />
		</aui:select>
		<aui:input label="Show Recommendations" name="parameters--recommendations--" type="checkbox" value="<%= recommendations %>" />
		<aui:input label="Ref (Trackback parameter)" name="preferences--ref--" type="text" value="<%= ref %>" />
	</aui:fieldset>
	<aui:button-row>
		<aui:button type="submit" />
	</aui:button-row>
</aui:form>