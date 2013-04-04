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