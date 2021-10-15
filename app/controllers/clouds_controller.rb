class CloudsController < ApplicationController
  def index
    @clouds = Cloud.all
  end

  def show
    @cloud = Cloud.find(params[:id])
  end
end
