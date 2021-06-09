defmodule HogeWeb.PageController do
  use HogeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
