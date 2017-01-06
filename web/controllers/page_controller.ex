defmodule MyMedia.PageController do
  require IEx
  use MyMedia.Web, :controller

  def index(conn, _params) do
    media_dir = "./priv/static/media"
    filtertype = [".flac",".wav"]
    {:ok, files} = File.ls(media_dir)
    filtered_files = IO.inspect Enum.filter(files, fn(file) ->String.ends_with?(file, filtertype) end)
    struct_files = IO.inspect Enum.map(filtered_files, fn(x) -> %MyMedia.Media{filename: x} end )
    render conn, "index.html", files: struct_files
  end

  def show(conn,  filename) do
    render conn, "show.html", filename: filename
  end
  #def show(conn, file) do
     #IO.inspect file
  #end
end
