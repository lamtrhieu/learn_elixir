defmodule Project1Web.PageController do
  use Project1Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
