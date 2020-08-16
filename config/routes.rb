Rails.application.routes.draw do
  #---------------------------------------------------

    devise_for :masters, controllers: {
        sessions:      'masters/sessions',
        passwords:     'masters/passwords',
        registrations: 'masters/registrations'
    }
#---------------------------------------------------

    devise_for :admins, controllers: {
        sessions:      'admins/sessions',
        passwords:     'admins/passwords',
        registrations: 'admins/registrations'
    }

#---------------------------------------------------


root 'homes#top'





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
