Rails.application.routes.draw do
  root "static_pages#home"

  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  # get "/signup", to: "userss#new"

  # get "static_pages/home"
  # get "static_pages/help"

  # actions for other routes
  resources :task_lists do
    # bringing in the task items
    resources :task_items do
      member do
        patch :complete
      end
    end
  end

  resources :userss

  # inital landing page route
  # root "application#hello"
  # root "task_lists#index"

end
