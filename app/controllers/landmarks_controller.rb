class LandmarksController < ApplicationController
  # add controller methods

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  get '/landmarks/new' do
    @landmarks = Landmark.all
    erb :'landmarks/new'
  end

  post '/landmarks' do
    # binding.pry
    @landmark = Landmark.create(params[:landmark])
    erb ":landmarks/#{@landmark.id}"
  end

  get '/landmarks/:id'
  @landmark = Landmark.find(params[:id])
  erb :'landmarks/show'
  end

end
