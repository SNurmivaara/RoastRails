# README

## Roastrails

Roastrails is an imaginary coffee bean store built to test the functionality of Rails 7. This repository contains all the necessary information to set up and run the project.

### Ruby and Rails Setup

To set up the Ruby and Rails environment, follow these steps:

1. Install the required dependencies by running the following command:
  ```
  sudo apt install -y build-essential git libsqlite3-dev redis ruby-dev tzdata
  ```

2. Install `rbenv` by running the following command:
  ```
  sudo apt install rbenv
  ```

3. Initialize `rbenv` by running the following command:
  ```
  rbenv init
  ```

4. Install Ruby version 3.1.3 by running the following command:
  ```
  rbenv install 3.1.3
  ```

5. Set the global Ruby version to 3.1.3 by running the following command:
  ```
  rbenv global 3.1.3
  ```

6. Install Rails version 7.0.4 by running the following command:
  ```
  gem install rails -v 7.0.4 --no-document
  ```

### Running the Project

To run the Roastrails project in dev, use the following command:
```
rails dev
```

To run the Roastrails project in a server, use the following command:
```
rails server
```

This will start the server and make the application accessible.

### Running Tests

To run the tests for the Roastrails project, use the following command:

```
rails test
```

### Database

To manage the database for the Roastrails project, you can use the following commands:

- To migrate the database, run the following command:

  ```
  rails db:migrate
  ```

- To seed the database with initial data, run the following command:

  ```
  rails db:seed
  ```

- To rollback the last database migration, run the following command:

  ```
  rails db:rollback
  ```
