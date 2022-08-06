@user = User.create(
  name: 'Rao Akif',
  email: 'akifrao@gmail.com',
  password: '123456',
  password_confirmation: '123456'
)

@category = Category.create(
  author_id: @user.id,
  name: 'Shopping',
  icon: 'https://img.icons8.com/color/480/000000/shopping-cart-loaded.png'
)
@category2 = Category.create(
  author_id: @user.id,
  name: 'School',
  icon: 'https://img.icons8.com/fluency/480/000000/school-building.png'
)
