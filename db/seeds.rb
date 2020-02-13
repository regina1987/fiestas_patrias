# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.destroy_all
User.destroy_all
Todo.destroy_all

Task.create(name:'Jugar una pichanga', photo: 'https://media.cnnchile.com/sites/2/2019/02/1517587495-pelota-740x430.jpg')
Task.create(name:'Ir a una fonda', photo: 'https://www.diariofutrono.cl/files/5d7ab7b8dd614_890x533.jpg')
Task.create(name:'Ecumbrar un volantin', photo: 'https://media.metrolatam.com/2019/09/14/volantines-bc99cc06b05a752185f0ec4f218c8b60-1200x800.jpg')
Task.create(name:'Comer una empanada', photo: 'https://comidaschilenas.com/wp-content/uploads/2019/02/Receta-empanadas-de-mariscos-chilenos.jpg')
Task.create(name:'Bailar una patita', photo: 'https://www.grupoeducar.cl/wp-content//uploads/2018/09/cueca-1373x700.jpg')
Task.create(name:'Tomarse un terremoto', photo: 'https://3.bp.blogspot.com/_p-z3N6p79aw/SkrfYuY0aZI/AAAAAAAAGQM/iwtCQz9mFsI/s320/terremotoquitapenas.jpg')
Task.create(name:'Poner una bandera', photo: 'https://media.cnnchile.com/sites/2/2018/06/imagen_principal-11489-740x430.jpg')
Task.create(name:'Escucar musica tipica', photo: 'https://ih0.redbubble.net/image.51977761.4084/mwo,x1000,ipad_2_snap-pad,750x1000,f8f8f8.u3.jpg')
Task.create(name:'Disfrasarse en traje tipico', photo: 'https://i.pinimg.com/originals/de/33/94/de33947bab8a32254f9b47cd153394e9.jpg')

User.create(name:'Mister_1', email: '1@com', password: '123456')
User.create(name:'Mister_2', email: '2@com', password: '123456')
User.create(name:'Mister_3', email: '3@com', password: '123456')
User.create(name:'Mister_4', email: '4@com', password: '123456')

st=[false,true]

User.all.each do |user|
Task.all.each do |task|
 Todo.create!(user: user, task: task, status: st.sample)

end
end
