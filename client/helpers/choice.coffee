Template.choice.helpers
	chosen: (questionId) ->
		if currentAnswer(questionId, @._id)
			"success"
	checked: (questionId) ->
		if currentAnswer(questionId, @._id)
			"checked"

	currentAnswer = (questionId, choiceId)=>
		#if there is a session variable for this question
		#then they have already stored an answer for this session
		#and we should ignore the database entries
		if Session.get(questionId)?
			console.log "sentinel 1"
			sessionChoiceId = Session.get(questionId)
			console.log @
			if sessionChoiceId is choiceId
				return true
		else
			if Session.get 'showPrevious'
				#there is no stored session answer, let's try and find one
				#from the database
				databaseAnswer = Answers.find({questionId: questionId}, {sort: {createdAt: -1}}).fetch()?[0]
				if databaseAnswer.choiceId is choiceId
					return true
