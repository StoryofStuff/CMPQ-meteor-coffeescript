Template.choice.helpers
	chosen: (question_id) ->
		if @._id is Session.get question_id
			"success"
		# go get the session variable for the question. if it matches, 
		# return a class, otherwise, return nothing
	checked: (question_id) ->
		if @._id is Session.get question_id
			"checked"
	#currentAnswer: ->
	#	Answers.find({}, {limit: 1, sort: {'_id': -1}}).fetch()[0]