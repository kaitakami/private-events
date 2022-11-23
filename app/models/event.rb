class Event < ApplicationRecord
  has_many :guests
  belongs_to :organizer, class_name: "User", foreign_key: 'user_id'
end
