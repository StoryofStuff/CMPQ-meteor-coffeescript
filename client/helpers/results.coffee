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
			Session.set 'result', currentResult
			return currentResult
	resultBody: (result) ->
		console.log result
		switch result
			when 'builder'
				return """<p>Builders like you are aren't waiting for the solutions, they're out there creating them. Here are just a few ways you might be doing that:</p>
					<ul>
						<li>Using engineering, design or science to make stuff that doesn’t trash people or the planet.</li>
						<li>Creating community gardens, time banks or other methods for sharing resources and strengthening community.</li>
						<li>Starting new businesses that foster healthy communities and a healthy planet.</li>
					</ul>
					<p>Notable Builders who have done awesome things to change the world:</p>
					<ul><li>Janine Benyus</li>
						<li>Danny Kennedy</li>
						<li>Jon Warner</li>
						<li>Wangari Maathai</li>
						<li>Benton MacKaye</li>
						<li>Omar Freilla</li>
					</ul>"""
			when 'networker'
				return """<p>Networkers like yourself play a crucial role in making change! Some of our favorite Networker traits:</p>
					<ul>
						<li>A love and skill for making introductions and making new friends and contacts.</li>
						<li>Helping to bring all types of people and Changemakers Personalities together over commons ideas, goals and actions.</li>
						<li>An outgoing, open-natured person that&#8217;s constantly trying to strengthen and grow their communities.</li>
					</ul>
					<p>Notable Networkers who have done awesome things to change the world:</p>
					<ul><li>Van Jones</li>
						<li>Tony Mazzocchi</li>
						<li>Bayard Rustin</li>
						<li>Rob Stuart</li>
						<li>Ai-Jen Poo</li>
						<li>Kristen Rowe-Finkbeine</li>
					</ul>"""
			when 'communicator'
				return """<p>Communicators like you tell the stories and share information that build our power, bring us closer together and closer to a better future. Here&#8217;s how:</p>
					<ul>
						<li>Using your creativity and expression to share knowledge in compelling and accessible ways, whether through art, film, oratory, music, online or innumerable other ways.</li>
						<li>Reminding people about all the ways we&#8217;re connected.</li>
						<li>Spreading news, information and ideas to other Changemaker Personalities.</li>
					</ul>
					<p> Some Notable Communicators who have done awesome things to change the world:</p>
					<ul><li>Pete Seeger</li>
						<li>Arundhati Roy</li>
						<li>Michael Moore</li>
						<li>Sojourner Truth</li>
						<li>Favianna Rodriquez</li>
						<li>Dennis Brutus</li>
						<li>Amy Goodman</li>
						<li>Bernice Reagan Johnson</li>
						<li>Free Range Studios</li>
					</ul>"""
			when 'resister'
				return """<p>Resisters like you are on the front lines of changmaking! Here are just a few ways Resisters are already helping to write the next chapter in the story of stuff:</p>
					<ul>
						<li>Standing up to the bullies and bad guys.</li>
						<li>Practicing civil disobedience.</li>
						<li>Halting destructive projects with a wide range of tools from lawsuits to injunctions to blockades.</li>
						<li>Helping other changemakers find their own power to resist injustice.</li>
					</ul>
					<p> Notable Resisters who have done awesome things to change the world:</p>
					<ul><li>Mary Harris "Mother" Jones</li>
						<li> Harriet Tubman</li>
						<li> Evgenia Chirikova</li>
						<li> Medha Parkar</li>
						<li> Lois Gibbs</li>
						<li>Cesar Chavez</li>
						<li> Dolores Huerta</li>
						<li> Rhiannon Tomtishen</li>
						<li> Madison Vorva</li>
					</ul>"""
			when 'investigator'
				return """<p>Investigators like you play the crucial role of exposing both the problems we face and the solutions. Here&#8217;s how:</p>
					<ul>
						<li>Reading, inquiring and learning constantly.</li>
						<li>Researching facts questions, issues and stories thoroughly until the entire picture is clear.</li>
						<li>Asking the hard questions and finding the sometimes-dark truths, even when it&#8217;s challenging and uncomfortable.</li>
					</ul>
					<p> Notable Investigators who have done awesome things to find truth and change the world:</p>
					<ul><li>Sandra Steingraber</li>
						<li>Rachel Carson</li>
						<li>Seymour Hersh</li>
						<li>James Hansen</li>
						<li>Peter Gleick</li>
					</ul>"""
