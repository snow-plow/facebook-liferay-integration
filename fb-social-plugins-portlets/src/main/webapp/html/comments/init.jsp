<%@page import="pt.snowplow.liferay.facebook.Constants.FIELDS"%>

<%@include file="/html/init.jsp" %>

<%
	String href = preferences.getValue(FIELDS.HREF, StringPool.BLANK);
	boolean usecurrenturl = GetterUtil.getBoolean(preferences.getValue(FIELDS.USE_CURRENT_URL, Boolean.TRUE.toString()));
	String appid = preferences.getValue(FIELDS.APPID, StringPool.BLANK);
	String numposts = preferences.getValue(FIELDS.NUM_POSTS, "10");
	String width = preferences.getValue(FIELDS.WIDTH, "550");
	String colorscheme = preferences.getValue(FIELDS.COLOR_SCHEME, StringPool.BLANK);
%>