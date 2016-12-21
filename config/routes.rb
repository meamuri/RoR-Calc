Rails.application.routes.draw do

  root 'calculator#index'

  get 'form/:type', to: 'calculator#form'
  get 'res/:value', to: 'calculator#res'
  get 'calc/:type/:a/:b', to: 'calculator#calc'
  get 'calc/', to: 'calculator#calc'
  get 'go404/', to: 'calculator#go404'
  get '/*path', to: 'calculator#go404'
end
