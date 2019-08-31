class Api::ParamsController < ApplicationController

  def show
    @message = params[:user_input].upcase
    render 'show.json.jb'
  end

  def body_params
    name = params[:name_info]
    @message = "Your name is #{name}"
    render 'show.json.jb'
  end

end
