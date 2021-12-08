class CategoriesController < ApplicationController
    def index  
        render json: Catergory.all
    end
end
