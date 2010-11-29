class TimestampMiddleware

  def initialize(app)
    @app = app
  end

  def call(env)
    status, header, @response = @app.call(env)
    File.open('foo.txt', 'w+') do |f|
      f.write(Time.now)
    end

    [status, header, self]
  end

  # the block takes some text to output to the body
  def each(&block)
    block.call("<!-- #{Time.now} -->\n")
    @response.each(&block)
  end
end
