Rails.application.routes.draw do

  get 'facebookusers/create'

  get 'facebookusers/destroy'

  root :to => 'sessions#login'

  get 'login',                :to => 'sessions#login'
  post 'login_attempt',       :to => 'sessions#login_attempt'
  post 'login_attempt_with_facebook', :to =>'sessions#login_attempt_with_facebook'
  post 'change_password',     :to => 'sessions#change_password'
  get 'reset_password',       :to => 'sessions#reset_password'
  post 'reset_pw',            :to => 'sessions#reset_pw'
  get 'logout',               :to => 'sessions#logout'
  get 'status',               :to => 'sessions#status'
  get 'home',                 :to => 'sessions#home'
  get 'profile',              :to => 'sessions#profile'
  get 'setting',              :to => 'sessions#setting'
  get 'payment',              :to => 'sessions#payment'
  post 'add_gender',          :to => 'sessions#add_gender'
  post 'choose_program',      :to => 'sessions#choose_program'
  post 'add_subscription',    :to => 'sessions#add_subscription'
  post 'remove_subscription', :to => 'sessions#remove_subscription'
  post 'profile_pic_upload',  :to => 'sessions#profile_pic_upload'
  get 'adminpage',            :to => 'admins#admin'
  post 'update_items',        :to => 'admins#update_items'
  post 'delete_items',        :to => 'admins#delete_items'
  post 'add_items',           :to => 'admins#add_items'
  post 'search_user',         :to => 'admins#search_user'
  get 'search_user',          :to => 'admins#search_user'
  post 'update_change_limit', :to => 'admins#update_change_limit'
  post 'update_coach',        :to => 'admins#update_coach'
  post 'delete_user',         :to => 'admins#delete_user'
  post 'select_coach',        :to => 'sessions#select_coach'
  get 'group_training',       :to => 'training#group_training'
  get 'bmi_calc',             :to => 'training#bmi_calc'
  get 'exercises_body',       :to => 'training#exercises_body'
  post 'calculate_bmi',       :to => 'training#calculate_bmi'
  post 'book_group',          :to => 'training#book_group'
  get 'my_booking',           :to => 'training#my_booking'
  post 'remove_booking',      :to => 'training#remove_booking'
  post 'pick_day',            :to => 'training#pick_day'
  get 'contact',              :to => 'sessions#contact'
  get 'review',               :to => 'sessions#review'
  get 'auth/:provider/callback', to: 'facebookusers#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'facebookusers#destroy', as: 'signout'

  resources :facebookusers, only: [:create, :destroy]


  resources :training
  resources :sessions
  resources :transactions, only: [:new, :create]
  resources :users, only: [:new, :create]



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
