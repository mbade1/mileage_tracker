class ShoesController < ApplicationController

    get '/shoes' do
        if logged_in?
            @shoes = current_user.shoes
            erb :'/shoes/index'
        else
            redirect to('/login')
        end
    end

    get '/shoes/new' do
        if logged_in?
          @current_user
          erb :'shoes/create_shoe'
        else
          redirect to('/login')
        end
      end

    post '/shoes' do
        if logged_in?
            @shoe = current_user.shoes.build(params)
            if !@shoe.save
              erb :'/shoes/create_shoe'
            else
              redirect to('/shoes')
            end
          else
            redirect to('/login')
          end
    end

    get '/shoes/:id' do
      @shoe = Shoe.find(params[:id])
      if logged_in? && @shoe.user == current_user
        erb :'shoes/show'
      else
        redirect to('/login')
      end
    end

    get '/shoes/:id/edit' do
      @shoe = Shoe.find(params[:id])
      if logged_in? && @shoe.user == current_user
        erb :'/shoes/edit'
      else
        redirect to('/login')
      end        
    end

    patch '/shoes/:id' do
      @shoe = Shoe.find(params[:id])
      @shoe.name = params[:name]
      @shoe.date = params[:date]
      @shoe.new_mileage = params[:new_mileage]
      @shoe.current_mileage = params[:current_mileage]
      @shoe.price = params[:price] 
      if !@shoe.save
        erb :'/shoes/edit'
      else
        redirect to("/shoes/#{@shoe.id}")
      end
    end

    delete '/shoes/:id/delete' do
      @shoe = Shoe.find(params[:id])
      if logged_in? && @shoe.user == current_user
        @shoe.destroy
        redirect to('/shoes')
      else
        redirect to('/login')
      end
    end

end




