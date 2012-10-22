
<%@ page import="com.twt.seti.LifecyclePhase" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lifecyclePhase.label', default: 'LifecyclePhase')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-lifecyclePhase" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-lifecyclePhase" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'lifecyclePhase.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="displayOrder" title="${message(code: 'lifecyclePhase.displayOrder.label', default: 'Display Order')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'lifecyclePhase.lastUpdated.label', default: 'Last Updated')}" />
					
						<th><g:message code="lifecyclePhase.modifiedBy.label" default="Modified By" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'lifecyclePhase.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${lifecyclePhaseInstanceList}" status="i" var="lifecyclePhaseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${lifecyclePhaseInstance.id}">${fieldValue(bean: lifecyclePhaseInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: lifecyclePhaseInstance, field: "displayOrder")}</td>
					
						<td><g:formatDate date="${lifecyclePhaseInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: lifecyclePhaseInstance, field: "modifiedBy")}</td>
					
						<td><g:formatDate date="${lifecyclePhaseInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${lifecyclePhaseInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
