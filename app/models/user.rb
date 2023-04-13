class User < ApplicationRecord
  validates :username, uniqueness: true
  def self.generate
    firstname = ["Ali", "Ahmed", "Bilal", "Ahmed", "Atif"]
    lastname = ["Ahmad", "Ahmed", "Bilal", "Shah"]
    number = rand.to_s[2..4]
    username = "#{firstname.sample}-#{lastname.sample}-#{number}"
    create(username: username)
  end
end
