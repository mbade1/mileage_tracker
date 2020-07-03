class RunsController < ApplicationController

    get '/shoes/:id/runs' do
        @shoe = Shoe.find(params[:id])
        erb :'runs/runs'
    end

    patch '/runs/:id' do
        @shoe = Shoe.find(params[:id])
        @shoe.name = params[:name]
        @shoe.date = params[:date]
        @shoe.new_mileage = params[:new_mileage]
        @shoe.current_mileage = params[:current_mileage]
            input = gets.strip
            previous_mileage = @shoe.current_mileage
            @shoe.current_mileage = (previous_mileage + input)
        @shoe.current_mileage
        erb :'/runs/runs'
    end
end