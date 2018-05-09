defmodule SuperteamsRumbl.UserView do
  use SuperteamsRumbl.Web, :view
  alias SuperteamsRumbl.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
