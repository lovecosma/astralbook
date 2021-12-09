class IntentionsController < ApplicationController
    def index 
        render json: Intention.all
    end


    def create
        intention = Intention.new(intention_params)
        if intention.save
            render json: intention, status: :created 
        else
            render json: {errors: intention.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update 
        intention = Intention.find(params[:id])
        binding.pry

    end





    private 

    def intention_params
        params.require(:intention).permit(:name, :desc, :correspondences_attributes)
    end

end
