require_relative 'user.rb'

module UserServices
    def self.create_user(id, name, email, phone)
        raise "Todos os campos devem ser preenchidos" if [id, name, email, phone].any?(&:nil?)

        unless email.match?(/\A[^@]+@[^@]+\.[^@]+\z/)
            puts "Usuário não criado. Email inválido: #{email}"
            return nil
        end
      

        User.new(id, name, email, phone)
    end
end