class PortfoliosController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
    @portfolios = Portfolio.all
  end

  def new 
    @portfolio = current_user.portfolios.new
  end
end
