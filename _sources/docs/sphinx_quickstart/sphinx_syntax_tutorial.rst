Sphinx Syntax Tutorial
=========================
We use *restructuredtext* aka **rst** syntax to document our project with Sphinx

- `rst online ressources
  <https://www.sphinx-doc.org/en/master/usage/restructuredtext/index.html>`_

Paragraphs and notes
------------------------
.. tab:: Paragraphs and Notes

  This is a paragraph.

  Paragraphs line up at their left edges, and are normally separated by blank
  lines.

  .. note::

     You can decorate a block as a **note**

  .. warning::

     Or as a **warning**, please try *attention*, *caution*, *danger*,
     *error*, *hint*, *important* and *tip* too.

.. tab:: Paragraphs and Notes -- code

  .. code::

    This is a paragraph.

    Paragraphs line up at their left edges, and are normally separated by blank
    lines.

    .. note::

       You can decorate a block as a **note**

    .. warning::

       Or as a **warning**, please try *attention*, *caution*, *danger*,
       *error*, *hint*, *important* and *tip* too.


tabs images and code
--------------------
.. tab:: Tab with an image

   .. image:: /docs/sphinx_quickstart/sphinx_syntax_tutorial/logo_Destination-Familles-favicon.png
      :width: 400px

.. tab:: Tab with some code

   .. code:: python

     def fibs():
        """
        This code does not work ;)
        """
        a = 0
        b = 1
        while True:
            yield a
            a, b = b, a + b

.. tab:: How to create this tabs ?

   .. code::

      .. tab:: Tab with an image

         .. image:: /src/images/logo_mazars.png
            :width: 400px

      .. tab:: Tab with some code

         .. code:: python

           def fibs():
              """
              This code does not work ;)
              """
              a = 0
              b = 1
              while True:

Tables
--------
.. list-table::
   :widths: 30 10 60
   :header-rows: 1
   :stub-columns: 0

   * - Queue
     - Nb
     - Details
   * - big_jobs_few_tasks
     - 2
     - Non igitur potestis voluptate omnia dirigentes
   * - small_jobs_many_tasks
     - 10
     -

.. tab:: Generic Table (**list-table** the best/simpler syntax)

   .. code::

     .. list-table::
        :widths: 30 20 50
        :header-rows: 1
        :stub-columns: 0

        * - Queue
          - Nb
          - Details
        * - big_jobs_few_tasks
          - 2
          - Non igitur potestis voluptate omnia dirigentes
        * - small_jobs_many_tasks
          - 10
          -

.. tab:: Table (an alternative syntax)

   .. code::

      +-----------------------+----+-----------------------------------+
      | Queue                 | Nb | Details                           |
      +=======================+====+===================================+
      | big_jobs_few_tasks    | 2  | Non igitur potestis               |
      |                       |    | voluptate omnia dirigentes        |
      +-----------------------+----+-----------------------------------+
      | small_jobs_many_tasks | 10 |                                   |
      +-----------------------+----+-----------------------------------+

Some maths
-----------
Just to play with maths: :math:`\sigma (x) = \frac{1}{1 + e^{-1}}`, Sigmoid
function used in word2vec model

.. tab:: Sigmoid Math

  .. math::

    \sigma (x) = \frac{1}{1 + e^{-1}}

.. tab:: Maths (use Tex notation)

  .. code::

     .. math::

        \sigma (x) = \frac{1}{1 + e^{-1}}

Links
------

External Links
~~~~~~~~~~~~~~~~
.. tab:: External Links

  - To link to an **external URL** just write the URL sphinx will detect it as a link:
    : e.g. ``https://www.mazars.com``:  https://www.mazars.com

    - If you want to name the link use the ```LINK NAME <URL>`__`` pattern (write *LINK
      NAME <URL>* inside backquotes ending with double underscores) e.g. like
      `Mazars <https://www.mazars.com>`__

