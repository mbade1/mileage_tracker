class RunsController < ApplicationController

  get '/shoes/:id/runs' do
    @shoe = Shoe.find(params[:id])
    erb :'runs/runs'
  end

  patch '/runs/:id' do
    @shoe = Shoe.find(params[:id])
    @shoe.latest_run = params[:latest_run]
    @newest_run = (@shoe.current_mileage.to_i + @shoe.latest_run.to_i)
    @shoe.current_mileage = @newest_run
    if !@shoe.save
      erb :'runs/runs'
    else
      redirect to("/shoes/#{@shoe.id}")
    end
  end
end