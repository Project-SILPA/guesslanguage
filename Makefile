travis:
	python setup.py test --coverage \
		--coverage-package-name=guesslanguage
	flake8 --max-complexity 16 --ignore F401 libindic/guesslanguage

clean:
	find . -iname "*.pyc" -exec rm -vf {} \;
	find . -iname "__pycache__" -delete
	sudo rm -rf build dist *egg* .tox .coverage .testrepository
