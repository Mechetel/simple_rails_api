Rails.application.routes.draw do
  root 'projects#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :projects
    end
  end
end
