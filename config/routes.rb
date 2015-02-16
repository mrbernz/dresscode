#           Prefix Verb   URI Pattern                              Controller#Action
#            login GET    /login(.:format)                           session#new
#          session POST   /session(.:format)                         session#create
#                  DELETE /session(.:format)                         session#destroy
#             root GET    /                                          users#index
#     user_outfits GET    /users/:user_id/outfits(.:format)          outfits#index
#                  POST   /users/:user_id/outfits(.:format)          outfits#create
#  new_user_outfit GET    /users/:user_id/outfits/new(.:format)      outfits#new
# edit_user_outfit GET    /users/:user_id/outfits/:id/edit(.:format) outfits#edit
#      user_outfit GET    /users/:user_id/outfits/:id(.:format)      outfits#show
#                  PATCH  /users/:user_id/outfits/:id(.:format)      outfits#update
#                  PUT    /users/:user_id/outfits/:id(.:format)      outfits#update
#                  DELETE /users/:user_id/outfits/:id(.:format)      outfits#destroy
#        user_tops GET    /users/:user_id/tops(.:format)             tops#index
#                  POST   /users/:user_id/tops(.:format)             tops#create
#     new_user_top GET    /users/:user_id/tops/new(.:format)         tops#new
#    edit_user_top GET    /users/:user_id/tops/:id/edit(.:format)    tops#edit
#         user_top GET    /users/:user_id/tops/:id(.:format)         tops#show
#                  PATCH  /users/:user_id/tops/:id(.:format)         tops#update
#                  PUT    /users/:user_id/tops/:id(.:format)         tops#update
#                  DELETE /users/:user_id/tops/:id(.:format)         tops#destroy
#       user_pants GET    /users/:user_id/pants(.:format)            pants#index
#                  POST   /users/:user_id/pants(.:format)            pants#create
#    new_user_pant GET    /users/:user_id/pants/new(.:format)        pants#new
#   edit_user_pant GET    /users/:user_id/pants/:id/edit(.:format)   pants#edit
#        user_pant GET    /users/:user_id/pants/:id(.:format)        pants#show
#                  PATCH  /users/:user_id/pants/:id(.:format)        pants#update
#                  PUT    /users/:user_id/pants/:id(.:format)        pants#update
#                  DELETE /users/:user_id/pants/:id(.:format)        pants#destroy
#       user_shoes GET    /users/:user_id/shoes(.:format)            shoes#index
#                  POST   /users/:user_id/shoes(.:format)            shoes#create
#    new_user_shoe GET    /users/:user_id/shoes/new(.:format)        shoes#new
#   edit_user_shoe GET    /users/:user_id/shoes/:id/edit(.:format)   shoes#edit
#        user_shoe GET    /users/:user_id/shoes/:id(.:format)        shoes#show
#                  PATCH  /users/:user_id/shoes/:id(.:format)        shoes#update
#                  PUT    /users/:user_id/shoes/:id(.:format)        shoes#update
#                  DELETE /users/:user_id/shoes/:id(.:format)        shoes#destroy
#            users GET    /users(.:format)                           users#index
#                  POST   /users(.:format)                           users#create
#         new_user GET    /users/new(.:format)                       users#new
#        edit_user GET    /users/:id/edit(.:format)                  users#edit
#             user GET    /users/:id(.:format)                       users#show
#                  PATCH  /users/:id(.:format)                       users#update
#                  PUT    /users/:id(.:format)                       users#update
#                  DELETE /users/:id(.:format)                       users#destroy

Rails.application.routes.draw do

  get '/login' => 'session#new'
  post '/session' => 'session#create'
  delete '/session' => 'session#destroy'

  root 'users#index'
  resources :users do
    resources :outfits
    resources :tops, :pants, :shoes
  end

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
