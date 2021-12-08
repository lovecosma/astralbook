Rails.application.routes.draw do
  resources :categories do 
    resources :correspondences, :only => [:index]
  end
  resources :correspondences
  resources :intentions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
