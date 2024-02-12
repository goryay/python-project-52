MANAGE := poetry run ./manage.py
PORT ?= 8000


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
