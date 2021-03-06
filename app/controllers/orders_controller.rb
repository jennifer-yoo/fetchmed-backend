class OrdersController < ApplicationController

    def index
        @orders = Order.all
    end

    def show
        @order = Order.find(params[:id])
    end

    def create
        @order = Order.create(order_params)
        if @order.valid?
            @order.save
        else
            render json: { error: 'invalid order, try again' }
        end
    end

    def edit
        order = Order.find(params[:id])
        order.update(order_params)
    end

    def destroy
        order = order.find(params[:id])
        order.destroy
    end

    private

    def order_params
        params.require(:order).permit(:user_id, :medication_id)
    end

end
