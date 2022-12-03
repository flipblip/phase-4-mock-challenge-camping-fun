class SignupsController < ApplicationController

    def create
        signup = Signup.create!(signup_params)
        render json: signup, status: :created
    end

    def
end
