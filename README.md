ytcms-lite
=============

A simple CMS for managing content on YouTube using sqlite3.

Steps to deploy
===============
```sh
git clone https://github.com/brycematsuda/ytcms-lite.git
cd ytcms-lite
bundle install --without production
bundle exec rake db:migrate
bundle exec rake db:create db:migrate
bundle exec rake db:test:prepare
rails server
```

And go to http://localhost:3000 in your web browser.