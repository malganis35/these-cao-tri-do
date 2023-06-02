Sphinx Intro
=========================

Introduction
---------------------------------------------------------

Introduction à Sphinx, un outil de documentation puissant

Source : https://blog.flozz.fr/2020/09/07/introduction-a-sphinx-un-outil-de-documentation-puissant/

Sphinx est un outil très complet permettant de générer des documentations riches et bien structurées. Il a originellement été créé pour la documentation du langage Python, et a très vite été utilisé pour documenter de nombreux autres projets.

Il peut être utilisé pour simplement écrire un ouvrage technique (sans rapport direct avec une base de code) ou pour documenter du code. Pour ce qui est de la documentation de code, il est évidemment bien adapté au Python, mais peut aussi être utilisé avec d'autres langages, comme le JavaScript ou encore le PHP (il est d'ailleurs utilisé pour la documentation du framework Symfony).

Parmi toutes les fonctionnalités qu'il propose, on peut mentionner :

- le support de plusieurs formats de sortie (HTML, PDF, EPUB, pages de manuel,...),
- la génération automatique de la documentation liée à du code (avec le support de nombreux langages),
- la possibilité de faire facilement des références entre les pages,
- ou encore sa gestion d'extensions permettant de l'adapter à toutes les situations et langages.

Dans ce premier article sur Sphinx, on va voir comment l'installer et comment l'utiliser pour générer une documentation. On abordera aussi rapidement la syntaxe reStructuredText sur laquelle il s'appuie. Dans de futurs articles, on verra plus spécifiquement comment l'utiliser pour documenter du Python ou du JavaScript.


Installer Sphinx
-------------------

La première étape, c'est évidemment d'installer Sphinx.

L'outil est développé en Python, vous aurez donc besoin de ce dernier pour le faire fonctionner. Sous Debian et Ubuntu, vous pouvez utiliser la commande suivante pour vous assurer d'avoir tout ce qu'il vous faut :

.. code:: bash
    :caption: Shell

    sudo apt install build-essential python3 python3-pip python3-venv

Si vous êtes sous Windows, il vous faudra télécharger et installer la dernière version de Python 3.x disponible sur le site officiel : https://www.python.org/

Ensuite, pour installer Sphinx en lui-même, il suffit d'exécuter la commande suivante :

.. code:: bash
    :caption: Shell

    pip install sphinx

Et c'est tout !


.. note::

    NOTE : faire les choses proprement avec un virtualenv
    Pour éviter de mettre le bazar sur mon système, j'exécuterais toutes les commandes Python de cet article dans un virtualenv utilisant Python 3.

    Si vous avez une version de Python supérieure à 3.3 (ça devrait être le cas normalement), vous pouvez créer l'environnement avec la commande suivante :

    .. code:: bash
        :caption: Shell
        
        python3 -m venv __env__
    
    Cette commande va créer un dossier __env__/ dans le dossier courant, qui contient Python ainsi que tout ce qu'on va installer par la suite.

    Une fois l'environnement créé, il faut l'activer :

    .. code:: bash
        :caption: Shell
        
        source __env__/bin/activate
    
    Si tout c'est bien passé, le prompt du terminal devrait être préfixé du nom de l'environnement (__env__).

    Vous pouvez à présent exécuter n'importe laquelle des commandes cet article, comme le pip install ci-dessus, ou la commande de génération de la doc que l'on va voir par la suite.

    Une fois que vous avez terminé de travailler avec votre environnement, vous pouvez le désactiver à l'aide de la commande suivante :

    .. code:: bash
        :caption: Shell
        
        deactivate
    
    La prochaine fois, vous n'aurez pas besoin de recréer l'environnement, seulement de le réactiver.

    Les commandes que je vous ai présentées ci-dessus sont valables pour Linux avec un shell POSIX (Bash, Dash, ZSH,...). Si vous utilisez un shell exotique (coucou Fish) ou un autre OS (ou si vous êtes simplement curieux), vous trouverez plus d'informations sur la documentation officielle de venv.


Créer la documentation
-----------------------------
Maintenant que Sphinx est installé, on va pouvoir créer la documentation. Pour cela il faut créer un certain nombre de dossiers et de fichiers... mais heureusement, Sphinx dispose d'une commande pour faire tout ça automatiquement !

On va donc initialiser la documentation à l'aide de la commande suivante :

.. code:: bash
    :caption: Shell

    sphinx-quickstart

Là, Sphinx va nous poser un certain nombre de questions auxquelles vous pouvez répondre comme vous le souhaitez. Mais pour suivre la suite de cet article dans de bonnes conditions, je vous recommande de répondre "y" à la première question (Séparer les répertoires build et source) :

Une fois les quelques questions répondues, vous vous retrouvez avec un dossier source/ qui contiendra votre documentation, et deux fichiers :

Makefile pour générer la doc depuis Linux, MacOS,...

et make.bat pour générer la doc depuis Windows.


Renommer le dossier source (option)
------------------------------------

Personnellement, je n'aime pas que le dossier contenant la documentation s'appelle ``source/``, je le renomme donc en ``doc/`` :

.. code-block:: shell
    
    :caption: Shell

    mv source doc

Si vous faites cela, il vous faudra également modifier les fichiers ``Makefile`` et ``make.bat``, dans lesquels il faudra adapter le contenu de la variable ``SOURCEDIR``.

