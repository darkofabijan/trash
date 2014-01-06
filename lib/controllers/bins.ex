defmodule Trash.Bins do

  def index([], _conn) do
    {:render, [], []}
  end

  def new([], _conn) do
    {:render, [], []}
  end

  def show([id: id], _conn) do
    {:render, [id: id], []}
  end

end
