class Middleware

  def initialize(app)
    @app = app
  end

  def call(env)
    status, header, body = @app.call(env)
    File.open('foo.txt', 'w+') do |f|
      f.write(Time.now)
    end

    [status, header, body]
  end

end
