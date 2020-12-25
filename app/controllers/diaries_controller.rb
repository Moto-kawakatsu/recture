class DiariesController < ApplicationController
    def index
    end

    def new
    end

    private

    def diary_params
        params.require(:diary).permit(:writing).merge(user_id: current_user.id)
    end
end
