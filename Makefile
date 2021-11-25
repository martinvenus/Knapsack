phpcs:
	vendor/bin/phpcs --standard=ruleset.xml --encoding=utf-8 -sp src tests

lint:
	vendor/bin/parallel-lint -e php,phpt --exclude vendor .

phpstan:
	vendor/bin/phpstan analyse -l 5 -c phpstan.neon src

run-tests:
	vendor/phpunit/phpunit/phpunit
