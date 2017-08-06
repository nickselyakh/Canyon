User.delete_all
Category.delete_all
Manual.delete_all
User.create(
  uid: 'nickselyakh@gmail.com',
  password: '123qwe',
  role: 'admin'
)
Category.create(
  id: -1,
  title: 'House'

)

User.first.manuals.create(
  title: 'First instruction',
  category_id: 0
)
