clean:
	@find . -name __pycache__ -exec rm -rf {} \;
	@rm noodlemagazine.spec
lint:
	@python -m flake8 pypwext
	@python -m mypy pypwext
dependencies:
	@pip install -r requirements/requirements.txt
freeze:
	@mkdir -p requirements
	@pip freeze > requirements/requirements.txt
update:
	@pip install -U pip
stats:
	@scc . --cocomo-project-type=organic --include-ext=py,adoc \
		--exclude-dir=.git,_output,node_modules,.venv,.pytest_cahce,.mypy_cache,.tox,__pycache__