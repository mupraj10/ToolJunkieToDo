Rails.application.routes.draw do
  # actions for other routes
  resources :task_lists do
    # bringing in the task items
    resources :task_items
  end
  resources :users

  # inital landing page route
  # root "application#hello"
  root "task_lists#index"
end
