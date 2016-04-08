Tript::Application.routes.draw do
  get 'sessions/new'

  get 'lessons/get_content', to: 'lessons#get_content'

  get 'class/lessons', to: 'class#lessons'

  get 'subject/lessons', to: 'subject#lessons'

  get 'schools/lessons', to: 'schools#lessons'

  get 'type/lessons', to: 'type#lessons'

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
  resources :users, only: [:new, :create, :destroy]
  get '/users/:id' => 'users#show'

  root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :lessons, only: [:new, :create, :destroy] do
    resources :comments
  end

  get '/lessons' => 'lessons#search'
  get '/lessons/:id' => 'lessons#show'
  get '/details/:id' => 'lessons#details'
  post '/lessons/new' => 'lessons#create'
  delete 'lessons/:id' => 'lessons#destroy'

  resources :schools

  # Get all grades
  get '/grades' => 'schools#index'

  # # Get representative lessons of classes in the specific schools
  # get '/grades/:name/lessons' => 'schools#lessons'
  #
  # # Get all classes of a specific schools
  # get '/grades/:id/classes' => 'schools#classes'
  #
  # # Get all subjects of a specific schools
  get '/classes/:id/subjects' => 'class#subjects'
  #
  # # Get all lessons of class
  # get '/classes/:name/lessons' => 'class#lessons'

  # Get the schools with specific name
  get '/grades/name/:name' => 'schools#names'

  # Manage user
  get '/admin/users/edit', to: 'admin#manage_user', as: 'manage_user'
  put '/admin/users', to: 'admin#update_users', as: :update_user
  get 'users/all/edit', to: 'users#edit_all', as: :edit_all
  post 'users/all/edit', to: 'users#create_by_admin'
  put 'users/all', to: 'users#update_all', as: :update_all

  # View lessons by school
  get '/:school', to: 'schools#index', as: :school_view

  # Api definition
  namespace :api, defaults: { format: :json }, path: '/' do
    scope module: :v1 do
      # We are going to list our resources here
    end
  end

  mount Commontator::Engine => '/commontator'

  # Handle 404 error
  get '*unmatched_route', to: 'application#not_found'

end
