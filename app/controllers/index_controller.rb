class App < Sinatra::Application

  get '/' do
    #flash[:notice] = "Sample Flash"
    return "Here"
  end

end
