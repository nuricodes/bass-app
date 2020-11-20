Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :albums

# shows the all the albums
root 'albums#index'

# shows the tracks in the albums on the show 
def show
  @album = Album.find(params[:id])
  @tracks = @album.tracks
end

end
