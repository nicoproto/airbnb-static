Rails.application.routes.draw do
  get '/', to: 'flats#index'
  get '/flats/:id', to: 'flats#show', as: :flat
end
