Rails.application.routes.draw do
  root 'static_pages#home'

  get 'background' => 'static_pages#background'

  get 'five_element_system' => 'static_pages#five_element_system'

  get 'fire' => 'five_elements#fire'

  get 'wood' => 'five_elements#wood'

  get 'earth' => 'five_elements#earth'

  get 'water' => 'five_elements#water'

  get 'metal' => 'five_elements#metal'

  get 'resources' => 'static_pages#resources'

  get 'contact' => 'static_pages#contact'

  get 'usage' => 'static_pages#usage'

  get 'tour1' => 'tour#page1'

  get 'tour2' => 'tour#page2'

  get 'tour3' => 'tour#page3'

  get 'tour4' => 'tour#page4'

  get 'signup' => 'users#new'

  get 'diagnosis' => 'diagnosis#new'

  get 'new_recommendation' => 'recommendations#new'

  get 'add_food' => 'foods#new'

  get 'login' => 'session#new'

  post 'login' => 'session#create'

  delete 'logout' => 'session#destroy'

  get 'food_recommendation' => 'recommendations#show'

  resources :users

  resources :foods

  resources :recommendations
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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
