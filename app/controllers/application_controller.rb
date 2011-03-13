class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end

  def increment_hits
    hits = session[:user_hits]
    if hits.nil?
      hits = 1
      session[:user_hits] = hits;
    else
      session[:user_hits] = hits + 1
    end
    session[:user_hits]
  end

  def reset_hits
    session[:user_hits] = 0
  end
end
