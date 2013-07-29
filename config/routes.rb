TeachingApp::Application.routes.draw do
  root "courses#index"

  # Routes for the Concentration resource:
  # CREATE
  get '/concentrations/new', controller: 'concentrations', action: 'new', as: 'new_concentration'
  post '/concentrations', controller: 'concentrations', action: 'create'

  # READ
  get '/concentrations', controller: 'concentrations', action: 'index'
  get '/concentrations/:id', controller: 'concentrations', action: 'show', as: 'concentration'

  # UPDATE
  get '/concentrations/:id/edit', controller: 'concentrations', action: 'edit', as: 'edit_concentration'
  patch '/concentrations/:id', controller: 'concentrations', action: 'update'

  # DELETE
  delete '/concentrations/:id', controller: 'concentrations', action: 'destroy'
  #------------------------------

  # Routes for the Subject resource:
  # CREATE
  get '/subjects/new', controller: 'subjects', action: 'new', as: 'new_subject'
  post '/subjects', controller: 'subjects', action: 'create'

  # READ
  get '/subjects', controller: 'subjects', action: 'index'
  get '/subjects/:id', controller: 'subjects', action: 'show', as: 'subject'

  # UPDATE
  get '/subjects/:id/edit', controller: 'subjects', action: 'edit', as: 'edit_subject'
  patch '/subjects/:id', controller: 'subjects', action: 'update'

  # DELETE
  delete '/subjects/:id', controller: 'subjects', action: 'destroy'
  #------------------------------

  # Routes for the Course resource:
  # CREATE
  get '/courses/new', controller: 'courses', action: 'new', as: 'new_course'
  post '/courses', controller: 'courses', action: 'create'

  # READ
  get '/courses', controller: 'courses', action: 'index'
  get '/courses/:id', controller: 'courses', action: 'show', as: 'course'

  # UPDATE
  get '/courses/:id/edit', controller: 'courses', action: 'edit', as: 'edit_course'
  patch '/courses/:id', controller: 'courses', action: 'update'

  # DELETE
  delete '/courses/:id', controller: 'courses', action: 'destroy'
  #------------------------------

  # Routes for the Interest resource:
  # CREATE
  get '/interests/new', controller: 'interests', action: 'new', as: 'new_interest'
  post '/interests', controller: 'interests', action: 'create'

  # READ
  get '/interests', controller: 'interests', action: 'index'
  get '/interests/:id', controller: 'interests', action: 'show', as: 'interest'

  # UPDATE
  get '/interests/:id/edit', controller: 'interests', action: 'edit', as: 'edit_interest'
  patch '/interests/:id', controller: 'interests', action: 'update'

  # DELETE
  delete '/interests/:id', controller: 'interests', action: 'destroy'
  #------------------------------

  # Routes for the College resource:
  # CREATE
  get '/colleges/new', controller: 'colleges', action: 'new', as: 'new_college'
  post '/colleges', controller: 'colleges', action: 'create'

  # READ
  get '/colleges', controller: 'colleges', action: 'index'
  get '/colleges/:id', controller: 'colleges', action: 'show', as: 'college'

  # UPDATE
  get '/colleges/:id/edit', controller: 'colleges', action: 'edit', as: 'edit_college'
  patch '/colleges/:id', controller: 'colleges', action: 'update'

  # DELETE
  delete '/colleges/:id', controller: 'colleges', action: 'destroy'
  #------------------------------

  # Routes for the Teacher resource:
  # CREATE
  get '/teachers/new', controller: 'teachers', action: 'new', as: 'new_teacher'
  post '/teachers', controller: 'teachers', action: 'create'

  # READ
  get '/teachers', controller: 'teachers', action: 'index'
  get '/teachers/:id', controller: 'teachers', action: 'show', as: 'teacher'

  # UPDATE
  get '/teachers/:id/edit', controller: 'teachers', action: 'edit', as: 'edit_teacher'
  patch '/teachers/:id', controller: 'teachers', action: 'update'

  # DELETE
  delete '/teachers/:id', controller: 'teachers', action: 'destroy'
  #------------------------------

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
end
