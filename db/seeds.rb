categories = Category.create([{ title: :наука }, { title: :история }])

users = User.create(
  [{ email: 'first@mail.com' },
   { email: 'second@mail.com'}]
)


tests = Test.create(
    [{ title: 'Континенты', level: 3, category_id: categories[0].id },
   { title: ' Вторая мировая война', level: 2, category_id: categories[1].id },
   { title: 'Насекомые', level: 1, category_id: categories[0].id },
   { title: 'Российская империя', level: 2, category_id: categories[1].id },
   { title: 'Астрономия', level: 3, category_id: categories[0].id }]
)

questions = Question.create(
  [{ body: 'Что является континентом?', test_id: tests[0].id },
   { body: 'Какие страны входили в антигитлеровскую коалицию?', test_id: tests[1].id },
   { body: 'Кто является насекомым?', test_id: tests[2].id },
   { body: 'Какие из современных стран входили в состав Российской империи полностью или частично?', test_id: tests[3].id },
   { body: 'Что является небесным телом?', test_id: tests[4].id }]
)

Answer.create(
  [{ body: '', question_id: questions[0].id, correct: false },
   { body: '', question_id: questions[0].id, correct: true },
   { body: '', question_id: questions[1].id, correct: false },
   { body: '', question_id: questions[1].id, correct: true },
   { body: '', question_id: questions[2].id, correct: false },
   { body: '', question_id: questions[2].id, correct: true },
   { body: '', question_id: questions[3].id, correct: false },
   { body: '', question_id: questions[3].id, correct: true },
   { body: '', question_id: questions[4].id, correct: false },
   { body: '', question_id: questions[4].id, correct: true }]
) 
