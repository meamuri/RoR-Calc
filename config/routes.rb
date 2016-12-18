Rails.application.routes.draw do
  get 'calculator/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'calculator#index'
  get 'form_add', to: 'calculator#form_add'
  get 'form_sub', to: 'calculator#form_sub'
  get 'form_div', to: 'calculator#form_div'
  get 'form_mult', to: 'calculator#form_mult'
  get 'form_sin', to: 'calculator#form_sin'
  get 'form_pow', to: 'calculator#form_pow'
  get 'form_sqrt', to: 'calculator#form_sqrt'
end
