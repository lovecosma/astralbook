class SubintentionsController < ApplicationController

    def create 
        subintention = Subintention.new(subintention_params)
        if subintention.save
            render json: subintention, status: :created
        else
                render json: {errors: subintention.errors.full_messages}, status: :unprocessable_entity
        end
    end



    private 
    def subintention_params
        params.require(:subintention).permit(:name, :intention_id)
    end
end
