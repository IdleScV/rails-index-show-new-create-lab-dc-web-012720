class CouponsController < ActionController::Base



    def index
        @coupon = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
        @coupon = Coupon.new
    end

    def create
        @coupon = Coupon.create(coupon_params)
        redirect_to coupon_path(@coupon)
    end

    def coupon_params
        params.require(:coupon).permit(:coupon_code, :store)
    end

  end
  