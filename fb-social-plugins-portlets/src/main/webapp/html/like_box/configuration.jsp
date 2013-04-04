<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/html/like_box/init.jsp" %>

<liferay-portlet:actionURL portletConfiguration="true" var="configurationActionURL" />

<aui:form action="<%= configurationActionURL %>" method="post" name="fm">
	<aui:input name="<%= Constants.CMD %>" type="hidden" value="<%= Constants.UPDATE %>" />
	<div>
		<p>See <a href="https://developers.facebook.com/docs/reference/plugins/like-box/">like box plugin documentation</a> for a more detailed explanation of each parameter</p>
	</div>
	<aui:fieldset>

		<aui:input label="Page Url" name="preferences--href--" type="text" value="<%= href %>" />
		<aui:input label="App ID" name="preferences--appid--" type="text" value="<%= appid %>" />
		<aui:input label="Width" name="preferences--width--" type="text" value="<%= width %>" />
		<aui:input label="Height" name="preferences--height--" type="text" value="<%= height %>" />
		<aui:select label="Color Scheme" name="preferences--colorscheme--">
			<aui:option label="<%= FIELDS.COLOR_SCHEME_VALUES.LIGHT %>" 
				selected='<%= colorscheme.equals(StringPool.BLANK) || colorscheme.equals(FIELDS.COLOR_SCHEME_VALUES.LIGHT) %>' />
			<aui:option label="<%= FIELDS.COLOR_SCHEME_VALUES.DARK %>" 
				selected='<%= colorscheme.equals(FIELDS.COLOR_SCHEME_VALUES.DARK) %>' />
		</aui:select>
		<aui:input label="Show Faces" name="preferences--showfaces--" type="checkbox" value="<%= showfaces %>"/>
		<aui:input label="Show Stream" name="preferences--stream--" type="checkbox" value="<%= stream %>"/>
		<aui:input label="Show Header" name="preferences--showheader--" type="checkbox" value="<%= showheader %>"/>
		<aui:input label="Border Color" name="preferences--bordercolor--" type="text" value="<%= bordercolor %>" />
	</aui:fieldset>
	
	<aui:button-row>
		<aui:button type="submit" />
	</aui:button-row>
</aui:form>