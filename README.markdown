# Rails for Designers

[#sxsw #makeitreal](https://twitter.com/search?q=%23makeitreal&src=hash) [@starterleague](https://twitter.com/starterleague)

#### [SXSW 2013](http://sxsw.com/) · [The Starter League](http://www.starterleague.com/)

- [Jeff Cohen](https://twitter.com/jeffcohen)
- [Neal Sales-Griffin](https://twitter.com/nealsales)
- [Darby Frey](https://twitter.com/darbyfrey)
- [Raghu Betina](https://twitter.com/rbetina717)

### Agenda

##### 11am - 1pm: Into the Deep End

- Environment Setup
- Explore static mockup of portfolio app
- Dive into Rails
- Live deploy
- Bring the mockup to life

##### 1pm - 2pm: Lunch

##### 2pm - 3:30pm: Break for Keynote

- Optional: Ruby Basics

##### 3:30pm - 6pm: Facebook App

- Finish up the portfolio app
- Build a Facebook app
- Office hours


### Environment Setup

Welcome! For the workshop today, everyone will be working in pairs (we find working in pairs greatly enhances learning, and also, it's just a lot more fun).

Just so that we are all on the same page, we are going to stick with Macs. If you don't have a Mac, find someone who does to pair up with :)

If you haven't already tried installing Rails on your system, visit [RailsInstaller.org](http://railsinstaller.org/), download the appropriate package, and run it.

If you have already tried to install Ruby and Rails on your system, launch the Terminal app and enter the following at the prompt:

- `ruby -v` (You should see `ruby 1.9.3`)
- `rails -v` (You should see `Rails 3.2.12`)
- `git --version` (You should see `git version 1.8.1.1`)

If your Ruby and Git are alright but you don't have Rails, `gem install rails` (or if you have Rails but it is an older version, `gem update rails`).

If you see something different, visit [RailsInstaller](http://railsinstaller.org/), download the appropriate package, and run it. Then try the above commands again. If you have any problems, let one of us know!

You should also download and install [Sublime Text 2](http://www.sublimetext.com/2) (they offer a free trial).

### Navigating with the Command Line

- `pwd` Display your current location
- `ls` List the contents of the current folder
- `mkdir <folder name>` Create a subfolder
- `cd ~` Navigate to your Home folder
- `cd <folder name>` Navigate into a subfolder
- `cd ..` Navigate back to the parent folder
- `open .` Open the current folder in Finder

### Create a working folder

- `cd ~` Navigate to your home folder
- `mkdir dev` Create a subfolder called `dev`
- `cd dev` Navigate into `~/dev`
- `mkdir sxsw`
- `cd sxsw`

### Download our mockup

- Go to [the GitHub repository for our mockup](https://github.com/tsl-sxsw/mockup) and click the Download Zip button. Extract the archive into your working folder.
- Open `portfolio.html` and `portfolio-item.html` and check 'em out. This is the app we're going to bring to life.

### Rails Quickstart

- `rails new firstapp` Create a new app
- `cd firstapp` Navigate into your app
- `rails server` Start your web server
- Open up `http://localhost:3000/` in Chrome to make sure the web server is up and running.
- Drag your static mockup into your app's `public` folder and open up `http://localhost:3000/portfolio.html` in Chrome.

### Deploy to the interwebs

- [Get Started with Heroku](https://devcenter.heroku.com/articles/quickstart)
- Open your app's `Gemfile`
- Change

```
gem 'sqlite3'
```
to

```
group :development do
  gem 'sqlite3'
end
```
and add

```
group :production do
  gem 'pg'
end
```
- From the command line, `bundle install`
- `git init` Initialize a local Git repository
- `git add -A` Add all of the files in the current folder to a version staging area
- `git commit -m 'Brand new app with static mockup'` Describe and save the current version of the code
- `heroku create sxsw-portfolio` Create a repository for our code in Heroku's cloud
- `git push heroku master` Send our code to Heroku for deployment
- `heroku run rake db:migrate` Create any database tables we need on Heroku's server
- `heroku open` Open our live app


### CRUD Resource

- At the heart of every app is data; *things* that the app keeps track of, and presents to the user in a valuable way.
- To store all this data, we typically use databases. A database is simply a set of tables.
- We refer to these *things* as resources. Pretty much every app you can think of is a collection of resources that you can **C**reate, **R**ead, **U**pdate, and/or **D**elete.
- As such, Rails gives us a handy tool to get a head start on building a CRUD resource.
- `rails generate scaffold <table name (singular)> <first column>:<datatype> <second column>:<datatype> …` Get a headstart on building a database-backed web resource
- `rake db:migrate` Create the actual table in your database
- Open `http://localhost:3000/<table name (plural)>` in Chrome

### Clone a repository from GitHub

- Navigate to `~/dev/sxsw` in Terminal
- `git clone https://github.com/tsl-sxsw/portfolio` Download the code and version history
- `cd portfolio` Navigate into the repository
- `git checkout v1` Jump back to the first version
- `bundle install` Install all the libraries that the app needs
- `rake db:migrate` Create your database and tables
- `rake db:seed` Pre-populates database with dummy data
- `rails server` Start the server (don't forget to quit any other running servers with CTRL-C)

### Move your assets into the pipeline

- Place all CSS files into `app/assets/stylesheets`
- Place all JavaScript files into `app/assets/javascripts`
- Place all image files into `app/assets/images`
- CSS and JavaScript will be automatically included in all of the pages served by the app.
- Images can be located at `http://localhost:3000/assets/<filename>`
- Delete the `app/stylesheets/scaffolds.css.scss` file.

### Sync your code with the instructor in case you get behind

- Open up a new Terminal tab with CMD-T and make sure you are in the app's folder
- `git add -A` Collect the changes you made to the code since the last saved version
- `git stash` Throw them all away
- `git checkout v2` Jump to the next version

### Generating dynamic HTML

- Your HTML templates are located in the `app/views/<table name (plural)>` folder.
- View templates are standard HTML with a bit of Ruby sprinkled in.
- Ruby goes in special Embedded Ruby Tags, <%=  %>
- Check out `app/views/projects/show.html.erb`. What's the pattern for accessing data from the database?
- Try to enhance the HTML around the ERB to look more like our mockup.
- You need not include `<html>`, `<head>`, or `<body>` tags in the view template; Rails will automatically include them. Just include the content of the body.
- First just paste the static markup into the view template; then try to go through, line by line, and embed Ruby wherever you need to in order to make it dynamic.
- [One possible solution can be seen here](https://github.com/tsl-sxsw/portfolio/commit/b1a4d355b63e030330ab6233df4661122e7a93a2) -- don't look at it until you've finished!

### Challenge: Index

- If you want to sync up, `git add -A`, `git stash`, `git checkout v3`
- Enhance the index view template to look like our mockup.
- Hint: every table automatically gets a column called `id`. The URL for the show page of a particular project is `/projects/<that project's ID number>`.
- [One possible solution can be seen here](https://github.com/tsl-sxsw/portfolio/commit/f5c7f15ac79534b53449d12b87523d00c6460bef) -- don't look at it until you've finished!

### Only allow Read access.

- If you want to sync up, `git add -A`, `git stash`, `git checkout v4`
- In the `app/controllers/projects_controller.rb` file, add the line `http_basic_authenticate_with :name => "jeff", :password => "hockey", :except => [:index, :show]` on line 2
- This will require authentication for every action except index (see the list of all projects) and show (see the details of one project).
- In particular, visitors will not be able to **C**reate, **U**pdate, or **D**estroy projects. They can only **R**ead.

### Challenge: Inquiries

- If you want to sync up, `git add -A`, `git stash`, `git checkout v5`
- Add another database-backed resource, Inquiry. The inquiries table should store name (string), email (string), and message (text). [Solution](https://github.com/tsl-sxsw/portfolio/commit/da6c35eba2b066b79862eb0915fa6ae95a061a08)
- Add a link in the nav bar to a page that allows visitors to submit inquiries. [Solution](https://github.com/tsl-sxsw/portfolio/commit/4cba10073f0ebcab4f9dc5dd1edf81c0ec82fc59)
- Lock down access to everything Inquiry-related except the new and create actions. [Solution](https://github.com/tsl-sxsw/portfolio/commit/97bfe51c82b225732cbc2e64cfd3476c28ac13d7)



- - - -

If you enjoyed the workshop, or if you didn't, SXSW encourages you to rate us at [sxsw.tv/ck8](http://sxsw.tv/ck8).

Please [stay in touch with us](https://twitter.com/starterleague); we'd love to see the beautiful things you build.

### Thank you very much for attending, and happy coding!
