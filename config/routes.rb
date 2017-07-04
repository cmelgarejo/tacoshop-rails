Rails.application.routes.draw do
  resources  'tacos',  defaults: {format: :json}
  root to: 'welcome#index'
end
