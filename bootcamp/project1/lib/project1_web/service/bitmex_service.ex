defmodule BitmexService do
    @apiKey "Qt6b6UuphcR7cVNDBm_wXZZR"
    @apiSecret "vStZDeYUFLI1yiAx9Nq5ePDiuvYnJb-18RtVO8LDcSHLt2jg"
    @bitmexApiURL  "https://testnet.bitmex.com"

    

    # plug Tesla.Middleware.BaseUrl, "https://www.bitmex.com/api/v1"
    # plug Tesla.Middleware.JSON
    # plug Tesla.Middleware.Headers, [{"Content-Type", "application/json"}, {"Accept", "application/json"}]

    def createOrder(quantity, price, side) do
        verb = "POST"
        path = "/api/v1/order"
        data = %{
            symbol: "XBTUSD",
            orderQty: quantity,
            price: price,
            ordType: "Limit",
            side: side
        }

        

        url = @bitmexApiURL <> path
        headers = getHeaders(verb, path, data)

        # {:ok, %HTTPoison.Response{status_code: 200, body: body}} = 
        HTTPoison.post(url, Jason.encode!(data), headers) |> IO.inspect()
    end

    def getHeaders(verb, path, data) do
        expires = DateTime.utc_now() 
            |> DateTime.add(120, :second) 
            |> DateTime.to_unix()
        message = verb <> path <> Integer.to_string(expires) <> Jason.encode!(data)
        signature = Base.encode16(:crypto.hmac(:sha256, @apiSecret, message), [case: :lower])

        %{
            "Content-Type" => "application/json",
            "Accept" => "application/json", 
            "api-expires" => expires,
            "api-key" => @apiKey,
            "api-signature" => signature
        }
    end

end