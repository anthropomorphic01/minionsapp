# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "CADASTRANDO CATEGORIAS..."

categories = [ "Bonecos" ,
               "Fantasias" ,
               "Jogos" ,
               "Pelúcias" ,
               "Nurfs" ,
               "Blocos de Montar" ,
               "Carrinhos e Cia" ,
               "Faz de Conta" ,               
               "Lançadores" ,                              
               "Pistas e Autoramas" ]

categories.each do |category|
  Category.find_or_create_by(description: category)
end

puts "CATEGORIAS CADASTRADAS!"

#puts "CADASTRANDO PRUDUTOS..."
#Ad.where(:title => "Minion", :description => "Minion Doido", :img => "minion.jpg", :views => "132").first_or_create
#puts "PRUDUTOS CADASTRADOS!"

puts "CADASTRANDO PRUDUTOS..."
Ad.create!(
  title: "Minion",
  description: "Minion Doido",
  img: "http://i66.tinypic.com/692qza.png",
  views: "123 Views",
  price_cents: 89.99
)
puts "PRUDUTOS CADASTRADOS!"