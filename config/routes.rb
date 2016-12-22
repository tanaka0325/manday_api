Rails.application.routes.draw do
  resources 'poems', :except => [:new, :edit]
  match "poems/date/:date", :to => "poems#date", :via => :get

  resources 'reports', :except => [:new, :edit]
  match "reports/date/:date", :to => "reports#date", :via => :get

  resources 'tasks', :except => [:new, :edit]
  match "tasks/date/:date", :to => "tasks#date", :via => :get
end
