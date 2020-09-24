Rails.application.routes.draw do
  devise_for :users
  root "leads#index"
  resources :leads do
    resources :comments, only: :create
  end
end
