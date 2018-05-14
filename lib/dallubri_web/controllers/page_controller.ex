defmodule DallubriWeb.PageController do
  use DallubriWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
