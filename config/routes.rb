Rails.application.routes.draw do
  get 'authors/index'

  get 'chapters/index'
  
  get 'chapters/chap1'

  get 'chapters/chap2'

  get 'chapters/chap3'

  get 'chapters/chap4'

  get 'chapters/chap5'

  get 'chapters/chap6'

  get 'chapters/chap7'

  get 'chapters/chap8'

  get 'chapters/chap9'

  get 'chapters/chap10'

  get 'chapters/chap11'

  get 'chapters/chap12'

  get 'chapters/chap13'

  get 'chapters/chap14'

  get 'chapters/chap15'

  get 'chapters/chap16'

  get 'chapters/chap17'

  get 'chapters/chap18'

  get 'chapters/chap19'

  get 'chapters/chap20'

  get 'chapters/chap21'

  get 'chapters/chap22'

  get 'chapters/chap23'

  get 'chapters/chap24'

  get 'chapters/chap25'

  get 'chapters/chap26'

  get 'chapters/chap27'

  get 'chapters/chap28'

  get 'chapters/chap29'

  get 'chapters/chap30'

  get 'chapters/chap31'

  get 'chapters/chap32'

  get 'chapters/chap33'

  get 'chapters/chap34'

  get 'welcome/index'

  get 'welcome/news'

  get 'welcome/note'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  resources :authors 
  resources :chapters

  # You can have the root of your site routed with "root"
  root 'welcome#index'


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
