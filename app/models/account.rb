class Account < ActiveRecord::Base
    has_secure_password
    validates :name, :uniqueness => true
    validates :lol_username, presence: true
    # validates :email, :uniqueness => true

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

    validates_confirmation_of :password, allow_nil: true
    # validates :fav_champion, presence: true
end
