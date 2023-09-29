class Api::V1::MessagesController < ApplicationController
  include ActionController::MimeResponds
  def index
    @message = Greeting.order('RANDOM()').first

    respond_to do |format|
      format.json { render json: @message.message }
    end
  end
end
