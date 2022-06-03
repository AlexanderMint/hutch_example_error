require 'bundler'
Bundler.require(:default)

$LOAD_PATH << File.expand_path('lib', __dir__) 

class Consumer
  include Hutch::Consumer

  consume 'hutch.error'

  def process(*)
    require 'example'
    puts Example.new.call
  end
end

if ENV['HUTCH_RUN']
  Hutch.connect
  Hutch.publish('hutch.error', foo: :bar)
else
  Consumer.new.process 
end
