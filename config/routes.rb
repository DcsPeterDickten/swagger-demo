Rails.application.routes.draw do
  # DISCLAIMER: Quick and dirty routes to to demonstrate Swagger-UI:

  get 'sessions' => 'swagger#sessions'
  post 'sessions' => 'swagger#sessions'
  delete 'sessions/:token' => 'swagger#sessions', param: :token

  post 'products' => 'swagger#demo'
  get 'products' => 'swagger#demo'
  get 'products/:id' => 'swagger#demo'
  get 'products/:id/details' => 'swagger#demo'
  patch 'products/:id' => 'swagger#demo'
  delete 'products/:id' => 'swagger#demo'

  post 'cart/:id' => 'swagger#demo'
  patch 'cart/:id' => 'swagger#demo'
  delete 'cart/:id' => 'swagger#demo'
  get 'cart' => 'swagger#demo'

  if Rails.env.development?
    patch 'dev/reset_db' => 'swagger#demo'
  end
end
