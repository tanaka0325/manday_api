Rails.application.routes.draw do
  resources 'poems', :except => [:new, :edit]
  resources 'reports', :except => [:new, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
