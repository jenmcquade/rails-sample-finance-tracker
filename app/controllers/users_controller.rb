class UsersController < ApplicationController
  def my_portfolio
    @tracked_stocks = current_user.stocks
  end

  def my_friends
    @friends = current_user.friends
  end

  def search
    render json: params[:friend]
  end

  private

  def js_response (alert)
    flash.now[:alert] = alert unless alert.nil?
    respond_to do |format|
      format.js { render partial: 'users/stock_result' }
    end
  end

end
