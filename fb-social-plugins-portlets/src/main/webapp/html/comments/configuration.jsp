<%
/**
* Copyright (c) 2000-2010 Liferay, Inc. All rights reserved.
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

<%@ include file="init.jsp" %>

<liferay-portlet:actionURL portletConfiguration="true" var="configurationActionURL" />

<aui:form action="<%= configurationActionURL %>" method="post" name="fm">
	<aui:input name="<%= Constants.CMD %>" type="hidden" value="<%= Constants.UPDATE %>" />

	<aui:fieldset>
		<aui:input label="site" name="preferences--href--" type="text" value="<%= href %>" />
		
		<aui:input name="preferences--numPosts--" type="text" value="<%= numPosts %>" />
		
		<aui:input name="preferences--width--" type="text" value="<%= width %>" />

		<aui:select name="preferences--colorsScheme--">
			<aui:option label="light" selected='<%= colorsScheme.equals("") %>' value="" />
			<aui:option label="dark" selected='<%= colorsScheme.equals("dark") %>' />
		</aui:select>
	</aui:fieldset>
	
	<aui:button-row>
		<aui:button type="submit" />
	</aui:button-row>
</aui:form>