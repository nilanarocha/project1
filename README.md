rails new real-estate —skip-git -T  -d postgresql

open `Gemfile` and add `pry-rails` as development dependency

bundle exec rake db:setup

rails db:rollback

rails db:migrate

rails db:seed




