require 'rack/lobster'

map '/health' do
  health = proc do |env|
    [200, { "Content-Type" => "text/html" }, ["1"]]
  end
  run health
end

map '/lobster' do
  run Rack::Lobster.new
end

map '/' do
  welcome = proc do |env|
    [200, { "Content-Type" => "text/html" }, ["<!doctype html>
<html lang=\"en\">
<body>
  <h1>Ham Biscuit!</h1>
</body>
</html>
"]]
  end
  run welcome
end
