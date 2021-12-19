Rails.application.routes.draw do
  scope :api do 
    resources :categories do 
      resources :correspondences, :only => [:index]
    end
    resources :correspondences
    resources :intentions do 
      resources :correspondences
      resources :subintentions do 
        resources :correspondences
      end
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
