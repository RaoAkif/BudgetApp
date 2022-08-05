u1 = User.create(name: 'Rao Muhammad Akif Tufail', email: 'akifrao@gmail.com', password: '123456')

shopping = Category.create(name: 'Shopping', icon: 'https://img.icons8.com/color/480/000000/shopping-cart-loaded.png', author_id: u1.id)
school = Category.create(name: 'School', icon: 'https://img.icons8.com/fluency/480/000000/school-building.png', author_id: u1.id)
