Rails.application.routes.draw do

  root 'calculator#index'

  get 'form/:type', to: 'calculator#form'
  get 'result/:type/:a/:b', to: 'calculator#res'
  get 'res', to: 'calculator#res'
  # get 'form/:type', to: 'calculator#form'
  # get 'form_div', to: 'calculator#form_div'
  # get 'form_mult', to: 'calculator#form_mult'
  # get 'form_sin', to: 'calculator#form_sin'
  # get 'form_pow', to: 'calculator#form_pow'
  # get 'form_sqrt', to: 'calculator#form_sqrt'
  #
  # post 'add', to: 'calculator#add'
  # post 'sub', to: 'calculator#sub'
  # # post 'div', to: 'calculator#div'
  # # post 'mult', to: 'calculator#mult'
  # # post 'sin', to: 'calculator#sin'
  # # post 'pow', to: 'calculator#pow'
  # # post 'sqrt', to: 'calculator#sqrt'

end
