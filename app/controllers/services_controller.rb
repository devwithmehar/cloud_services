class ServicesController < ApplicationController
  def index
    @services = Service.includes(:cloud && :type).all.order("name")
  end

  def show
    @services = Service.find(params[:id]);
  end
end
