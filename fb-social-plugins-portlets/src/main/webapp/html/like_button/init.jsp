<%@page import="pt.snowplow.liferay.facebook.Constants.FIELDS"%>

<%@ include file="/html/init.jsp" %>

<%
	String href = preferences.getValue(FIELDS.HREF, StringPool.BLANK);
	boolean usecurrenturl = GetterUtil.getBoolean(preferences.getValue(FIELDS.USE_CURRENT_URL, Boolean.TRUE.toString()));
	String appid = preferences.getValue(FIELDS.APPID, StringPool.BLANK);
	boolean sendbutton = GetterUtil.getBoolean(preferences.getValue(FIELDS.SHOW_FACES, Boolean.TRUE.toString()));
	String layoutstyle = preferences.getValue(FIELDS.LAYOUT_STYLE, StringPool.BLANK);
	String width = preferences.getValue(FIELDS.WIDTH, "300");
	boolean showfaces = GetterUtil.getBoolean(preferences.getValue(FIELDS.SHOW_FACES, Boolean.TRUE.toString()));
	String font = preferences.getValue(FIELDS.FONT, StringPool.BLANK);
	String colorscheme = preferences.getValue(FIELDS.COLOR_SCHEME, StringPool.BLANK);
	String verb = preferences.getValue(FIELDS.VERB, StringPool.BLANK);
	String ref = preferences.getValue(FIELDS.REF, StringPool.BLANK);
%>