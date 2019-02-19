class Impact < ApplicationRecord
  belongs_to :influencee, class_name: "Plant"
  belongs_to :influencer, class_name: "Plant"
  validates :influencer, uniqueness: { scope: :influencee, message: "ist bereits mit dieser Pflanze in einer Nachbarschaft."}
end
