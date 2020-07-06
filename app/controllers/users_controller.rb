require 'rack-flash'

class UsersController < ApplicationController
  use Rack::Flash

  get '/signup' do
    if !session[:user_id]
      erb :'users/create_user'
    else
      redirect to('/shoes')
    end
  end

  post '/signup' do
    @user = User.new(params)
    if !@user.save
      flash[:message] = "Please fill in all fields correctly."
      erb :'users/create_user'
    else
      session[:user_id] = @user.id
      redirect to('/shoes')
    end
  end

  get '/login' do
    if !session[:user_id]
      erb :'users/login'
    else
      redirect to('/shoes')
    end
  end

  post '/login' do
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect to('/shoes')
    else
      flash[:message] = "Please fill in all fields correctly."
      erb :'users/login'
    end
  end

  get '/logout' do
    if logged_in?
      @user = current_user
      @user = nil
      session.destroy
      flash[:message] = "Logout successful. See you after your next run!"
      redirect to('/')
    else
      redirect to('/')
    end
  end
end