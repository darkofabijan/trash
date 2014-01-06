defmodule Route do

  import Weber.Route
  require Weber.Route

  route on("GET", "/", :Trash.Main, :index)
    |>  resources(:Trash.Bins)

end
