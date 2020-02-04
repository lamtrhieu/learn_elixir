defmodule Bitmex.OrderController do
    use Project1Web, :controller

   def create(conn, _params) do 

    IO.puts "Test 123432"
    BitmexService.createOrder(1, 8000, "Buy")
    json(conn, %{:name => "Hieu", :age => 35})
   end 
end
