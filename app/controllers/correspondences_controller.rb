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
            render json: Correspondence.all, :include => :category, status: :ok
        end 
    end

end
