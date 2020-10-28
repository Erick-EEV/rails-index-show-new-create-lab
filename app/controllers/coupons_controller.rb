class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
    render "index"
  end

  def show
    @coupon = Coupon.find(params[:id])
    render "show"
  end

  def new
  end

  def create
  end
end
