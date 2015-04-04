Template.question.helpers 
	question: ->
		Question.find()
	questionsCount: ->
		Questions.find().fetch().length
	answersCount: ->
		Answers.find().fetch().length
	
Template.question.events
	'click .choice': (event) ->
		Session.set Session.get('questionId'), @._id
		console.log Session.get(Session.get('questionId'))
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
		moreQuestions = -> 
			nextQuestion = Questions.findOne({order: Number(Session.get('question')) + 1})
			if nextQuestion
				true
			else
				false
		if moreQuestions()
			Router.go('question', {id: Number(Session.get('question')) + 1})
		else
			Router.go('results')