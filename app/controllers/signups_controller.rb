class SignupsController < ApplicationController
    
    def gracias
    end
    
    def new
        @signup = Signup.new
    end
    
    def create
        @signup = Signup.new(signup_params)
        if @signup.save
            redirect_to(:action => 'gracias')
        end
    end
    
    private
    def signup_params
        params.require(:signup).permit(:email)
    end
    
end
