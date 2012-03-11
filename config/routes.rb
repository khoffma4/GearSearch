Gearsearch::Application.routes.draw do
 root to: "search#home"
 get "/results" => "search#results"


end
