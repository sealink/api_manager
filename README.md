# APIManager - API Manager using REST-client

[![Build Status](https://travis-ci.org/sealink/cancanright.svg?branch=master)](https://travis-ci.org/sealink/cancanright)

In order to allow for flexible and fine-grained access control across a large application it may
be useful to mange your CanCan abilities in your application's database. With CanCanRight users
are assigned many Roles which have many Rights. Rights represent CanCan rules.

APIManager is built for Rails 5+


## Installation

Add this to your Gemfile:

    gem 'api_manager'

and run the `bundle install` command.


## Getting Started

APIManager extends upon Rest-client's features. For information on getting started with Rest-client please visit the
[REST-client Readme](https://github.com/rest-client/rest-client/blob/master/README.md).


## Development

After checking out the repo, run `bundle install` to install dependencies. Then, run `rake spec`
to run the tests.


## Contributing

If you find a bug please add an [issue on GitHub](https://github.com/sealink/cancanright/issues)
or fork the project and send a pull request. This project is intended to be a safe, welcoming
space for collaboration, and contributors are expected to adhere to the
[Contributor Covenant](http://contributor-covenant.org) code of conduct.
