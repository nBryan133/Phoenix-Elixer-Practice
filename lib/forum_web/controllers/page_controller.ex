defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do

    users = [
      %{id: 1, name: "Jan", email: "jan@gmail.com"},
      %{id: 2, name: "Greg", email: "greg@gmail.com"},
      %{id: 3, name: "Bill", email: "bill@gmail.com"}
    ]

    render(conn, :users, users: users, layout: false)
  end
end
