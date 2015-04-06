Template.question.helpers 
	question: ->
		Question.find()
	questionsCount: ->
		Questions.find().fetch().length
	answersCount: ->
		Answers.find().fetch().length
	
Template.question.events
	'click .showPrevious': (event)->
		if Session.get 'showPrevious'
			Session.set 'showPrevious', false
		else
			Session.set 'showPrevious', true
	'click .choice': (event) ->
		Session.set Session.get('questionId'), @._id
	'click .back': (event) ->
		if Questions.findOne({order: Number(Session.get('question')) - 1})
			Router.go('question', {id: Number(Session.get('question')) - 1})
	'submit .question-form': (event) ->
		event.preventDefault()
		Answers.insert
			createdAt: Date.now()
			userId: Meteor.user()._id
			answer: event.target.answer.value
			choiceId: $(event.target).find('input:checked').attr('id')
			questionId: event.target.questionId.value
		#if there is another question then let's go there.
		#if not, we should go to the results page
		if moreQuestions()
			Router.go('question', {id: Number(Session.get('question')) + 1})
		else
			#storeResults
			Results.insert
				createdAt: Date.now()
				userId: Meteor.user()._id
				result: result()
			Router.go('results')

result = ->
		if Answers.find({userId: Meteor.user()._id}).fetch().length?
			recentAnswers = {}
			questions = Questions.find().fetch()
			for question in questions
				recentAnswers[question._id] = Answers.find({questionId: question._id, userId: Meteor.user()._id}, {sort: {createdAt: -1}}).fetch()[0]
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
			Session.set 'result', currentResult
			return currentResult

moreQuestions = -> 
	nextQuestion = Questions.findOne({order: Number(Session.get('question')) + 1})
	if nextQuestion
		true
	else
		false