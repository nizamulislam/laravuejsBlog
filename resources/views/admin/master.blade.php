<!DOCTYPE html>
<html>
<head>
	<title></title>
	  <link href="{{ asset('css/app.css') }}" rel="stylesheet">
	  <meta name="csrf-token" content="{{csrf_token()}}">
</head>
<body>
	<h1 align="center">...........Header Site................</h1>
	<div id="app">
		
			<example-component></example-component>
		<admin-master></admin-master>

<router-link to="/pl">Post List</router-link>
<router-link to="/cl">Category List</router-link>
		


		
	</div>

	

<h1 align="center">..............Footer Site............</h1>

  <script src="{{ asset('js/app.js') }}"></script>

</body>
</html>



