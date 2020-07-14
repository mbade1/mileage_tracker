class RunsController < ApplicationController

  get '/shoes/:id/runs' do
    @shoe = Shoe.find(params[:id])
    erb :'runs/runs'
  end

  post '/shoes/:id' do
    @shoe = Shoe.find(params[:id])
    @runs = Run.create
    @runs.date = params[:date]
    @runs.location = params[:location]
    @runs.miles_run = params[:miles_run]
    @runs.shoe_id = @shoe.id
    if logged_in?
      @newest_run = (@shoe.current_mileage.to_i + @runs.miles_run.to_i)
      @shoe.current_mileage = @newest_run
      @runs.save
      flash[:message] = "A NEW RUN HAS BEEN LOGGED"
      redirect to("/shoes/#{@shoe.id}")
    else
      redirect to("/login")
    end
  end
end