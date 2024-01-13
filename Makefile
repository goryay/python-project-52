MANAGE := poetry run ./manage.py


dev:
	@$(MANAGE) runserver
