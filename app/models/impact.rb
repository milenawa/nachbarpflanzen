class Impact < ApplicationRecord
  belongs_to :influencee, class_name: "Plant"
  belongs_to :influencer, class_name: "Plant"
end
