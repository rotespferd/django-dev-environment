# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased][unreleased]
### Added
- Install python3 from repository.
### Changed
- Switch OS to Debian 8.
- Install pip with script from bootstrap.pypa.io.
### Removed
- Compilation of python.

## [0.3.0] - 2015-04-22
### Added
- Command for running Django.
- Workdir for Django-app.
- CircleCI integration.
### Removed
- Remove virtualenv.
- Remove virtualenvwrapper.
- CONF_DIR from Makefile.
### Changed
- Install Django with pip.
- Port-binding in Makefile.
- Location of linked folders in Makefile.

## [0.2.0] - 2015-04-19
### Added
- Install virtualenv.
- Install virtualenvwrapper.
- Install Django.
### Changed
- Move old python-bin away and link new python3.4.3
### Removed
- Remove adding of python3.4.3 to local PATH.

## [0.1.0] - 2015-04-19
### Added
- Dockerfile for defining the image.
- Makefile for building and running the container.
- CentOS base-images to Dockerfile.
- Build-steps for python.
- Build and install python.
- Install pip.
