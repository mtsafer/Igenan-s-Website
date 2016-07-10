Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'static_pages#home'
  get 'about' => 'static_pages#about'
  get 'medical' => 'static_pages#medical'
  get 'graphic' => 'static_pages#graphic'
  get 'portfolio' => 'static_pages#portfolio'
  get 'videos' => 'static_pages#videos'
  get 'donations' => 'static_pages#donations'
  get 'sponsors' => 'static_pages#sponsors'
  get 'anime' => 'static_pages#anime' #make an anime controller
  get 'login' => 'static_pages#login' #make user controller and model
end
