Rails.application.routes.draw do
   resources :photos
    root "photos#new"
end
