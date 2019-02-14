class CreateImpacts < ActiveRecord::Migration[5.2]
  def change
    create_table :impacts do |t|
      t.references :influencee, foreign_key: {to_table: :plants}, null: false
      t.references :influencer, foreign_key: {to_table: :plants}, null: false
      t.boolean :positive_impact, null: false
      t.text :reason

      t.timestamps
    end
  end
end
