# defmodule Spread.Api.Huobi.ChunkProcess do
# defp process(orders, action, config, response) when length(orders) <= 10 do
#     new_response = action.(orders, config) |> handle_response()

#     response ++ new_response
#   end

#   defp process(orders, action, config, response) do
#     processings = List.take(orders, 10)
#     remains = orders -- processings

#     response = action.(processings, config) |> handle_response()
#     process(orders, action, response)
#   end

#   defp do_process(action, config) {
#     case action do
#       :add ->

#       end
#       :delete ->
#       end

#     end
#   }
# end
