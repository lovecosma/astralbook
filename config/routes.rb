Rails.application.routes.draw do
  scope :api do 
    patch "/intentions/:id/destroy_all_correspondences", to: "intentions#destroy_all_correspondences"
    resources :categories do 
      resources :correspondences, :only => [:index]
    end
    resources :correspondences
    resources :intentions do 
      resources :correspondences
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
