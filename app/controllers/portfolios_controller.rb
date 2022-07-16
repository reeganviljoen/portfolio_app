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

    redirect_to root_path
  end

  def show 
    @portfolio = Portfolio.find(params[:id])
  end
  
  private
  def portfolio_params
    params.require(:portfolio).permit(:title, :thumbnail)
  end
end
