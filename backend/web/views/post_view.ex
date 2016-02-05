defmodule Backend.PostView do
  use Backend.Web, :view

  def render("index.json", %{posts: posts}) do
    %{posts: render_many(posts, Backend.PostView, "post.json")}
  end

  def render("show.json", %{post: post}) do
    %{post: render_one(post, Backend.PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      title: post.title,
      content: post.content,
      author: post.author}
  end
end
