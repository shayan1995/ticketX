class ChargesController < ApplicationController

  def new
    @amount = Event.find(params[:id]).price
    @name = Event.find(params[:id]).name
  end

  def create
    # Amount in cents
    e = Event.find(params[:id])
    @amount = e.price

    customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => (@amount*100).to_i,
        :description => 'Rails Stripe customer',
        :currency    => 'usd'
    )
    order = Order.create(
      :user => current_user,
      :event => e
    )
    order.save

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
