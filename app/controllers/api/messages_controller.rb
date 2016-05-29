class Api::MessagesController < ApiController

  skip_before_action :authenticate_request, only: :create

  def create
    @obj = Message.new(obj_params)
    if @obj.save
      render json: {success: true}
    else
    render json:{ message: 'Error', errors: @obj.errors.full_messages}, status: 422
    end
  end

  private

  def obj_params
    params.require(:message).permit(*%i(
      email
      content
    ))
  end

end
