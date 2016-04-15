Rails.application.routes.draw do

  get 'colleges' =>  'colleges#index', as: :college

  get '/colleges_search' => 'colleges#search_api', as: :college_search
  # post '/enter_college' => 'colleges#create'

  get 'colleges/show' => 'colleges#show', as: :college_show

  post 'colleges' => 'colleges#create', as: :add_college



  # get '/college/:id' => 'college#show', as: :college_show
  # get '/beans/:id' => 'beans#show', as: :bean


  get 'users' => 'users#index'

  post 'users' => 'users#create'

  get 'users/new' => 'users#new'

  get 'users/:id' => 'users#show', as: :user

  patch  'users/:id' => 'users#update'

  delete 'users/:id' => 'users#destroy', as: :delete

  get 'users/:id/edit' => 'users#edit', as: :edit




  get  '/login' => 'sessions#new'

  post '/login' => 'sessions#create'

  delete  'logout' => 'sessions#destroy'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'users#index'

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
end
