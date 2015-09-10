Hackduke::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
   constraints subdomain: 'www' do
    get '/', to: 'fall2015/static#index'
    get '/mentor-info', to: 'fall2015/widgets#mentor_info'
    get '/get-involved', to: 'fall2015/widgets#apply_team'
    get '/mentor-guidelines', to: 'fall2015/mentors#guidelines'
    get '/sponsor-guidelines', to: 'fall2015/sponsors#guidelines'
    get '/our-mentors', to: 'fall2015/mentors#our_mentors'
    get '/our-experts', to: 'fall2015/mentors#our_experts'
    get '/prizes', to: 'fall2015/prizes#index'
    get '/travel', to: 'fall2015/static#travel'
    get '/speakers', to: 'fall2015/static#speakers'
    get '/fun', to: 'fall2015/static#fun'
    get '/courses', to: 'fall2015/courses#index'
    get '/tech-talks', to: 'fall2015/events#tech_talks'
    get '/schedule', to: 'fall2015/events#index'
    
    resources :organizers, only: [:index], :controller => 'fall2015/organizers'
   end

 constraints subdomain: 'fall2014' do
     get '/', to: 'fall2014/static#index'
     get '/mentor-info', to: 'fall2014/widgets#mentor_info'
     get '/get-involved', to: 'fall2014/widgets#apply_team'
     get '/mentor-guidelines', to: 'fall2014/mentors#guidelines'
     get '/sponsor-guidelines', to: 'fall2014/sponsors#guidelines'
     get '/our-mentors', to: 'fall2014/mentors#our_mentors'
     get '/our-experts', to: 'fall2014/mentors#our_experts'
     get '/prizes', to: 'fall2014/prizes#index'
     get '/travel', to: 'fall2014/static#travel'
     get '/speakers', to: 'fall2014/static#speakers'
     get '/fun', to: 'fall2014/static#fun'
     get '/courses', to: 'fall2014/courses#index'
     get '/tech-talks', to: 'fall2014/events#tech_talks'
     get '/schedule', to: 'fall2014/events#index'
     
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
