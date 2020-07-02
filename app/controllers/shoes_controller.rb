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
    end

    get '/shoes/:id/edit' do
        
    end

    patch '/shoes/:id' do
        
    end

    delete '/shoes/:id/delete' do
        
    end

end
