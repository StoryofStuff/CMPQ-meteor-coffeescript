Template.choice.helpers
	chosen: (question_id) ->
		if @._id is Session.get question_id
			"chosen"
		# go get the session variable for the question. if it matches, 
		# return a class, otherwise, return nothing