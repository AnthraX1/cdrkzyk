﻿<%@ include file="/common/taglibs.jsp" %>
<%@ tag import="org.springframework.context.ApplicationContext,
                 org.springframework.web.context.WebApplicationContext,
                 com.jeysan.cpf.security.service.OrgManager,
                 com.jeysan.cpf.security.entity.Org,
                 org.apache.commons.beanutils.BeanUtils" %>
<%@ attribute name="value"	type="java.lang.Integer" required="true" description="对象值" %>
<%@ attribute name="property" type="java.lang.String" required="true"	description="对象属性" %>

<%	
	if(value == 0)
		return;
	String key = new StringBuilder().append("org_").append(value).append("_").append(property).toString();
	Object o = request.getAttribute(key);
	if(o==null){
		ApplicationContext  applicationContext=(ApplicationContext)application.getAttribute(WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE);
		OrgManager orgManager = applicationContext.getBean("orgManager",OrgManager.class);
		Org org = orgManager.getOrg(value);
		o = BeanUtils.getProperty(user, property);
		request.setAttribute(key,o);
	}
%>
<%=o%>
