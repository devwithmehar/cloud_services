class CloudsController < ApplicationController
  def index
    @cloud = Cloud.all
  end

  def show
  end
end
