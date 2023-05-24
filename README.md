# Sphinx Template
![Build Status](https://img.shields.io/badge/Made%20with-Sphinx-1f425f.svg)

![Build Status](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Build Status](https://img.shields.io/badge/HTML-239120?style=for-the-badge&logo=html5&logoColor=white)
![Build Status](https://img.shields.io/badge/GitLab-330F63?style=for-the-badge&logo=gitlab&logoColor=white)
![Build Status](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)


## Description
Example sphinx documentation website using GitLab Pages, containing a quick starting tutorial on Sphinx to learn the main commands.

Learn more about GitLab Pages at https://about.gitlab.com/product/pages/ and the official
documentation https://docs.gitlab.com/ee/user/project/pages/.

## Main command to remember
Clone the project: ``git clone git@gitlab.com:do-favier/sphinx-template.git``

Install the package: ``make dev_install``

Update the packages: ``make update``

Local live preview: ``make livehtml``

Clean the \_build folder: ``make clean``

URL of the generated documentation of this example: https://do-favier.gitlab.io/sphinx-template/

## Getting started

Pre-requisite: you have setup the ssh public key in your Gitlab Account. More information can be found if needed >>[here](https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/How-to-configure-GitLab-SSH-keys-for-secure-Git-connections)<<

Here are below the main command to start with this repo:

```
cd existing_repo
git remote add origin https://gitlab.com/do-favier/sphinx-template.git
git branch -M main
git push -uf origin main
```

## Installation

Pre-requisite: You have install **Python** and **Pyenv** on your computer. If not, you can go to the pre-requirements section

1. Clone the repo: ``git clone git@gitlab.com:do-favier/sphinx-template.git``
2. Install your environment using the makefile: ``make dev_install``

This will create a virtual env named ``sphinxtmp`` using ``pyenv`` package, activate automatically the virtual env by creating a ``.python-version`` file within the folder.

## Pre-requirements

The requirements to use this template are:

- [Python](https://www.python.org/)
- [Pyenv](https://github.com/pyenv/pyenv)

If you have an Ubuntu Laptop (or Windows with WSL):

1. Update your packages: ``sudo apt-get update``
2. Install Python and all recommended packages: ``sudo apt-get install python3-pip python-is-python3 make build-essential python3-venv``
3. Install recommended tools for Linux: ``sudo apt-get install unzip zip tree gdu git tig terminator htop``
4. Download and Install Pyenv: ``curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash``
5. Add the following lines of code to your .bashrc this will change dynamically your Python virtualenv just by moving to the right folder 

```
>> tail -4 ~/.bashrc
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
```

6. source ``~/.bashrc`` to make it effective immediately: ``source .bashrc``

## Usage / Building locally

You can automatically build your sphinx documentation and live preview with sphinx-autobuild: ``make livehtml``

The generated HTML will be located in the location specified by ``conf.py``,
in this case ``_build/html``.

If you need to clean the ``_build/`` folder, you can use the command ``make clean``

This template is automatically configure to your Gitlab Pages CI/CD. To view your Gitlab Pages, go to **Settings** --> **Pages**. You will see the link of the website on the internet

## Adapt this template to your project

To adapt this template to your project, here are some of the configurations you will need to do:

- ``conf.py``: project = 'Sphinx Template Website'
- ``conf.py``: copyright = f'{date.today().year}, Cao Tri DO'
- ``conf.py``: author = 'Cao Tri DO'
- ``conf.py``: language = 'en'
- ``conf.py``: html_theme = 'furo' --> A great theme for book is sphinx-book-theme
- ``conf.py``: favicons = [{"href": "logo_Destination-Familles-favicon.png"},] --> Add your favicon to the ``_static/`` folder and change here your logo filename
- ``index.rst``: change / delete the banner in the index located in ``docs/``


## Support
For more information, do not hesitate to contact me: caotri@dofavier.fr

## Roadmap
Some underdeveloppment ideas:

- Add Github Actions so that the template can be used for Github Pages
- Add a tutorial with Exercice to start using this template more concretly
- Add a support for writing a book using this template

## Contributing
State if you are open to contributions and what your requirements are for accepting them.

## Did you fork this project?
If you forked this project for your own use, please go to your project's
**Settings** and remove the forking relationship, which won't be necessary
unless you want to contribute back to the upstream project.

## Troubleshooting
No issues reported yet.