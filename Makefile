MANAGE := poetry run ./manage.py


dev:
	@$(MANAGE) runserver 0.0.0.0:${PORT}

install:
	poetry install

build:
	./build.sh

publish:
	poetry publish --dry-run

package-install:
	python3 -m pip install dist/*.whl

mess:
	@$(MANAGE) makemessages -l ru -i venv

compile:
	@$(MANAGE) compilemessages

lint:
	poetry run flake8

test:
	@$(MANAGE) test task_manager/tests/

test-e2e:
	@$(MANAGE) test task_manager.tests_end2end.playwright_users_test

test-coverage:
	poetry run coverage run --source="task_manager" manage.py test task_manager
	poetry run coverage xml

coverage:
	coverage run --source='.' ./manage.py test .
	coverage report
	coverage html

check:
	lint test

dry:
	@$(MANAGE) makemigrations --dry-run

mmigrate:
	@$(MANAGE) makemigrations

migrate:
	@$(MANAGE) migrate

static:
	@$(MANAGE) collectstatic

shell:
	@$(MANAGE) shell_plus --ipython

notebook:
	@$(MANAGE) shell_plus --notebook

.PHONY:
	dev lint test test-coverage check install build publish package-install
