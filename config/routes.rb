Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'voice_body' => 'application#voice_body'

  root to: 'application#home'
end
