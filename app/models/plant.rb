class Plant < ApplicationRecord
    has_many :impacts, foreign_key: "influencee_id"
    validates :name, uniqueness: { case_sensitive: false }
end
