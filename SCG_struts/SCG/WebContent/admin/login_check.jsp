<%@ taglib uri="/struts-tags" prefix="s" %>
<s:if test="%{#session.login_connect!='true'}">
	<script>
	window.open('./index.jsp','_self');
	</script>
</s:if>