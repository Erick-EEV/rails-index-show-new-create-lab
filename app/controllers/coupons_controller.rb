class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
    render "index"
  end

  def show
    id = params[:id]
    @coupon = Coupon.find(id)
    render "show"
  end

  def new
    render "new"
  end

  def create
    coupon_code = params[:coupon_code]
    store = params[:store]
    new_coupon = Coupon.create(coupon_code: coupon_code, store: store)

    redirect_to coupon_path(new_coupon.id)
  end
end
