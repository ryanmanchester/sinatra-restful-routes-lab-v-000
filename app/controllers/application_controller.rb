require 'pry'
class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/recipes' do

    #@recipe = Recipe.all

    erb :index
  end

  get '/recipes/:id' do
    @recipe = Recipe.find_by(:id=> params[:id])
    erb :show
  end

  get '/recipes/new' do
    erb :new
  end
end
