Rails.application.routes.draw do
  scope :api do 
    resources :categories do 
      resources :correspondences, :only => [:index]
    end
    resources :correspondences, :only => [:index, :create, :destroy]
    resources :intentions do 
      resources :subcategories
      resources :correspondences, :only => [:destroy]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
