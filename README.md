# Budget App

> The Budget App is a mobile web application where you can manage your budget.

This project contains the routes to different views:
- Splash Page
- Home Page (Categories)
- Transactions Page

The `Splash Page` serves as an initial page. From there you can *log in* or *sign up*.

After you successfully log into the app, you will be redirected to the `Home Page`. Here you will have the chance to create categories and view their basic information. From here you can access the `Transactions Page`.

Finally, the `Transactions Page` is where you can see the details from all the transactions you have done for a single category. You can access this page by clicking on the *View transactions* link in the `Home Page`

## Built With
![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white)
![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)


## Live Demo

[Live Demo Link](https://www.loom.com/share/09153510f56b4d3cadc135b31e11d3b2)

## Deployment

[Heroku](https://agile-chamber-15046.herokuapp.com)

## Linters
![RuboCop](https://img.shields.io/badge/code%20style-Rubocop-red?style=for-the-badge&logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAzMiAzMiI+PHRpdGxlPmZpbGVfdHlwZV9ydWJvY29wPC90aXRsZT48cGF0aCBkPSJNMjcuMDUsMTMuOVYxM2ExLjc5MywxLjc5MywwLDAsMC0xLjgtMS44SDYuNjVBMS43OTMsMS43OTMsMCwwLDAsNC44NSwxM3YuOWExLjUyNSwxLjUyNSwwLDAsMC0uNywxLjJ2Mi40YTEuMzg3LDEuMzg3LDAsMCwwLC43LDEuMnYuOWExLjc5MywxLjc5MywwLDAsMCwxLjgsMS44aDE4LjdhMS43OTMsMS43OTMsMCwwLDAsMS44LTEuOHYtLjlhMS41MjUsMS41MjUsMCwwLDAsLjctMS4yVjE1LjFBMS43NDIsMS43NDIsMCwwLDAsMjcuMDUsMTMuOVoiIHN0eWxlPSJmaWxsOiNjNWM1YzUiLz48cGF0aCBkPSJNMTUuOTUsMmE5LjkyNSw5LjkyNSwwLDAsMC05LjgsOC42aDE5LjZBOS45MjUsOS45MjUsMCwwLDAsMTUuOTUsMloiIHN0eWxlPSJmaWxsOiNjNWM1YzUiLz48cG9seWdvbiBwb2ludHM9IjEzLjA1IDI0IDE4Ljg1IDI0IDE5LjQ1IDI0LjcgMjAuMzUgMjQgMTkuNDUgMjIuOSAxMi40NSAyMi45IDExLjU1IDI0IDEyLjQ1IDI0LjcgMTMuMDUgMjQiIHN0eWxlPSJmaWxsOiNjNWM1YzUiLz48cGF0aCBkPSJNMjMuNTUsMTcuNkg4LjM1YTEuMywxLjMsMCwxLDEsMC0yLjZoMTUuM2ExLjMyNCwxLjMyNCwwLDAsMSwxLjMsMS4zQTEuNDkzLDEuNDkzLDAsMCwxLDIzLjU1LDE3LjZaIiBzdHlsZT0iZmlsbDojZWMxYzI0Ii8+PHBhdGggZD0iTTIzLjA1LDIydjMuOGExLjk2NywxLjk2NywwLDAsMS0xLjksMS45aC0xYS44NjQuODY0LDAsMCwxLS42LS4zbC0xLjItMS42YS42LjYsMCwwLDAtLjYtLjNoLTMuNmEuNzY0Ljc2NCwwLDAsMC0uNS4ybC0xLjMsMS42YS42LjYsMCwwLDEtLjYuM2gtMWExLjk2NywxLjk2NywwLDAsMS0xLjktMS45VjIySDYuNTV2My44YTQuMjI1LDQuMjI1LDAsMCwwLDQuMiw0LjJoMTAuNGE0LjIyNSw0LjIyNSwwLDAsMCw0LjItNC4yVjIyWiIgc3R5bGU9ImZpbGw6I2M1YzVjNSIvPjwvc3ZnPg==)
![STYLELINT](https://img.shields.io/badge/stylelint-000?style=for-the-badge&logo=stylelint&logoColor=white)
![ESLINT](https://img.shields.io/badge/eslint-3A33D1?style=for-the-badge&logo=eslint&logoColor=white)
![PRETTIER](https://img.shields.io/badge/prettier-1A2C34?style=for-the-badge&logo=prettier&logoColor=F7BA3E)



## Getting Started

To get a local copy of the project, follow these steps: 
Clone the repository with
 ```
 git clone https://github.com/RaoAkif/BudgetApp
 ```
 ```
 cd BudgetApp
 ```
Install the packages with (Remove the conflicts for ruby version. Either update your machine's version, or the project's one). To update the packages, run
```
bundle update rails
```
To simple install the packages, run
```
bundle install
```
```
'npm install' or 'yarn install'
```
To create the database locally, run
```
rails db:create
```
To run the migrations, run
```
rails db:migrate
```
To add the seeds to the project, run
```
rails 'db:seed'
```
Start the local server with
```
rails s
```

To execute the tests, run
```
rspec
```

## Authors

👤 **RaoAkif**

- GitHub: [@raoakif](https://github.com/RaoAkif)
- Twitter: [@raoakif](https://twitter.com/RaoAkif)
- LinkedIn: [RaoAkif](https://linkedin.com/in/RaoAkif)

## 🤝 Contributing
## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Thanks to my peers who are always there to offer support.
- Original design idea by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella).
Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## 📝 License

This project is [MIT](./MIT.md) licensed.
