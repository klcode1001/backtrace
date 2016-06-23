# backtrace-sandbox
Sample app for http://ja.stackoverflow.com/questions/26959/

## How to setup

````
$ bundle install
$ bin/rake db:setup
$ rails s
````

## How to run test

````
$ bin/rake test
Running via Spring preloader in process 28086
Run options: --seed 1642

# Running:

E

Finished in 0.295680s, 3.3820 runs/s, 6.7641 assertions/s.

  1) Error:
BestAnswersTest#test_best_answer:
ActiveRecord::AssociationTypeMismatch: Comment(#70357842368040) expected, got String(#70357831032940)
    app/controllers/best_answers_controller.rb:4:in `best'
    test/integration/best_answers_test.rb:18:in `block in <class:BestAnswersTest>'

1 runs, 2 assertions, 0 failures, 1 errors, 0 skips
````

Thant's okay. Please fix the error!

## License

MIT License.