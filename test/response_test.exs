defmodule WeberHttpResponseTest do
  use ExUnit.Case

  test "SimpleResponse test" do
    {:ok, status, _, client} = :hackney.request(:get, 'http://localhost:8080/weber', [], <<>>, [])
    assert(status == 404)
  end

  test "GET /bins" do
    {:ok, status, _, client} = :hackney.request(:get, 'http://localhost:8080/elixir/trash/bins', [], <<>>, [])
    assert(status == 200)
  end

  test "GET /bins/123" do
    {:ok, status, _, client} = :hackney.request(:get, 'http://localhost:8080/elixir/trash/bins/123', [], <<>>, [])
    assert(status == 200)
  end

  test "GET /bins/new" do
    {:ok, status, _, client} = :hackney.request(:get, 'http://localhost:8080/elixir/trash/bins/new', [], <<>>, [])
    assert(status == 200)
  end

end
