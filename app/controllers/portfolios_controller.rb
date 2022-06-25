class PortfoliosController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
    @portfolios = Portfolio.all
  end

  def new 
    @portfolio = current_user.portfolios.new
  end

  def create
    @portfolio = current_user.portfolios.create!(portfolio_params)

    redirect_to portfolios_path
  end
  
  private
  def portfolio_params
    params.require(:portfolio).permit(:title)
  end
end
