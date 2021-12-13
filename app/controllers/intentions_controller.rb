class IntentionsController < ApplicationController
    def index 
        render json: Intention.all
    end

    def show
        render json: Intention.find(params[:id]), include: [:correspondences]
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
        if(intention.update(intention_params))
            render json: intention, include: :correspondences, status: :ok
        else
            render json: {errors: "There was an error saving this correspondence to this intention"}
        end 

    end





    private 

    def intention_params
        params.require(:intention).permit(:name, :desc, {:correspondences_attributes => [:name, :category_id]})
    end

end
