class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])

    @serviceUser = ServiceUser.where(company_id: @company)

    @serviceUser.each do |user|
      @services = Service.where(id: user.service_id)
    end

  end
end

