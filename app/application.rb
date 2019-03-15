class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path =="/items/"
      @@items.find do |item|
        binding.pry
        resp.write item.price
      end
    else
        resp.write "Route not found"
        resp.status = 404
    end



    resp.finish
  end


end
