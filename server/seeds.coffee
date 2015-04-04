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