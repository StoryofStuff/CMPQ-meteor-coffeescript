#Just seeds the database
if Questions.find().fetch().length < 2
	Questions.insert
		order: 1
		body: 'You never leave your house without:'
		choices: [
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "resister"
				label: "Flyers or postcards to publicize an upcoming rally"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "networker"
				label: "Updating your Facebook profile first"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "investigator"
				label : "Interesting reading material"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "communicator"
				label: "Pen and paper"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "nurturer"
				label: "Water and yummy snacks"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "builder"
				label : "Your trusty Swiss army knife"
			}
		]
	Questions.insert
		order: 2
		body: 'There’s a gargantuan pothole in the road in front of your home. To address this issue you:'
		choices: [
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "investigator"
				label: "Look into the local government budget allocations for road work and safety"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "builder"
				label: "Fill it in yourself"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "networker"
				label : "Call a few friends who know people on city council to see who your best “in” is to getting that fixed"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "nurturer"
				label: "Contact the appropriate town or city office to rectify the problem (and maybe sweeten the deal with some homemade cookies)"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "communicator"
				label: "Make a street sign that warns people about it and maybe even paint the outside in a bright color so it's more noticeable"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "resister"
				label : "Coordinate a letter writing campaign among your neighbors"
			}
		]
	Questions.insert
		order: 3
		body: 'Which words or phrases do you most associate with “making change”?'
		choices: [
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "nurturer"
				label: "Heal"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "networker"
				label: "Collaborate"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "resister"
				label : "Fight"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "communicator"
				label: "Envision"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "investigator"
				label: "Explore"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "builder"
				label : "Create"
			}
		]
	Questions.insert
		order: 4
		body: 'You’re at a meeting for a small local project working to protest some budget cuts in your local school district. Someone says:  "We need a few volunteers to help out with an upcoming meeting!" Before you raise your hand, your internal dialogue probably sounds something like:'
		choices: [
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "builder"
				label: '"Another meeting?! When are we gonna get started with some hands on projects?"'
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "investigator"
				label: '"I can do some research into other communities who’ve done this well."'
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "networker"
				label: '"This is great! I\'ll call Suzie and Toni and Mitchell as soon as I get home."'
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "nurturer"
				label: '"I could provide childcare for the meeting."'
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "resister"
				label: '"Woohoo, look at all these volunteers." (You happen to be running the meeting).'
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "communicator"
				label: '"I could design some flyers and create a Facebook group to help get the word out."'
			}
		]