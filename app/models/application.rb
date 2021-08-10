require 'json'
require 'pry'

class Application
  def call(_env)
    resp = Rack::Response.new
    req = Rack::Request.new

    if req.path.match(/events/) && req.get?
      return [200, { 'Content-type' => 'application/json' }, { message: 'success' }.to_json]
    else
      resp.write '404 Page not found'
    end

    resp.finish
  end
end
