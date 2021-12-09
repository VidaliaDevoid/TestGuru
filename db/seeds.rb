categories = Category.create!([
	{ title: 'Dogs' },
	{ title: 'Cats' },
	{ title: 'Birds' }
])

users = User.create!([
	{ name: 'Natalia' },
	{ name: 'Maxim' }
])

tests = Test.create!([
	{ title: 'Dogs lvl 1', level: 1, category: categories.first, author: users.first },
	{ title: 'Dogs lvl 2', level: 2, category: categories.first, author: users.first },
	{ title: 'Dogs lvl 3', level: 3, category: categories.first, author: users.first },
	{ title: 'Cats lvl 1', level: 1, category: categories.second, author: users.first },
	{ title: 'Cats lvl 2', level: 2, category: categories.second, author: users.first },
	{ title: 'Cats lvl 3', level: 3, category: categories.second, author: users.first },
	{ title: 'Birds lvl 1', level: 1, category: categories.third, author: users.first },
	{ title: 'Birds lvl 2', level: 2, category: categories.third, author: users.first },
	{ title: 'Birds lvl 3', level: 3, category: categories.third, author: users.first }
])

questions = Question.create!([
	{ body: '1 ?', test: tests[0] },
	{ body: '2 ?', test: tests[1] },	
	{ body: '3 ?', test: tests[2] },	
	{ body: '4 ?', test: tests[3] },	
	{ body: '5 ?', test: tests[4] },	
	{ body: '6 ?', test: tests[5] },	
	{ body: '7 ?', test: tests[6] },		
	{ body: '8 ?', test: tests[7] },		
	{ body: '9 ?', test: tests[8] }
])

answers = Answer.create!([
	{ body: 'answer 1', question: questions.first, correct: 1},
	{ body: 'answer 2', question: questions.first},
	{ body: 'answer 3', question: questions.first},
	{ body: 'answer 4', question: questions.second},
	{ body: 'answer 5', question: questions.second, correct: 1},
	{ body: 'answer 6', question: questions.second},
	{ body: 'answer 7', question: questions.third},
	{ body: 'answer 8', question: questions.third, correct: 1},
	{ body: 'answer 9', question: questions.third}
])

# Result.create!([{ user: users.first, test: tests.first }])
