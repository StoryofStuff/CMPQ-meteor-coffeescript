Router.configure 
	layoutTemplate : "defaultLayout"
Router.map ->
	@.route "home",
		path: '/'
	@.route "question",
		path: '/question/:id'
		waitOn: ->
    		Meteor.subscribe 'questions'
    		Meteor.subscribe 'answers'
		data: -> 
			return Questions.findOne({order: Number(@.params.id)})
		action: ->
			if @.ready()
				Session.set 'question', @.params.id
				Session.set 'questionId', Questions.findOne({order: Number(@.params.id)})._id
				@.render()
	@.route "results",
		path: '/results/'
		waitOn: ->
    		Meteor.subscribe 'questions'
    		Meteor.subscribe 'answers'
		data: -> return Answers.find()
