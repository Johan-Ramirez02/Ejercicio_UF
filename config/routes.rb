Rails.application.routes.draw do
          get 'by_date/:date', to: 'ufs#by_date' #para ver la fecha
          get 'by_name/:name', to: 'clients#by_name'
          get 'solicitud_al_servidor/:name', to: 'send#metodoget' #para ver las veces del cliente


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
