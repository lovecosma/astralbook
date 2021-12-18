class SubintentionsController < ApplicationController

    def create
        if params[:intention_id]
            intention = Intention.find(params[:intention_id])
            if intention 
                subintention = Subintention.new(name: subintention_params[:name], intention_id: intention.id)
                if subintention.save
                    render json: subintention, status: :created
                else
                    render json: {errors: subintention.errors.full_messages}, status: :unprocessable_entity
                end
            else 
                render json: {errors: "There must be a valid intentionId in the params"}
            end
        else
            render json: {errors: "There must be a valid intentionId in the params"}
        end
    end



    private 

    def find_subintention
        subintention = Subintention.find(params[:id])
        if subintention
            subintention
        else
            nil
        end
    end
     
    def subintention_params
        params.require(:subintention).permit(:name, :correspondences_attributes => [:name, :category_id])
    end

end
