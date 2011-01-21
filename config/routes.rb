Vvon::Application.routes.draw do
  resources :comments

  resources :statuses

  resources :messages

  get "lecturer/edit"

  get "lecturer/new"

  get "lecturer/index"

  get "lecturer/create"

  get "lecturer/destroy"

  get "lecturer/update"

  get "hod/edit"

  get "hod/new"

  get "hod/index"

  get "hod/create"

  get "hod/destroy"

  get "hod/update"

  get "cr/edit"

  get "cr/new"

  get "cr/index"

  get "cr/create"

  get "cr/destroy"

  get "cr/update"

  get "faculty/edit"

  get "faculty/new"

  get "faculty/show"

  get "faculty/index"

  get "faculty/create"

  get "faculty/destroy"

  get "faculty/update"

  get "alumni/edit"

  get "alumni/new"

  get "alumni/show"

  get "alumni/index"

  get "alumni/create"

  get "alumni/destroy"

  get "alumni/update"

  resources :facultyprofiles

  resources :alumniprofiles

  get "student/edit"

  get "student/form"

  get "student/new"

  get "student/show"

  get "student/index"

  resources :studentprofiles
resources :alumniprofiles
resources :facultyprofiles
  resources :users

  get "home/index"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "home#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
