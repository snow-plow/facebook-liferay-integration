<%@page import="pt.snowplow.liferay.facebook.Constants.FIELDS"%>

<%@ include file="/html/init.jsp" %>

<%
	String href = preferences.getValue(FIELDS.HREF, StringPool.BLANK);
	String appid = preferences.getValue(FIELDS.APPID, StringPool.BLANK);
	String width = preferences.getValue(FIELDS.WIDTH, "250");
	String height = preferences.getValue(FIELDS.HEIGHT, "750");
	String colorscheme = preferences.getValue(FIELDS.COLOR_SCHEME, StringPool.BLANK);
	boolean showfaces = GetterUtil.getBoolean(preferences.getValue(FIELDS.SHOW_FACES, Boolean.TRUE.toString()));
	boolean stream = GetterUtil.getBoolean(preferences.getValue(FIELDS.STREAM, Boolean.TRUE.toString()));
	boolean showheader = GetterUtil.getBoolean(preferences.getValue(FIELDS.SHOW_HEADER, Boolean.TRUE.toString()));
	String bordercolor = preferences.getValue(FIELDS.BORDER_COLOR, StringPool.BLANK);
%>