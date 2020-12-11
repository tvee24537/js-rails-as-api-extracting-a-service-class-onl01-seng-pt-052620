class SightingsController < ApplicationController
  def index
    sightings = Sighting.all
<<<<<<< HEAD
    render json: SightingSerializer.new(sightings).to_serialized_json
=======
    render json: sightings.to_json(:include => {
      :bird => {:only => [:name, :species]},
      :location => {:only => [:latitude, :longitude]}
    }, :except => [:updated_at])
>>>>>>> 5422e2c2dc3f374b50089242a58d723265d019e8
  end
 
  def show
    sighting = Sighting.find_by(id: params[:id])
<<<<<<< HEAD
    render json: SightingSerializer.new(sighting).to_serialized_json
=======
    render json: sighting.to_json(:include => {
      :bird => {:only => [:name, :species]},
      :location => {:only => [:latitude, :longitude]}
    }, :except => [:updated_at])
>>>>>>> 5422e2c2dc3f374b50089242a58d723265d019e8
  end
end