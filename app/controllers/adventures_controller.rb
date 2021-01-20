class AdventuresController < ApplicationController

    def index
        @adventures = Adventure.all 
        render json: @adventures, include: [:character_id, :location_id]
    end

    def show
        @adventure = Adventure.find( params[:id])
        render json: @adventure, include: [:character_id, :location_id]
    end


    def Create 
        @adventure = Adventure.create(
            character_id: params[:character_id],
            location_id: params[:location_id]
        )
        render json: @adventure
    end

end
