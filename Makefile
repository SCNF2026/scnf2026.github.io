install:
	python3 -m pip install -r requirements.txt

serve:
	mkdocs serve

build:
	mkdocs build --strict
