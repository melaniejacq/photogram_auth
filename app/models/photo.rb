class Photo < ApplicationRecord
    
    belongs_to :user
    belongs_to :photo

    has_many :fans, :through => :likes, :source => :user

    validates :user_id, :presence => true
end
