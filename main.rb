$LOAD_PATH <<'.'
require_relative "userServices.rb"
require_relative "contactServices.rb"
require_relative "responseServices.rb"

#supostamente é isso aqui: 
  users_data = [
      {"id": 1, "name": "Jean", "email": "jean@gmail.com", "phone": "41 995281756"},
      {"id": 2, "name": "Mario", "email": "mario@gmail.com", "phone": "41 98656565"},
      {"id": 3, "name": "Francisco", "email": "franc@gmail.com", "phone": "48 95653232"},
      {"id": 4, "name": "Maria", "email": "maria@gmail.com", "phone": "48 65659898"},
      {"id": 5, "name": "Gisele", "email": "gisele@gmail.com", "phone": "48 65653232"},
  ]
  #Criação dos usuários

  users = users_data.map do |user|
    UserServices.create_user(user[:id], user[:name], user[:email], user[:phone])
  end.compact


  contacts_data = [
      {"id": 1, "name": "Marlon", "email": "marlon@gmail.com", "phone": "41 995281756", "user_id": 1},
      {"id": 2, "name": "Carla", "email": "carla@gmail.com", "phone": "41 98656565", "user_id": 2},
      {"id": 3, "name": "Miranda", "email": "miranda@gmail.com", "phone": "48 95653232", "user_id": 2},
      {"id": 4, "name": "Irlanda", "email": "irlanda@gmail.com", "phone": "48 65659898", "user_id": 3},
      {"id": 5, "name": "Carlos", "email": "carlos@gmail.com", "phone": "48 65653232", "user_id": 4},
      {"id": 6, "name": "Francielle", "email": "fran@gmail.com", "phone": "41 995281756", "user_id": 5},
      {"id": 7, "name": "Paulo", "email": "paulo@gmail.com", "phone": "41 98656565", "user_id": 4},
      {"id": 8, "name": "Cris", "email": "cris@gmail.com", "phone": "48 95653232", "user_id": 3},
      {"id": 9, "name": "Chitão", "email": "chitao@gmail.com", "phone": "48 65659898", "user_id": 2},
      {"id": 10, "name": "Careca", "email": "careca@gmail.com", "phone": "48 65653232", "user_id": 1},
      {"id": 11, "name": "Beto", "email": "beto@gmail.com", "phone": "41 995281756", "user_id": 2},
      {"id": 12, "name": "Gisele", "email": "gisele@gmail.com", "phone": "41 98656565", "user_id": 3},
      {"id": 13, "name": "Brian", "email": "brian@gmail.com", "phone": "48 95653232", "user_id": 4},
      {"id": 14, "name": "Conceição", "email": "conceicao@gmail.com", "phone": "48 65659898", "user_id": 5},
      {"id": 15, "name": "Maria", "email": "maria@gmail.com", "phone": "48 65653232", "user_id": 4},
      {"id": 16, "name": "Antonia", "email": "antonia@gmail.com", "phone": "48 65653232", "user_id": 5},
      {"id": 17, "name": "Orlando", "email": "orlando@gmail.com", "phone": "48 65653232", "user_id": 1},
  ]

  # Criação dos contatos
  contacts = contacts_data.map do |contact|
    ContactServices.create_contact(contact[:id], contact[:name], contact[:email], contact[:phone], contact[:user_id])
  end.compact

puts ResponseServices.response_as_json(users, contacts)
