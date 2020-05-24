docs_serve:
	gem install bundler jekyll
	rm -f Gemfile.lock
	bundle install
	JEKYLL_ENV=development bundle exec jekyll serve