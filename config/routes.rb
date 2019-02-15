Rails.application.routes.draw do

  resources :products
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'static_pages#home'

  resources :categories
  resources :menu_item_types
  resources :menu_items
  resources :services
  resources :videos
  resources :messages, except: [:update, :edit]
  resources :build_images
  resources :settings
  resources :footers, except: [:new, :create, :destroy]
  resources :posts, :path => "projects" do
  end
  resources :parts, :path => "parts_list" do
  end

  match '/shop' => 'static_pages#shop', via: :get
  match '/about' => 'static_pages#about', via: :get
  match 'contact' => 'messages#new', via: :get
  match 'manage' => 'static_pages#manage', via: :get
  match '/remove_home_image/:id' => 'settings#remove_home_image', as: :remove_home_image, via: [:post]
  match '/settings/:id/edit_about' => 'settings#edit_about', as: :edit_about, via: [:get]
  match '/settings/:id/edit_contact' => 'settings#edit_contact', as: :edit_contact, via: [:get]
  match '/settings/:id/edit_swag_shop' => 'settings#edit_swag_shop', as: :edit_swag_shop, via: [:get]

end
