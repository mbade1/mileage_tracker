class RunsController < ApplicationController

    get '/shoes/:id/runs' do
        @shoe = Shoe.find(params[:id])
        binding.pry
        erb :'runs/runs'
    end

    patch '/runs/:id' do
        @shoe = Shoe.find(params[:id])
        @shoe.name = params[:name]
        @shoe.date = params[:date]
        @shoe.new_mileage = params[:new_mileage]
        @shoe.current_mileage = params[:current_mileage].update_mileage
        erb :'/runs/runs'
    end

    helpers do
        def update_mileage
            @shoe.current_mileage = params[:current_mileage]
            input = params[:latest_run]
            updated_mileage = @shoe.current_mileage - input
            @shoe.current_mileage = updated_mileage
            @shoe.current_mileage
        end
    end
end