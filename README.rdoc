# TEST PROJECT SCHOOL

Demo: https://schooltestis.herokuapp.com

To run this project, you will need:

* Rails 4.2.6
* Ruby >= 2.3.1
* Bower
* PostgreSQL

In the project's root directory, create dotfiles and declare the environment variables to connect database:

```
$ touch .env.development .env.test
```

In those two files, you need to declare the variables ``DB_USERNAME`` and ``DB_PASSWORD``.

Run these commands in project's root directory:

```
$ rake db:create
$ rake db:migrate
$ RAILS_ENV=test rake db:test:prepare
$ bower install
```

## Tests

After that, run ``rspec`` to see if all is ok.
