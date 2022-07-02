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

  def edit 
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])

    if @section.update(section_params)
      redirect_to @section.portfolio
    else
      render :edit, status: :unprocessable_entity
    end

  end

  private
  def section_params
    params.require(:section).permit(:title, :content)
  end
end
