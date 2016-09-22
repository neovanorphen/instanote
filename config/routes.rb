Rails.application.routes.draw do
  

  devise_for :users, controllers:{
  	omniauth_callbacks: "users/omniauth_callbacks"
  }

  post "/custom_sign_up", to: "users/omniauth_callbacks#custom_sign_up"

  root 'main#home'

  #Mandar peticion a fb
  #facebook retorna  a la app callback_url
  #Procesar la info de fb
  #autenticar al usuario o crear uno nuevo


end
