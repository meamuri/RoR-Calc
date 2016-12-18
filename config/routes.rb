Rails.application.routes.draw do

  root 'calculator#index'

  get 'form/:type', to: 'calculator#form'
  get 'res/:value', to: 'calculator#res'
  get 'calc/:type/:a/:b', to: 'calculator#calc'

end
