defmodule FirestormPrototype.PageController do
  use FirestormPrototype.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
