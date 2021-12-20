class CategoriesController < ApplicationController
    def index  
        render json: Category.order(title: :asc)
    end

    def create 
        
    end
end
