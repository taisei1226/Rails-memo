Rails.application.routes.draw do
  root "regs#index"
  resources :regs
end
