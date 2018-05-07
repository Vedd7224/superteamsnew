defmodule Superteams.HelloController do
  use Superteams.Web, :controller

  def world(conn, %{"name" => name}) do
    render conn, "world.html", name: name
  end
end
