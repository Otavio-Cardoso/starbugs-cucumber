
require_relative './pages/home.rb'
require_relative './pages/checkout.rb'
require_relative './pages/components.rb'

Before do
   @home = HomePage.new
   @checkout = CheckoutPage.new
   @popup = PopUp.new
   @order = OrderPage.new
end
