module PlantsHelper
    def put_outdoors_months(plant)
        [
            plant.put_outdoors_jan ? "Jan" : "",
            plant.put_outdoors_feb ? "Feb" : "",
            plant.put_outdoors_mar ? "Mär" : "",
            plant.put_outdoors_apr ? "Apr" : "",
            plant.put_outdoors_may ? "Mai" : "",
            plant.put_outdoors_jun ? "Jun" : "",
            plant.put_outdoors_jul ? "Jul" : "",
            plant.put_outdoors_aug ? "Aug" : "",
            plant.put_outdoors_sep ? "Sep" : "",
            plant.put_outdoors_oct ? "Okt" : "",
            plant.put_outdoors_nov ? "Nov" : "",
            plant.put_outdoors_dec ? "Dez" : ""
        ].reject(&:blank?).join(", ")
    end
end
