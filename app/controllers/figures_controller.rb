class FiguresController < ApplicationController
  # add controller methods
  get '/figures/new' do
    @landmarks = Landmark.all
    @titles = Title.all
    erb :'figures/new'
  end

  post '/figures/new' do
    @figure = Figure.create(name: params[:figure][:name])
    params[:figure][:title_ids].each do |id|
      @figure.titles << Title.find_or_create_by(id)
    end
    @figure.save
    # binding.pry
    erb :'figures/show'
  end
end
