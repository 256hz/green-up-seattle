# Wecome to Green UP! Seattle!
Hosted at: https://green-up-seattle.herokuapp.com/ 

This game teaches proper categorization of trash, recycling, and compost.
Ten groups of Seattle neighborhoods compete for the title of Greenest Hood!

Features:

* Account creation with secure password
* Form validation
* Five-round quiz with icons
* Postgres database seeded with image locations/titles for quiz images/answers
* Leaderboard with points-to-next-place
* Individual player profiles with edit capabilities & ranks
* Team profiles with members
* Validation to prevent non-active user editing

Installation:

* `> git clone [REPO]`
* `> rails db:create`
* `> rails db:migrate && rails db:seed`
* `> rails s`

To do:

* Add user profile images
* JS/CSS animations for game
