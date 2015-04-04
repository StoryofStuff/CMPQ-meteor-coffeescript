Template.results.helpers
	answers: -> Answers.find()
	questionNumber: (id)->
		Questions.findOne(id).order
	result: ->
		if Answers.find().fetch().length?
			recentAnswers = {}
			questions = Questions.find().fetch()
			for question in questions
				recentAnswers[question._id] = Answers.find({questionId: question._id}, {sort: {createdAt: -1}}).fetch()[0]
			answerCounts = {}
			for question, answer of recentAnswers
				if answerCounts[answer.answer]?
					answerCounts[answer.answer] = answerCounts[answer.answer] + 1
				else
					answerCounts[answer.answer] = 1
			currentHighest = 0
			currentResult = ''
			for answer, count of answerCounts
				if count > currentHighest
					currentResult = answer
			console.log answerCounts
			return currentResult