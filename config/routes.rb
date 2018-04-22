Rails.application.routes.draw do
  get "sessions/new"
  root "static_pages#home"

  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  # get "/task_list", to: "tasks_lists#index"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # get "static_pages/home"
  # get "static_pages/help"

  resources :users
  # actions for other routes
  resources :task_lists, shallow: true do
    # bringing in the task items
    resources :task_items do
      member do
        patch :complete
      end
    end
  end

  # inital landing page route
  # root "application#hello"
  # root "task_lists#index"

end
