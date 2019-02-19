module ImpactsHelper
    def get_no_neighbors(plant)
        existing_ids = plant.impacts.map(&:influencer_id)
        Plant.where.not(id: existing_ids).order(name: :asc)
    end
end
