Kocktailz
This CLI will help the user to select the most exotic cocktails at any social event or if they just want to do some experimenting on their own, at home, a cookout, barbecue etc., Base off the selected letter, full details about that cocktail will be displayed.

The program will be utilizing “The Cocktail DB”, which is and api (https://www.thecocktaildb.com/api/json/v1/1/search.php?f=a) to provide a list of cocktails for the letter inputed by the user. The user will then be prompted asking if they would like more information on a particular cocktail. Depending on the user response the selected cocktail details will be fetched and displayed on the screen.

Whenever the user select the more info option the following will be displayed;
1. The drink name 
2. drink id
3. 3 major ingredients
4. instructions on making the cocktail
5. type of glass to serve it in
6. the category in which it falls 
6. if the cocktail is alcoholic.


Installation

Add this line to your application's Gemfile:
gem 'Kocktailz'

And then execute:
    $ bundle

Or install it yourself as:
    $ gem install Kocktailz

Usage

This gem is designed to help users select different types of cocktails at any social event or help them to make a exotic cocktail of their choice.

Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rvt-tex/Kocktailz. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

Code of Conduct

Everyone interacting in the Kocktailz project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/rvt-tex/Kocktailz/blob/master/CODE_OF_CONDUCT.md).