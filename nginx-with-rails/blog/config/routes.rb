Rails.application.routes.draw do
  get '/hello', to: 'hellos#index'
end
