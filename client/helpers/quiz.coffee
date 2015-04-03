Template.quiz.helpers 
	user: -> 
		Session.get('user')
	questions: ->
		Questions.find()

Template.quiz.events
	'click .choice': (event) ->
		Session.set $(event.target).closest('.question').data('question-id'), @._id
