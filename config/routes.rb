Rails.application.routes.draw do
  
  resources :musician do
    resources :song
  end
  
  root 'musician#index'
end


#   Prefix Verb   URI Pattern                                      Controller#Action
#     musician_songs GET    /musicians/:musician_id/songs(.:format)          songs#index
#                    POST   /musicians/:musician_id/songs(.:format)          songs#create
#  new_musician_song GET    /musicians/:musician_id/songs/new(.:format)      songs#new
# edit_musician_song GET    /musicians/:musician_id/songs/:id/edit(.:format) songs#edit
#      musician_song GET    /musicians/:musician_id/songs/:id(.:format)      songs#show
#                    PATCH  /musicians/:musician_id/songs/:id(.:format)      songs#update
#                    PUT    /musicians/:musician_id/songs/:id(.:format)      songs#update
#                    DELETE /musicians/:musician_id/songs/:id(.:format)      songs#destroy
#          musicians GET    /musicians(.:format)                             musicians#index
#                    POST   /musicians(.:format)                             musicians#create
#       new_musician GET    /musicians/new(.:format)                         musicians#new
#      edit_musician GET    /musicians/:id/edit(.:format)                    musicians#edit
#           musician GET    /musicians/:id(.:format)                         musicians#show
#                    PATCH  /musicians/:id(.:format)                         musicians#update
#                    PUT    /musicians/:id(.:format)                         musicians#update
#                    DELETE /musicians/:id(.:format)                         musicians#destroy
#               root GET    /                                                musicians#index