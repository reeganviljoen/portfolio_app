class SectionsController < ApplicationController
  def new
    portfolio = Portfolio.find(params[:portfolio_id])
    @section = portfolio.sections.new
  end

  def create 
    # binding.pry 
    portfolio = Portfolio.find(params[:portfolio_id])
    @section = portfolio.sections.create!(section_params)
    redirect_to portfolio
  end

  private
  def section_params
    params.require(:section).permit(:portfolio_id, :title, :body)
  end
end
