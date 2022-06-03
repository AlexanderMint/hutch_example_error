#### Example:

``` bash
$ ruby ./consumer.rb

=> success
```

but if you run through the Hutch:

``` bash
$ HUTCH_RUN=1 bundle exec hutch --require consumer.rb

#<Thread:0x0000000104ac8fc8 /Users/user/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/bunny-2.19.0/lib/bunny/consumer_work_pool.rb:101 run> terminated with exception (report_on_exception is true):
/Users/user/Code/tmp/hutch_example_error/consumer.rb:12:in `require': cannot load such file -- example (LoadError)
	from /Users/user/Code/tmp/hutch_example_error/consumer.rb:12:in `process'
	from /Users/user/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hutch-1.1.1/lib/hutch/tracers/null_tracer.rb:10:in `handle'
	from /Users/user/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hutch-1.1.1/lib/hutch/worker.rb:73:in `handle_message'
	from /Users/user/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hutch-1.1.1/lib/hutch/worker.rb:55:in `block in setup_queue'
	from /Users/user/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/bunny-2.19.0/lib/bunny/consumer.rb:56:in `call'
	from /Users/user/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/bunny-2.19.0/lib/bunny/channel.rb:1768:in `block in handle_frameset'
	from /Users/user/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/bunny-2.19.0/lib/bunny/consumer_work_pool.rb:108:in `block (2 levels) in run_loop'
	from /Users/user/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/bunny-2.19.0/lib/bunny/consumer_work_pool.rb:103:in `loop'
	from /Users/user/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/bunny-2.19.0/lib/bunny/consumer_work_pool.rb:103:in `block in run_loop'
	from /Users/user/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/bunny-2.19.0/lib/bunny/consumer_work_pool.rb:102:in `catch'
	from /Users/user/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/bunny-2.19.0/lib/bunny/consumer_work_pool.rb:102:in `run_loop'
```