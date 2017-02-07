[![Build Status](https://travis-ci.org/AdaevK/test_catalog.svg?branch=master)](https://travis-ci.org/AdaevK/test_catalog)

# SETUP
Установить ruby 2.3.3, postgresql 9.4

Перейти в каталог приложения

```console
$ cp .env.example .env.development
$ cp .env.example .env.test
```
Заполнить файлы .env.development и .env.test

```console
$ gem install bundler
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

# START

```console
$ bundle exec rails s
```

# TEST

```console
$ bundle exec rspec
$ bundle exec rspec spec/features/products_index_spec.rb
```
