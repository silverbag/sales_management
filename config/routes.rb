Rails.application.routes.draw do
  devise_for :users
  root "phases#index"
  resources :phases
  resources :leads, only: [:index, :new, :create] do
    collection do
      get 'search'
    end
  end

end
