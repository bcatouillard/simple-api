install:
	poetry install --no-interaction

coverage: install
	rm -rf .coverage*
	poetry run coverage run --source=app --omit=__init__.py,*/tests/* -m pytest
	poetry run coverage xml

test: install
	poetry run pytest

dev: install
	poetry run uvicorn app.main:app --reload

run: install
	poetry run uvicorn app.main:app 