class Account < ActiveRecord::Base
    validates :name, presence: true
    validates :lol_username, presence: true
    validates :fav_champion, presence: true
end
