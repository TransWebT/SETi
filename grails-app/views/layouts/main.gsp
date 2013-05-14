<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="SETi"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
        <z:resources/>
        <g:layoutHead/>
		<r:layoutResources />
        <g:if test="${session?.CurrentLayout != 'zkmain'}">
            <nav:resources/>
        </g:if>
        <ga:trackPageview />
	</head>
	<body>
		<div id="grailsLogo" role="banner"><a href="http://grails.org"><img src="${resource(dir: 'images', file: 'seti_small.png')}" alt="SETi"/></a>
            <span id="banner_controls">
                <div id='layout_select_container'>
                    <label for="layout">
                        <g:message code="layout.select.label" default="Layout"/>:
                    </label>
                    <g:select name="CurrentLayout" from="${['Classic', 'Zk-based']}"
                              keys="${['main', 'zkmain']}"
                              value="${session?.CurrentLayout}"
                              onchange="${remoteFunction(controller: 'User', action: 'setCurrentLayout',
                                      update: [success: 'great', failure: 'ohno'],
                                      params: '\'CurrentLayout=\' + this.value')}"/>
                </div>

                <div id='login_link_container'>
                    <sec:ifLoggedIn>
                        Logged in as <sec:username/> (<g:link controller='logout'>Logout</g:link>)
                    </sec:ifLoggedIn>
                    <sec:ifNotLoggedIn>
                        <g:link class="list" controller="login" action="auth"><g:message
                                code="default.login.label" target="_blank"/></g:link>
                    </sec:ifNotLoggedIn>
                    <sec:ifSwitched>
                        <a href='${request.contextPath}/j_spring_security_exit_user'>
                            Resume as <sec:switchedUserOriginalUsername/>
                        </a>
                    </sec:ifSwitched>
                </div>
            </span>

        <g:if test="${session?.CurrentLayout == 'zkmain'}">
            <z:style>
                .z-menubar-hor, .z-menubar-ver {
                        border: 1px solid #D8D8D8;
                    }
            </z:style>
            <z:menubar id="menubar">
                <z:menu label="Reservations">
                    <z:menupopup>
                        <z:menuitem label="Manage Reservations" href="/SETi/reservation/index" />
                        <z:menuitem label="Reservation Reports" onClick="alert('Workflow system in development...')" />
                    </z:menupopup>
                </z:menu>
                <z:menu label="System Maintenance">
                    <z:menupopup>
                        <z:menu label="Edit Tables">
                            <z:menupopup>
                                <z:menuitem label="Applications" href="/SETi/application/index" />
                                <z:menuitem label="Lifecycle Phases" href="/SETi/lifecyclePhase/index" />
                                <z:menuitem label="Releases" href="/SETi/release/index" />
                                <z:menuseparator />
                                <z:menuitem label="Server Types" href="/SETi/serverType/index" />
                                <z:menuitem label="Servers" href="/SETi/server/index" />
                                <z:menuitem label="Service Types" href="/SETi/serviceType/index" />
                                <z:menuitem label="Services" href="/SETi/service/index" />
                            </z:menupopup>
                        </z:menu>
                        <z:menu label="Workflow Setup">
                            <z:menupopup>
                                <z:menuitem label="Activiti" onClick="alert('Workflow system in development...')" />
                            </z:menupopup>
                        </z:menu>
                    </z:menupopup>
                </z:menu>
                <z:menu label="Administration">
                    <z:menupopup>
                        <z:menuitem label="Security Settings" target="_TWT_Security" href="/SETi/securityInfo/config" />
                        <z:menuitem label="User Profiles" href="/SETi/user/index" />
                    </z:menupopup>
                </z:menu>
                <z:menu label="Help">
                    <z:menupopup>
                        <z:menuitem label="RecreationalCoding.org Site" target="_TWT_PortalSite" href="http://transwebtools.com/site" />
                        <z:menuseparator />
                        <z:menu label="About">
                            <z:menupopup>
                                <z:menuitem label="About SETi" onClick="alert(self.label)" />
                                <z:menuitem label="About RecreationalCoding.org" onClick="alert(self.label)" />
                            </z:menupopup>
                        </z:menu>
                    </z:menupopup>
                </z:menu>
            </z:menubar>
        </g:if>
        </div>
        <sec:ifLoggedIn>
            <g:if test="${session?.CurrentLayout != 'zkmain'}">
                <div id="menu">
                    <nav:render/>
                </div>
            </g:if>
        </sec:ifLoggedIn>
		<g:layoutBody/>
		<div class="footer" role="contentinfo">&#169; 2012 ACME Desert Pianos and Anvils</div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
