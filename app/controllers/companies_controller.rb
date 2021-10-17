class CompaniesController < ApplicationController
  PER_PAGE= 10

  def index
    @page = params.fetch(:page,0).to_i
    @companies = Company.offset(@page * PER_PAGE).limit(PER_PAGE).order("name")
    @all_companies = Company.all
    @numberOfPages = @all_companies.count/PER_PAGE
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