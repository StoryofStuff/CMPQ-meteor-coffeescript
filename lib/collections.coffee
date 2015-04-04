@Questions = new Meteor.Collection "questions"
@Answers = new Meteor.Collection "answers"
if Meteor.isClient
	Meteor.subscribe 'userData'
if Meteor.isServer
	Meteor.publish 'questions',
		->
			Questions.find()
	Meteor.publish 'answers',
		->
			Answers.find()

	Meteor.publish 'userData', ->
	  Meteor.users.find {_id: @userId}, fields:
	    'services.facebook.id': 1