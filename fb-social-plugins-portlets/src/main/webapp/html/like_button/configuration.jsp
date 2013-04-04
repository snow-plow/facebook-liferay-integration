<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/html/like_button/init.jsp" %>

<liferay-portlet:actionURL portletConfiguration="true" var="configurationActionURL" />
<div>
	<p>See <a href="https://developers.facebook.com/docs/reference/plugins/facepile/">facepile plugin documentation</a> for a more detailed explanation of each parameter</p>
</div>

<aui:form action="<%= configurationActionURL %>" method="post" name="fm">
	<aui:input name="<%= Constants.CMD %>" type="hidden" value="<%= Constants.UPDATE %>" />
	<aui:fieldset>
		
		<aui:input label="Url to Like" name="preferences--href--" type="text" value="<%= href %>" />
		<aui:input label="Use Current  URL" name="preferences--usecurrenturl--" type="checkbox" value="<%= usecurrenturl %>"/>
		<aui:input label="App ID" name="preferences--appid--" type="text" value="<%= appid %>" />
		<aui:input label="Send Button" name="preferences--sendbutton--" type="checkbox" value="<%= sendbutton %>"/>
		<aui:select label="Layout Style" name="preferences--layoutstyle--">
			<aui:option label="<%= FIELDS.LAYOUT_STYLE_VALUES.STANDARD %>" 
				selected='<%= layoutstyle.equals(StringPool.BLANK) || layoutstyle.equals(FIELDS.LAYOUT_STYLE_VALUES.STANDARD) %>' />
			<aui:option label="<%= FIELDS.LAYOUT_STYLE_VALUES.BUTTON_COUNT %>" 
				selected='<%= layoutstyle.equals(FIELDS.LAYOUT_STYLE_VALUES.BUTTON_COUNT) %>' />
			<aui:option label="<%= FIELDS.LAYOUT_STYLE_VALUES.BOX_COUNT %>" 
				selected='<%= layoutstyle.equals(FIELDS.LAYOUT_STYLE_VALUES.BOX_COUNT) %>' />
		</aui:select>
		<aui:input label="Width" name="preferences--width--" type="text" value="<%= width %>" />
		<aui:input label="Show Faces" name="preferences--showfaces--" type="checkbox" value="<%= showfaces %>"/>
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
		<aui:select label="Color Scheme" name="preferences--colorscheme--">
			<aui:option label="<%= FIELDS.COLOR_SCHEME_VALUES.LIGHT %>" 
				selected='<%= colorscheme.equals(StringPool.BLANK) || colorscheme.equals(FIELDS.COLOR_SCHEME_VALUES.LIGHT) %>' />
			<aui:option label="<%= FIELDS.COLOR_SCHEME_VALUES.DARK %>" 
				selected='<%= colorscheme.equals(FIELDS.COLOR_SCHEME_VALUES.DARK) %>' />
		</aui:select>
		<aui:select label="Verb to display" name="preferences--verb--">
			<aui:option label="<%= FIELDS.VERB_VALUES.LIKE %>" 
				selected='<%= verb.equals(StringPool.BLANK) || verb.equals(FIELDS.VERB_VALUES.LIKE) %>' />
			<aui:option label="<%= FIELDS.VERB_VALUES.RECOMMEND %>" 
				selected='<%= verb.equals(FIELDS.VERB_VALUES.RECOMMEND) %>' />
		</aui:select>
		<aui:input label="Ref (Trackback parameter)" name="preferences--ref--" type="text" value="<%= ref %>" />
	</aui:fieldset>
	<aui:button-row>
		<aui:button type="submit" />
	</aui:button-row>
</aui:form>