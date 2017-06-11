#seed V1
User.destroy_all
Game.destroy_all

counter = 0
puts "creating user"
2.times do
  print'.'
  counter += 1
  User.create!(
    first_name: ["Lucas", "Paul"][counter - 1],
    last_name: ["Petit", "Geraud"][counter - 1],
    phone: ["06 12 30 22 34", "07 08 09 10 34"][counter - 1],
    civility: ["M.", "M."][counter - 1],
    address: ["23 av. des ecoles", "45 rue du four"][counter - 1],
    post_code: ["69006", "75018"][counter - 1],
    city: ["Lyon", "Paris"][counter - 1],
    country: ["France", "France"][counter - 1],
    email: ["lucaspetit@gmail.com", "paulgeraud@wanadoo.fr"][counter - 1],
    password: "password"
    )
end

counter = 0
puts "creating games"
5.times do
  print'.'
  counter += 1
  Game.create!(
    game_name: ["Final Fantasy 7", "Tekken 3", "crash bandicoot", "Dishonored", "limbo"][counter - 1],
    plateforme: ["PS1", "PS1", "PS4", "xbox 360", "xbox 360"][counter - 1],
    release_date: ["31/01/1997", "12/09/1998", "30/06/2017", "09/10/2012", "21/07/2010"][counter - 1],
    owner_id: User.all.sample.id
    )
end
