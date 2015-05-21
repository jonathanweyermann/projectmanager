Rails.application.routes.draw do
  get 'pomodoro/new'

  get 'pomodoro/create'

  get 'pomodoro/update'

  get 'pomodoro/edit'

  get 'pomodoro/destroy'

  get 'pomodoro/index'

  get 'pomodoro/show'

  get 'todo/new'

  get 'todo/create'

  get 'todo/update'

  get 'todo/edit'

  get 'todo/destroy'

  get 'todo/index'

  get 'todo/show'

  get 'task/new'

  get 'task/create'

  get 'task/update'

  get 'task/edit'

  get 'task/destroy'

  get 'task/index'

  get 'task/show'

  get 'project/new'

  get 'project/create'

  get 'project/update'

  get 'project/edit'

  get 'project/destroy'

  get 'project/index'

  get 'project/show'

  get 'context/new'

  get 'context/create'

  get 'context/update'

  get 'context/edit'

  get 'context/destroy'

  get 'context/index'

  get 'context/show'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'context#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
    resources :contexts
    resources :projects
    resources :tasks
    resources :todos

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
end
