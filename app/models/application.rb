require 'json'
require 'pry'

class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/events/) && req.get?
      return [200, { 'Content-type' => 'application/json' }, [{ events: Event.render_events, categories: Category.render_categories, message: 'success' }.to_json]]
    #do you want to fetch all categories and tasks at the same time, or do you want to 
    #have two different routes for them?
    else
      resp.write '404 Page not found'
    end

    resp.finish
  end
end
