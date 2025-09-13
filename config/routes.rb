Rails.application.routes.draw do
  devise_for :users
  root "projects#index"

  resources :projects do
    resources :lists, except: [ :index, :show ] do
      member do
        patch :sort
      end
      resources :cards, except: [ :index ] do
        member do
          patch :sort
        end
      end
    end

    resources :project_memberships, only: [ :create, :destroy ]
  end
end
