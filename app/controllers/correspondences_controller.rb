class CorrespondencesController < ApplicationController

    def index 
        if params[:category_id]
            category = Category.find(params[:category_id])
            if category
                render json: category.correspondences, status: :ok
            else
                render json: {error: "Category not found."}, status: :not_found
            end
        else
            render json: Correspondence.all, status: :ok
        end 
    end


    def create
        correspondence = Correspondence.new(correspondence_params)
        if correspondence.save
            render json: correspondence, status: :created
        else 
            render json: {errors: correspondence.errors.full_messages}, status: :unprocessable_entity
        end 
    end

    def destroy
        if params[:intention_id]
            intention = Intention.find_by(name: params[:intention_id])
            intention.correspondences.delete(params[:id])
            head :ok
        else  
            Correspondence.find(params[:id]).destroy
            head :ok
        end
    end


    private 

    def correspondence_params
        params.require(:correspondence).permit(:name, :desc, :category_id)
    end

end
