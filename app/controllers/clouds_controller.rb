class CloudsController < ApplicationController
  def index
    @clouds = Cloud.all
  end

  def show
    @cloud = Cloud.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @clouds = Cloud.where("name LIKE ?", wildcard_search)
  end
end
