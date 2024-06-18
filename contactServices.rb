require_relative "contact.rb"

module ContactServices
    def self.create_contact(id, name, email, phone, user_id)
        raise 'Todos os campos devem ser preenchidos' if [id, name, email, phone, user_id].any?(&:nil?)

        unless email.match?(/\A[^@]+@[^@]+\.[^@]+\z/)
            puts "Contato não criado. Email inválido: #{email}"
            return nil
        end
      

        Contact.new(id, name, email, phone, user_id)
    end
end