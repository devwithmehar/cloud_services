class CompaniesController < ApplicationController
  def index
    @companies = Company.all.order("name")
  end

  def show
    @company = Company.find(params[:id])

    @serviceUser = ServiceUser.where(company_id: @company)

    @service_ids = @serviceUser.map{
      |p| p.service_id
    }

    @services = Service.where(id: @service_ids)



end

def search
  wildcard_search = "%#{params[:keywords]}%"
  @companies = Company.where("name LIKE ?", wildcard_search)
end

end