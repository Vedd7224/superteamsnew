defmodule SuperteamsRumbl.UserController do
  use SuperteamsRumbl.Web, :controller

  def index(conn, _params) do
    users = Repo.all(SuperteamsRumbl.User)
    render conn, "index.html", users: users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(SuperteamsRumbl.User, id)
    render conn, "show.html", user: user
  end
end
