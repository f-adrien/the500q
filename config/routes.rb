Rails.application.routes.draw do
  devise_for :users
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: "pages#home"
get 'load_question', to: "pages#load_question"

# admin methods

get 'admin', to: "admin#show"
post 'admin/import', to: "admin#import"
end
