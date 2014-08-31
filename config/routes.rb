Hackduke::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  constraints subdomain: 'www' do
    get '/', to: 'spring2014/static#index'

    get '/gist', to: 'spring2014/static#gist'
    get '/apply-team', to: 'spring2014/widgets#apply_team'
    get '/our-mentors', to: 'spring2014/mentors#our_mentors'
    get '/our-experts', to: 'spring2014/mentors#our_experts'
    get '/mentor-guidelines', to: 'spring2014/mentors#guidelines'
    get '/brainstorm', to: 'spring2014/events#brainstorm'
    get '/tech-talks', to: 'spring2014/events#tech_talks'

    resources :mentors, only: [:index], :controller => 'spring2014/mentors'
    resources :events, only: [:index], :controller => 'spring2014/events'
    resources :media, only: [:index], :controller => 'spring2014/media'
    resources :winners, only: [:index], :controller => 'spring2014/winners'
    resources :maps, only: [:index], :controller => 'spring2014/maps'
    resources :courses, only: [:index], :controller => 'spring2014/courses'
    resources :prizes, only: [:index], :controller => 'spring2014/prizes'
    resources :faqs, only: [:index], :controller => 'spring2014/faqs'
    resources :partners, only: [:index], :controller => 'spring2014/partners'
    resources :sponsors, only: [:index], :controller => 'spring2014/sponsors'
    resources :organizers, only: [:index], :controller => 'spring2014/organizers'
  end

  constraints subdomain: 'spring2014' do
    namespace :spring2014, path: '/' do
      root to: 'static#index'
      
      get '/gist', to: 'static#gist'
      get '/apply-team', to: 'widgets#apply_team'

      resources :mentors, only: [:index]
      get '/our-mentors', to: 'mentors#our_mentors'
      get '/our-experts', to: 'mentors#our_experts'
      get '/mentor-guidelines', to: 'mentors#guidelines'

      resources :events, only: [:index]
      get '/brainstorm', to: 'events#brainstorm'
      get '/tech-talks', to: 'events#tech_talks'

      resources :media, only: [:index]
      resources :winners, only: [:index]
      resources :maps, only: [:index]
      resources :courses, only: [:index]
      resources :prizes, only: [:index]
      resources :faqs, only: [:index]
      resources :partners, only: [:index]
      resources :sponsors, only: [:index]
      resources :organizers, only: [:index]
    end
  end

  constraints subdomain: 'fall2013' do
    namespace :fall2013, path: '/' do
      root to: 'static#index'
    end
  end
end
