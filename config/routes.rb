Rails.application.routes.draw do
  resources :menu_items
  resources :services
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'static_pages#home'

  resources :videos

  resources :parts, :path => "parts_list" do
  end

  match 'contact' => 'messages#new', via: :get
  match 'manage' => 'static_pages#manage', via: :get

  resources :posts, :path => "projects" do
  end

  resources :messages, except: [:update, :edit]
  resources :build_images
  resources :settings, except: [:new, :create, :destroy, :show]

  match '/remove_home_image/:id' => 'settings#remove_home_image', as: :remove_home_image, via: [:post]

  resources :footers, except: [:new, :create, :destroy]

  resources :categories

end
