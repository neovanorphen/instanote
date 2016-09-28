Rails.application.routes.draw do
  

  resources :posts

  resources :usuarios, as: :users , only:[:show,:update]



  devise_for :users, controllers:{
  	omniauth_callbacks: "users/omniauth_callbacks"
  }

  post "/custom_sign_up", to: "users/omniauth_callbacks#custom_sign_up"


  authenticated :user do
    root 'main#home'
  end

  unauthenticated :user do
    root 'main#unregistered'
  end

  #Mandar peticion a fb
  #facebook retorna  a la app callback_url
  #Procesar la info de fb
  #autenticar al usuario o crear uno nuevo


end
