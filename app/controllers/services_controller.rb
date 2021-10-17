class ServicesController < ApplicationController
  def index
    @services = Service.includes(:cloud && :type).all.order("name")
  end

  def show
    @services = Service.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @services = Service.where("name LIKE ?", wildcard_search)
  end
end
