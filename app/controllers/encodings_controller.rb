class EncodingsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @message = Caesar.encode('R', 'CAESAR')
  end

  def new
  end

  def show
    @message = Caesar.encode(params[:shift], params[:message])
  end
end
