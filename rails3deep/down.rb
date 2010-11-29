class Down
  def call(env)
    [200, {'Content-Type' => 'html'}, 'down']
  end
end

