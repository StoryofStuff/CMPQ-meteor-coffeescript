Router.configure 
	layoutTemplate : "defaultLayout"
Router.map ->
	@.route "home",
		path : '/'
	@.route "quiz",
		path : '/quiz/',
		data : -> return Questions.find()