class Plant < ApplicationRecord
    has_many :impacts, foreign_key: "influencee_id"
end
