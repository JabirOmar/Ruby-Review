class Production < ApplicationRecord
    validates :title, presence: true
has_many :CrewMember
end
