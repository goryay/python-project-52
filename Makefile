MANAGE := poetry run ./manage.py


dev:
	@$(MANAGE) runserver

install:
	poetry install

build:
	poetry build

publish:
	poetry publish --dry-run

package-install:
	python3 -m pip install dist/*.whl
