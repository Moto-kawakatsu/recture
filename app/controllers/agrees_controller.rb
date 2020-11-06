class AgreesController < ApplicationController

    def create
        @agree = current_user.agrees.create(comment_id: params[:comment_id])
        redirect_back(fallback_location: root_path)
      end
    
      def destroy
          @comment = Comment.find(params[:comment_id])
          @agree = current_user.agrees.find_by(comment_id: @comment.id)
          @agree.destroy
          redirect_back(fallback_location: root_path)
      end
  
    private
  
      def agree_params
        params.require(:agree).permit(
          :comment_id, 
          :user_id, 
        ).merge(user_id: current_user.id, comment_id: params[:comment_id])
      end
  
end
