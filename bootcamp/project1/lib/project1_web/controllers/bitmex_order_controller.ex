defmodule Bitmex.OrderController do
    use Project1Web, :controller

    def new(conn, _params) do
        render(conn, "new_order.html")
    end

    def create(conn, params) do 
        
        order = 
            BitmexService.createOrder(1, 8000, "Buy") |> Jason.decode!()
        
        # orderId = Map.get(order, "orderID")

        # IO.inspect("hieu hieu hieu" <> orderId)
        # OrderRepository.addOrder(order)
        # IO.puts order
        # text(conn, Jason.decode!(order))
        # conn
        # |> put_resp_content_type("application/json")
        # |> text(order)
        orderId = 1234
        redirect(conn, to: "/order/1234")

    end 

    def index(conn, _params) do
        IO.puts "go here 1234 "
        orders = BitmexService.getAllOrders()

        render(conn, "index.html")
    end

    def show(conn, params) do
        IO.inspect params
        orderId = 1234
        # order = OrderRepository.getOrder(orderId)
        # IO.puts Hieu Hieu Hieu <> order
        # IO.puts order
        render(conn, "index.html")
    end


    def delete(conn, _params) do 

    end

    def update(conn, _params) do
    end
end
