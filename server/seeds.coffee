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
	Questions.insert
		order: 5
		body: "You are making an important group decision. It might be about family finances, a key work project, campaign strategy, or another critical issue. You are most likely to feel frustrated with the process when:"
		choices: [
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "communicator"
				label: "You feel like people aren’t saying what they actually mean"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "networker"
				label: "The broader community isn’t consulted and choices are made in a vacuum"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "resister"
				label : "There isn’t an equal playing field"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "nurturer"
				label: "People don’t approach the situation carefully and thoughtfully"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "investigator"
				label: "Decisions are made without all the needed information"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "builder"
				label : "People complain about something and don’t provide a path forward"
			}
		]
	Questions.insert
		order: 6
		body: "Which of the following phrases would your friends and family mostly likely use to describe you?"
		choices: [
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "investigator"
				label: "Deeply inquisitive and in constant pursuit of new and better information"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "communicator"
				label: "Always knows just what to say, or how to express themselves"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "builder"
				label : "A real problem-solver"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "resister"
				label: "Guided by a strong moral compass"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "networker"
				label: "A true collaborator with a rich group of friends and colleagues"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "nurturer"
				label : "A real backbone of the family or community"
			}
		]
	Questions.insert
		order: 7
		body: "Which of the following phrases would your friends and family mostly likely use to describe you?"
		choices: [
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "communicator"
				label: "Spending a leisurely afternoon out at a museum or doing some writing"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "resister"
				label: "Attending a local screening, lecture, community event"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "networker"
				label : "Cooking a special dinner for your family and friends"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "nurturer"
				label: "Cooking a special dinner for your family and friends"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "investigator"
				label: "Poring over the Sunday paper and doing some much anticipated reading"
			}
			{
				_id: (new (Meteor.Collection.ObjectID))._str
				value: "builder"
				label : "Tinkering around in your workshop or garden"
			}
		]