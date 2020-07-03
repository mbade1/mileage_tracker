class RunsController < ApplicationController

    get '/shoes/:id/runs' do
        erb :'runs/runs'
    end
end