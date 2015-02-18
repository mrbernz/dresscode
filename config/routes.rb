# Prefix Verb   URI Pattern                 Controller#Action
#       login GET    /login(.:format)            session#new
#     session POST   /session(.:format)          session#create
#             GET    /session(.:format)          session#show
#             DELETE /session(.:format)          session#destroy
#        root GET    /                           users#index
#       users GET    /users(.:format)            users#index
#             POST   /users(.:format)            users#create
#    new_user GET    /users/new(.:format)        users#new
#   edit_user GET    /users/:id/edit(.:format)   users#edit
#        user GET    /users/:id(.:format)        users#show
#             PATCH  /users/:id(.:format)        users#update
#             PUT    /users/:id(.:format)        users#update
#             DELETE /users/:id(.:format)        users#destroy
#     outfits GET    /outfits(.:format)          users/outfits#index
#             POST   /outfits(.:format)          users/outfits#create
#  new_outfit GET    /outfits/new(.:format)      users/outfits#new
# edit_outfit GET    /outfits/:id/edit(.:format) users/outfits#edit
#      outfit GET    /outfits/:id(.:format)      users/outfits#show
#             PATCH  /outfits/:id(.:format)      users/outfits#update
#             PUT    /outfits/:id(.:format)      users/outfits#update
#             DELETE /outfits/:id(.:format)      users/outfits#destroy
#        tops GET    /tops(.:format)             users/tops#index
#             POST   /tops(.:format)             users/tops#create
#     new_top GET    /tops/new(.:format)         users/tops#new
#    edit_top GET    /tops/:id/edit(.:format)    users/tops#edit
#         top GET    /tops/:id(.:format)         users/tops#show
#             PATCH  /tops/:id(.:format)         users/tops#update
#             PUT    /tops/:id(.:format)         users/tops#update
#             DELETE /tops/:id(.:format)         users/tops#destroy
#       pants GET    /pants(.:format)            users/pants#index
#             POST   /pants(.:format)            users/pants#create
#    new_pant GET    /pants/new(.:format)        users/pants#new
#   edit_pant GET    /pants/:id/edit(.:format)   users/pants#edit
#        pant GET    /pants/:id(.:format)        users/pants#show
#             PATCH  /pants/:id(.:format)        users/pants#update
#             PUT    /pants/:id(.:format)        users/pants#update
#             DELETE /pants/:id(.:format)        users/pants#destroy
#       shoes GET    /shoes(.:format)            users/shoes#index
#             POST   /shoes(.:format)            users/shoes#create
#    new_shoe GET    /shoes/new(.:format)        users/shoes#new
#   edit_shoe GET    /shoes/:id/edit(.:format)   users/shoes#edit
#        shoe GET    /shoes/:id(.:format)        users/shoes#show
#             PATCH  /shoes/:id(.:format)        users/shoes#update
#             PUT    /shoes/:id(.:format)        users/shoes#update
#             DELETE /shoes/:id(.:format)        users/shoes#destroy

Rails.application.routes.draw do

  get '/login' => 'session#new'
  post '/session' => 'session#create'
  get '/session' => 'session#show'
  delete '/session' => 'session#destroy'

  root 'users#index'
  resources :users
  scope module: 'users' do
    resources :outfits, :tops, :pants, :shoes
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
