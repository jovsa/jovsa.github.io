docs_serve:
	gem install bundler jekyll
	rm -f Gemfile.lock
	bundle install
	JEKYLL_ENV=development bundle exec jekyll serve
	# JEKYLL_ENV=production bundle exec jekyll serve #to mock production