class AddUniqueIndexOnImpacts < ActiveRecord::Migration[5.2]
  def change
    add_index(:impacts, [:influencee_id, :influencer_id], unique: true)
  end
end
