
##About MosaikFilmer

**MosaikFilmer** is a project for score and add your favorite films in your own database, in next versions you will be able to share it with more people, give also average scoring, preview of the Movie Trailers and even buy the online screen or the DVD.

The name "Mosaik" comes from the option to see all the poster movies to look as one image.


##Online Version:

**This is an online beta version**, for more information please check the [version 0.1 information](#version).

####https://mosaikfilmer.herokuapp.com/

##Specifications

Versions:
* ruby 2.3.0p0 (2015-12-25 revision 53290)
* Rails 4.2.5

extra dependencies:
You need to install libmagick:
> **In Ubuntu:**
  $ sudo apt-get install libmagick++-dev

 For other distribution/OS  [take a look here][1].

##Local Installation (For Newbies)

Are you new on this? Do you want to try MosaikFilmer locally?

Then you need to install Ruby, Rails [See this link][2]. But don't forget, the ruby and rails versions and dependencies here [in the Specifications](#specifications) .

Once you are done, install git:

Are you also new in [git][3]? Here is how to [install it][4].

Do you know what where is your Terminal, shell or a command line, [check this tutorial][5]

Once you are done:

>**In your Terminal**
>
> Check if your ruby and rails versions are the correct ones:
>```
>$ruby -v
> >ruby 2.3.0p0
>$rails -v
> >Rails 4.2.5
>```
> Go to the folder you want to include the project folder, "cd folder_name"
>
> And type in a single line:
> ```
$ git clone https://github.com/nelantone/Mosaikfilmer.git
>```
>Almost done!
>```
>$cd MosaikFilmer
>```
>Once there, execute:
>```
>$ bundle install
>```
>And when is done and without errors, start the local server:
>```
>$ rails server
>```
> Then go to your browser and write as URL:
> ``http://localhost:3000/``
>
> Ready!!


If you have some errors or problems,  please copy/paste the error in [Stack-overflow](http://stackoverflow.com/) and/or search a bit on internet, if it's still not working, don't hesitate to contact me: ```antonelo@gmail.com```.


##Version

###Version 0.1 (Basic):
* Front-End with Bootstrap
* Database with Postgresql
* User  authentication with Devise
* Scaffold, models &controllers
* Rspec Movies model an controller tests
* Front-end implementation

###Pending to Fix and for next versions:
*  Image uploads broken ( Heroku clear all uploaded images  every few hours) S3 with Amazon is a possible solution.
*  Fix, the Sort the ''Movie List'' table(only uploads when refreshing the page)
*  Allow send email confirmation, reset and send password the given email.
*  Sort "Mosaik list index" per score, year etc....
*  Add `Delete` option in Frontend
*  Add Director name and synopsis
*  Add better Mosaik sice and automatic resize, specially for the 'Mosaik list'
*  Add requests, view and refactor RSpec expectations.
*  Add and interactive JS start rating
*  Have a  option to share movies to a general database
*  Add movie trailers, also as `Mosaik`
*  Better(nicer & modern) Frontend
*  Link to buy online/offline movie

##Comments and doubts
Please contact me: antonelo@gmail.com
Twitter: @nelantone

This text is made online in Markdown via Stackedit, [take a look](https://stackedit.io).

  [1]: http://railsapps.github.io/installing-rails.html
  [2]: http://stackoverflow.com/questions/19274293/error-installing-rmagick-error-failed-to-build-gem-native-extension/24006292#24006292
  [3]: https://en.wikipedia.org/wiki/Git_(software)
  [4]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
  [5]: http://www.learnenough.com/command-line-tutorial
  [6]: http://meta.math.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference