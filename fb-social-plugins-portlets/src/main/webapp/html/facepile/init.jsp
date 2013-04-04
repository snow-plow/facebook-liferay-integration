<%@page import="pt.snowplow.liferay.facebook.Constants.FIELDS"%>

<%@ include file="/html/init.jsp" %>

<% 
	String href = preferences.getValue(FIELDS.HREF, StringPool.BLANK);
	boolean usecurrenturl = GetterUtil.getBoolean(preferences.getValue(FIELDS.USE_CURRENT_URL, Boolean.TRUE.toString()));
	String appid = preferences.getValue(FIELDS.APPID, StringPool.BLANK);
	String action = preferences.getValue(FIELDS.ACTION, StringPool.BLANK);
	String size = preferences.getValue(FIELDS.SIZE, FIELDS.SIZE_VALUES.MEDIUM);
	String maxrows = preferences.getValue(FIELDS.MAX_ROWS, "5");
	boolean showcount = GetterUtil.getBoolean(preferences.getValue(FIELDS.SHOW_COUNT, Boolean.TRUE.toString()));
	String width = preferences.getValue(FIELDS.WIDTH, "300");
	String colorscheme = preferences.getValue(FIELDS.COLOR_SCHEME, StringPool.BLANK);
%>
