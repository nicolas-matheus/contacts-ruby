require 'json'
module ResponseServices
    def self.response_as_json(users, contacts)
        users_data = users.map do |user|
            user_contacts = contacts.select { |contact| contact.user_id == user.id }
            {
                id: user.id,
                name: user.name,
                email: user.email,
                phone: user.phone,
                contacts: user_contacts.map do |contact|
                {
                    id: contact.id,
                    name: contact.name,
                    email: contact.email,
                    phone: contact.phone
                }
                end
            }
        end

        users_data.to_json
    end
end

#rabisco: users_data = user.map do |user| \\ user_contacts = contacts_data.select ... \\ def self.response_as_json(users, contacts)