Rails.application.routes.draw do
  
  resources :formfor
  
  get 'formfor/index'

  get 'formfor/new'

  post 'formfor/create'

  get 'formfor/edit/:post_id' => 'formfor#edit', as: "formfor_edit"

  patch 'formfor/update/:post_id' => 'formfor#update', as: "formfor_update"
  
  delete 'formfor/destroy/:post_id' => 'formfor#destroy', as: "formfor_destroy"
  
  
  
  

  root 'basichtml#index'
  
  get 'basichtml/index'

  get 'basichtml/new'

  post 'basichtml/create'

  

  get 'basichtml/edit/:post_id' => 'basichtml#edit'

  
  get 'basichtml/update/:post_id' => 'basichtml#update'
  
  get 'basichtml/destroy/:post_id' => 'basichtml#destroy'
  
  
  
  post '/basichtml/:post_id_for_you/comments/create' => 'basichtml#commentcreate'
  
  get '/basichtml/:post_id/comments/:comment_id/destroy' => 'basichtml#commentdestroy'
  
  get '/basichtml/:post_id/comments/:comment_id/edit' => 'basichtml#commentedit'
  
  get '/basichtml/:post_id/comments/:comment_id/update' => 'basichtml#commentupdate'
  
  
  
  post '/formfor/:post_id_for_you/comment2s/create' => 'formfor#commentcreate', as: "formfor_ccreate"
  
  get '/formfor/:post_id/comment2s/:comment_id/destroy' => 'formfor#commentdestroy', as: "formfor_cdestroy"
  
  get '/formfor/:post_id/comment2s/:comment_id/edit' => 'formfor#commentedit2', as: "formfor_cedit"
  
  patch '/formfor/:post_id/comment2s/:comment_id/update' => 'formfor#commentupdate', as: "formfor_cupdate"



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
