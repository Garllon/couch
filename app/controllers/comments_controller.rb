class CommentsController < ApplicationController
  def new
    @appointment = Appointment.find(params[:appointment_id])
    @comment = Comment.new
  end

  def create
    appointment = Appointment.find(params[:appointment_id])
    comment = appointment.comments.new(comment_parameters)
    comment.save

    redirect_to appointment_path(appointment)
  end

  def comment_parameters
    params.require(:comment).permit(:text)
  end
end
