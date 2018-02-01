defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def fib_method(conn, _params) do
    render conn, "fib.html"
  end

  def fib_search(conn, params) do
    conn |> redirect(to: "/fibonacci/number/#{params["search"]["number"]}") |> halt()
  end

  def fib_number(conn, _params) do
    render conn, "fib_calc.html"
  end
end
