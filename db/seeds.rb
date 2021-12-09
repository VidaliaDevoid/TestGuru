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
	{ title: 'Dogs lvl 1', level: 1, category_id: categories.first.id, author_id: users.first.id },
	{ title: 'Dogs lvl 2', level: 2, category_id: categories.first.id, author_id: users.first.id },
	{ title: 'Dogs lvl 3', level: 3, category_id: categories.first.id, author_id: users.first.id },
	{ title: 'Cats lvl 1', level: 1, category_id: categories.second.id, author_id: users.first.id },
	{ title: 'Cats lvl 2', level: 2, category_id: categories.second.id, author_id: users.first.id },
	{ title: 'Cats lvl 3', level: 3, category_id: categories.second.id, author_id: users.first.id },
	{ title: 'Birds lvl 1', level: 1, category_id: categories.third.id, author_id: users.first.id },
	{ title: 'Birds lvl 2', level: 2, category_id: categories.third.id, author_id: users.first.id },
	{ title: 'Birds lvl 3', level: 3, category_id: categories.third.id, author_id: users.first.id }
])

questions = Question.create!([
	{ body: '1 ?', test_id: tests[0].id },
	{ body: '2 ?', test_id: tests[1].id },	
	{ body: '3 ?', test_id: tests[2].id },	
	{ body: '4 ?', test_id: tests[3].id },	
	{ body: '5 ?', test_id: tests[4].id },	
	{ body: '6 ?', test_id: tests[5].id },	
	{ body: '7 ?', test_id: tests[6].id },		
	{ body: '8 ?', test_id: tests[7].id },		
	{ body: '9 ?', test_id: tests[8].id }
])

answers = Answer.create!([
	{ body: 'answer 1', question_id: questions.first.id, correct: 1},
	{ body: 'answer 2', question_id: questions.first.id},
	{ body: 'answer 3', question_id: questions.first.id},
	{ body: 'answer 4', question_id: questions.second.id},
	{ body: 'answer 5', question_id: questions.second.id, correct: 1},
	{ body: 'answer 6', question_id: questions.second.id},
	{ body: 'answer 7', question_id: questions.third.id},
	{ body: 'answer 8', question_id: questions.third.id, correct: 1},
	{ body: 'answer 9', question_id: questions.third.id}
])

Result.create!([{ user_id: users.first.id, test_id: tests.first.id }])
