class SessionsController < ApplicationController

    def new

    end

    def create
        if user = User.authenticate(params[:email], params[:password])
            session[:user_id] = user.id
            flash[:notice] = 'Welcome back!'
            redirect_to(session[:intended_url] || user)
            session[:intended_url] = nil
        else
            flash.now[:alert] = 'Invalid password or username.'
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: 'Signed out!'
    end


end
