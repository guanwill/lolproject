class Account < ActiveRecord::Base
    has_secure_password
    validates :name, :uniqueness => true
    validates :lol_username, presence: true
    validates :email, :uniqueness => true
    validates_confirmation_of :password
    validates :fav_champion, presence: true
end
