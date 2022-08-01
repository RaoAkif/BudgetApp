- In `config` folder, open `database.yml` file and Add on line 23, 24, UserName of Database and Password (In my case, in pgAdmin).
```
  username: postgres
  password: 12345
```

- Update Application name with `app_name` on line 28, 62, 86, 87 & also in UpperCase `APP_NAME` on line 88.

##### Initialize a DB:
```
rails db:create
```


# PROJECT_NAME

> Description the project.

## Built With
- Ruby on Rails
- HTML
- CSS
- sqlite3 for the local development
- Postgresql for the production
- Heroku for Deployment

## Live Demo (if available)

[Live Demo Link](https://livedemo.com)

## Linters
- Rubocop
- Stylelint

## Getting Started

To get a local copy up and running follow these simple example steps.

### Install
In order to run, you need to install RUBY and Rails in your computer. For windows you can go to [Ruby installer](https://rubyinstaller.org/) and for MAC and LINUX you can go to [Ruby official site](https://www.ruby-lang.org/en/downloads/) for intructions on how to intall it.

Then you can clone the project by typing ```git clone https://github.com/RaoAkif/PROJECT_NAME```

### Run app
- Type ```bundle install``` in the root file of the project. 
- Type ```rails s``` in the root file of the project.

## Authors

👤 **RaoAkif**

- GitHub: [@raoakif](https://github.com/RaoAkif)
- Twitter: [@raoakif](https://twitter.com/RaoAkif)
- LinkedIn: [RaoAkif](https://linkedin.com/in/RaoAkif)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./MIT.md) licensed.
