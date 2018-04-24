.PHONY: build run

build:
	bundle config build.nokogiri --use-system-libraries
	bundle install

run:
	bundle exec jekyll serve
