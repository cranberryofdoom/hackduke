Hackduke::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get '/', to: 'fall2014/static#index'

  get '/get-involved', to: 'fall2014/widgets#apply_team'
  get '/mentor-info', to: 'fall2014/widgets#mentor_info'
  get '/mentor-guidelines', to: 'fall2014/mentors#guidelines'
  get '/sponsor-guidelines', to: 'fall2014/sponsors#guidelines'
  get '/our-mentors', to: 'fall2014/mentors#our_mentors'
  get '/our-experts', to: 'fall2014/mentors#our_experts'
  get '/schedule', to: 'fall2014/events#index'

  resources :organizers, only: [:index], :controller => 'fall2014/organizers'

  constraints subdomain: 'www' do
    get '/', to: 'fall2014/static#index'
    get '/mentor-info', to: 'fall2014/widgets#mentor_info'
    get '/get-involved', to: 'fall2014/widgets#apply_team'
    get '/mentor-guidelines', to: 'fall2014/mentors#guidelines'
    get '/sponsor-guidelines', to: 'fall2014/sponsors#guidelines'
    get '/our-mentors', to: 'fall2014/mentors#our_mentors'
    get '/our-experts', to: 'fall2014/mentors#our_experts'

    resources :organizers, only: [:index], :controller => 'fall2014/organizers'
  end

  constraints subdomain: 'spring2014' do
    namespace :spring2014, path: '/' do
      root to: 'static#index'
      
      get '/gist', to: 'static#gist'
      get '/apply-team', to: 'widgets#apply_team'
      get '/mentor-info', to: 'widgets#mentor_info'
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