.. tab:: External Links -- code

  .. code::

    - To link to an **external URL** just write the URL sphinx will detect it as a link:
      : e.g. ``https://www.mazars.com``:  https://www.mazars.com

      - If you want to name the link use the ```LINK NAME <URL>`__`` pattern (write *LINK
        NAME <URL>* inside backquotes ending with double underscores) e.g. like
        `Mazars <https://www.mazars.com>`__

Links to rst with :doc:
~~~~~~~~~~~~~~~~~~~~~~~~
.. tab:: links to rst with :doc:

  - To link to **some other rst document** we use the ``:doc:`` role followed by
    path to rst file (without ``.rst``) into backquotes:
    ``:doc:`/src/path/to_the_rst_file``` e.g.
    :doc:`/docs/sphinx_quickstart/file_organisation`

    - We can rename the link as ``LINK NAME`` with the same pattern as external URLs:
      ``:doc:`LINK NAME </src/path/to_the_rst_file>``` e.g. :doc:`File structure
      </docs/sphinx_quickstart/file_organisation>`

    - .. attention::

         For ``:doc:`` role, the link to e.g. ``file_organisation.rst`` has to start by
         an absolute path starting with a slash ``/src/sphinx_tutorial/...`` and should
         not have the ``.rst`` extention

.. tab:: links to rst with :doc: -- code

  .. code::

    - To link to **some other rst document** we use the ``:doc:`` role followed by
      path to rst file (without ``.rst``) into backquotes:
      ``:doc:`/src/path/to_the_rst_file``` e.g.
      :doc:`/src/sphinx_tutorial/file_organisation`

      - We can rename the link as ``LINK NAME`` with the same pattern as external URLs:
        ``:doc:`LINK NAME </src/path/to_the_rst_file>``` e.g. :doc:`File structure
        </src/sphinx_tutorial/file_organisation>`

      - .. attention::

        For ``:doc:`` role, the link to e.g. ``file_organisation.rst`` has to start by an
        absolute path starting with a slash ``/src/sphinx_tutorial/...`` and should not
        have the ``.rst`` extention

Links to a specific Chapter with :ref:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. tab:: Links to a specific chapter

  - To **link to some specific chapter** use the ``:ref:`` role followed by
    *PATH/TO/RST_FILE:Chapter title* into backquotes:
    ``:ref:`src/path/rst_file:Chapter name``` e.g.
    :ref:`Some maths`

    - .. warning::

        For ``:ref:`` role the path should not start with ``/``, we write
        ``src/sphinx_tutorial`` not ``/src/sphinx_tutorial``

    - If you want to name the link replace the ``PATH/TO/RST_FILE:chapter_name`` with
      ``LINK NAME <PATH/TO/RST_FILE:Chapter name>`` e.g. :ref:`Math exemples
      <Some maths>` or ``:ref:`link to Main index file
      in file_organisation <docs/sphinx_quickstart/file_organisation:Main index.rst file>```

.. tab:: Links to specific chapter -- code

  .. code::

    - To **link to some specific chapter** use the ``:ref:`` role followed by
      *PATH/TO/RST_FILE:Chapter title* into backquotes:
      ``:ref:`src/path/rst_file:Chapter name``` e.g.
      :ref:`docs/sphinx_quickstart/wiki_syntax_demo:Some maths`

      - .. warning::

          For ``:ref:`` role the path should not start with ``/``, we write
          ``src/sphinx_tutorial`` not ``/src/sphinx_tutorial``

      - If you want to name the link replace the ``PATH/TO/RST_FILE:chapter_name`` with
        ``LINK NAME <PATH/TO/RST_FILE:Chapter name>`` e.g. :ref:`Math exemples
        <docs/sphinx_quickstart/wiki_syntax_demo:Some maths>` or :ref:`link to Main index file
        in file_organisation <docs/sphinx_quickstart/file_organisation:Main index.rst file>`

.. note::

  - Sphinx can be used with `markdown <https://spec.commonmark.org/0.30>`_ too but is
    not recomendend neither as powerfull as restructuredtext is.

