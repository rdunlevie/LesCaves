Rails.application.routes.draw do
  resources :wines
  resources :sub_vineyards
  resources :vineyards
  resources :regions
  resources :varietals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
