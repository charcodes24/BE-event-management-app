require_relative "./config/environment.rb"

use Rack::Cors do 
    allow do
        origin '*'
        resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete]
    end
end

run Application.new

