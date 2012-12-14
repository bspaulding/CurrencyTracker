CurrencyTracker
===============

CurrencyTracker allows you to track your personal collection of world currencies, by tagging the countries that you've visited along your travels.

Setup
-----

Seed the database with currencies and countries by running:

```bash
rake db:seed
```

Testing
-------

Run tests with:

```bash
RAILS_ENV=test rake test
```

Cucumber features can be run with:

```bash
cucumber
```

Features
--------

* Track Visited Countries
* Track Collected Currencies
* Charts show you how far along you are!
