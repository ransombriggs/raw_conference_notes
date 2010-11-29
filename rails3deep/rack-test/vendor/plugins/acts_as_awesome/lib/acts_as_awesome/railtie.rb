module ActsAsAwesome
  class Railtie < Rails::Railtie
    railstie_name :acts_as_awesome
  end

  rake_tasks do
    load 'task.rb'
  end

  initializer 'acts_as_awesome_setup' do
    class Object
      def self.foo
        'bar'
      end
    end
  end
end
