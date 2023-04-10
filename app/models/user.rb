class User < ApplicationRecord
  validates :username, uniqueness: true
  def self.generate
    firstname = ["Ali", "Ahmed", "Bilal", "Muzahir", "Atif"]
    lastname = ["Ahmad", "Ahmed", "Bilal", "Shah"]
    number = rand.to_s(2..4)
  end
end
