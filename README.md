# Story Time (Rails)

This app was made to practice using Ruby on Rails. It allows users to create stories and have randomly generated images to inspire sentences for said stories. It is a random story generating application.

### Installation

Open Terminal and clone the repository.  
```
$ cd Desktop
$ git clone https://github.com/noahramey/story_time_rails.git
```

Navigate to the repository and bundle Ruby gems:
```
$ cd story_time_rails
$ bundle install
```

Make sure Postgres is running on your local machine, then setup the database:
```
$ rails db:setup db:test:prepare
```

Start the Rails server.
```
$ rails s
```

Open your browser and navigate to `localhost:3000`.


License
-------

MIT License. Copyright &copy; 2016 "Noah Ramey"
