#Just seeds the database
if Questions.find().fetch().length == 0
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