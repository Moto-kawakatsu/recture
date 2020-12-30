class TipsController < ApplicationController
    def questions
    end

    def list
        @users = User.all
    end

    def hours
    end

end
