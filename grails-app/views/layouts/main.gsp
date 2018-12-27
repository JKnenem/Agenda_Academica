<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'profile.png')}" type="image/x-icon">
		<link rel="profile" href="${assetPath(src: 'profile.png')}">
		<link rel="profile" sizes="114x114" href="${assetPath(src: 'profile.png')}">
  		<asset:stylesheet src="bootstrap.min.css" />
  		<asset:stylesheet src="font-awesome/all.css" />
  		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
  		<asset:stylesheet src="magnific-popup.css" />
  		<asset:stylesheet src="freelancer.min.css" />

		<g:layoutHead/>
	</head>
	<body>

        <g:render template="/templates/header" />

		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>

		<asset:javascript src="jquery.min.js" />
		<asset:javascript src="bootstrap.bundle.min.js" />
		<asset:javascript src="jquery.easing.min.js" />
		<asset:javascript src="jquery.magnific-popup.min.js" />
		<asset:javascript src="jqBootstrapValidation.js" />
		<asset:javascript src="contact_me.js" />
		<asset:javascript src="freelancer.min.js" />

	</body>
</html>
