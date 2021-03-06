Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
  get '/' => 'tasks#home'

  # display all tasks
  get '/tasks' => "tasks#index"

  # return html form to create new task
  get '/tasks/new' => 'tasks#new'
  # create a new task
  post '/tasks' => "tasks#create"

  delete '/tasks/:id' => "tasks#destroy", as: "delete"

  patch '/tasks/:id/complete' => "tasks#mark_complete", as: "complete"

  get '/tasks/:id' => "tasks#show"

  # return html form to edit a task
  get '/tasks/:id/edit' => "tasks#edit", as: "edit"
  patch '/tasks/:id' => "tasks#update", as: "task"

  get '/people' => "people#index"
  get '/people/:id' => "people#show"

  get '/people/:id/tasks' => 'people#tasks'

  # get '/tasks/show' => "tasks#show"
  # # return html form to find a task

end
