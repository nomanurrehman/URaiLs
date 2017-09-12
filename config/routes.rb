Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # application root
  # url new action
  root 'urls#new'

  # generate devise routes using
  # devise route helper
  devise_for :users

  # generate dynamic short code url
  # to url show action
  get '/:code', to: 'urls#show', constraints: { code: /[\w-]{8}/ }

  # generate url resource routes
  # leave out edit/show/update action
  resources :urls, param: :code, except: [:edit, :show, :update]
end
