Rails.application.routes.draw do
  #---------------------------------------------------

    devise_for :masters, controllers: {
        sessions:      'masters/sessions',
        passwords:     'masters/passwords',
        registrations: 'masters/registrations'
    }

    devise_scope :masters do
        get 'masters/sign_in' => ',masters/sessions#create'
        get 'masters/sign_out' => 'masters/sessions#destroy'
    end

#---------------------------------------------------

    devise_for :admins, controllers: {
        sessions:      'admins/sessions',
        passwords:     'admins/passwords',
    }

    devise_scope :admins do
        get 'admins/sign_in' => 'admins/sessions#create'
        get 'admins/sign_out' => 'admins/sessions#destroy'
    end

#---------------------------------------------------


root 'homes#top'





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
