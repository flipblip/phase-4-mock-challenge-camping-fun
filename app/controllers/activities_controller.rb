class ActivitiesController < ApplicationController

    def index
        render json: Activity.all, status: :ok
    end

    def destroy
        activity = Activity.find_by(id:params[:id])
        if activity
            activity.destroy
            head :no_content
        else
            render json: {error: "Activity not found"},
            status: :not_found
        end
    end
end
