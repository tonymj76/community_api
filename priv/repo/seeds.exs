# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     CommunityApi.Repo.insert!(%CommunityApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias CommunityApi.News.Link
alias CommunityApi.Repo

%Link{url: "http://community.com", description: "my community vast"} |> Repo.insert
%Link{url: "git://github.com", description: "github community"} |> Repo.insert
