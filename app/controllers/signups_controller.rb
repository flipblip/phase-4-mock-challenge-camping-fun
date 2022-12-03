class SignupsController < ApplicationController

    def create
        signup = Signup.create!(signup_params)
        render json: signup, status: :created
    end

    private

    def signup_params
        params.permit(:activity_id, :camper_id, :time)
    end

    def render_unprocessable_entity_response(exception)
        render json: {errors: [exception.record.errors]}, status: :unprocessable_entity
    end
end
