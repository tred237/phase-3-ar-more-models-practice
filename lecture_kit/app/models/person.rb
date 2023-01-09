class Person < ActiveRecord::Base
    has_many :plant_parenthoods
    has_many :plants, through: :plant_parenthoods
    has_many :waterings
    has_many :waterees, through: :waterings

    def water_plant(plant)
        self.waterings << Watering.create(plant_id: plant.id)
        
        if self.plant_parenthoods.map{|i| i.plant_id}.include?(plant.id)
            parenthood = self.plant_parenthoods.find_by(plant_id: plant.id)
            parenthood.update(affection: parenthood.affection + 1)
        end
    end
end