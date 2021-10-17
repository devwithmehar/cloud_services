class TypesController < ApplicationController
  def index
    @types = Type.all
  end

  def show
    @type = Type.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @types = Type.where("name LIKE ?", wildcard_search)
  end
end
