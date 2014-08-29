Hackduke::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  constraints subdomain: 'spring2014' do
    namespace :spring2014, path: '/' do
      root to: 'static#index'
      
      get '/gist', to: 'static#gist'
      get '/apply-team', to: 'widgets#apply_team'
    
      resources :mentors
      get '/our-mentors', to: 'mentors#our_mentors'
      get '/our-experts', to: 'mentors#our_experts'

      resources :events
      get '/brainstorm', to: 'events#brainstorm'
      get '/tech-talks', to: 'events#tech_talks'

      resources :media
      resources :winners
      resources :maps
      resources :courses
      resources :prizes
      resources :faqs
      resources :partners
      resources :sponsors
      resources :organizers
    end
  end

  constraints subdomain: 'fall2013' do
    namespace :fall2013, path: '/' do
      root to: 'static#index'
    end
  end
end
