Rails.application.routes.draw do

  root 'page#home'

  get 'page/home'
  get 'page/photo'
  get 'page/location'
  get 'page/riders'
  get 'page/contest'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
