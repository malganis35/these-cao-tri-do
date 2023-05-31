Chapter 1: Related work
============================

.. admonition:: Summary
   :class: hint

   In this chapter, we recall some concepts of machine learning. First, we review the
   principles, the learning framework and the evaluation protocol in supervised learning.
   Then, we present the algorithms used in our work: :math:`k`-Nearest Neighbors (:math:`k`-NN) and 
   Support Vector Machines (`svm`).


1.1 Classification Regression
----------------------------------------

In this section, we review some terminology used in machine learning. First, we recall the
principle of machine learning. Then, we detail how to design a framework for supervised
learning. After that, we present model evaluation. Finally, we review data normalization.

1.1.1 Machine learning principle
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The idea of machine learning (also known as pattern learning or pattern recognition) is to
imitate with algorithms executed on computers, the ability of living beings to learn from
examples. For instance, to teach a child how to read letters, we show him during a training
phase, labeled examples of letters ('A', 'B', 'C', etc.) written in different styles and fonts.
We don't give him a complete and analytic description of the topology of the characters but
labeled examples. Then, during a testing phase, we want the child to be able to recognize and
to label correctly the letters that have been seen during the training, and also to generalize
to new instances :cite:`Mei2015`

Let :math:`X=\{\textbf{x}_i,y_i\}_{i=1}^n` be a training set of n vector samples :math:`\textbf{x}_i \in \mathbb{R}^p` and :math:`y_i` their corresponding
labels. The aim of supervised machine learning is to learn a relationship (model) :math:`f` between
the samples :math:`\textbf{x}_i` and their labels :math:`y_i` based on examples :cite:`Bishop2006,Dreyfus2006,Duda1973`. After the
training phase based on labeled examples :math:`(\textbf{x}_i,y_i)`, the model :math:`f` has to be able to generalize on
the testing phase, *i.e.*, to give a correct prediction :math:`y_j` for new instances :math:`\textbf{x}_j` that haven't been
seen during the training.

When :math:`y_i` are class labels (*e.g.*, class 'A', 'B', 'C' in the case of child's reading), learning the
model :math:`f` is a classification problem; when :math:`y_i` is a continuous value (*e.g.*, the energy consumption
in a building), learning :math:`f` is a regression problem. For both problems, when a part of the
labels :math:`y_i` are known and another part of :math:`y_i` is unknown during training, learning :math:`f` is a semi-
supervised problem :cite:`Zhu2007`. Note that when the labels :math:`y_i` are totally unknown, learning :math:`f`
refers to a clustering problem (unsupervised learning) :cite:`Jain1999,Chen1996`. Semi-supervised
and unsupervised learning problems are out of the scope of this work.




1.1.2 Model selection in supervised learning
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A key objective of supervised learning algorithms is to build models f with good generalization
capabilities, i.e., models f that correctly predict the labels yj of new unknown samples xj .
There exist two types of errors committed by a classification or regression model f: training
error and generalization error. Training error is the error on the training set and generalization 
error is the error on the testing set. A good supervised model f must not only
fit the training data X well, it must also accurately classify records it has never seen before
(test set XT est). In other words, a good model f must have low training error as well as
low generalization error. This is important because a model that fits the training data too
much can have a poorer generalization error than a model with a higher training error. Such
situation is known as model overfitting (Fig. 1.1). In general, the complexity in learning can
be measured through 2 measures: the information complexity and the computational complexity. 
The information complexity concerns the generalization performances of the learner:
how many samples are needed? How much time the learner will take to converge to its optimal
solution? Etc. The computational complexity deals with the computational resources needed
to make a new prediction based on the training data.
In most cases, learning algorithms require to tune some hyper-parameters. A first approach
could consist in trying all the possible combinations of hyper-parameters values and keep the
one with the lowest training error. However, as discussed above, the model with the lowest
training error is not always the one with the best generalization error. To avoid overfitting,
the training set can be divided into 2 sets: a learning and a validation set. Suppose that we
have two hyper-parameters to tune: C and γ. We make a grid search for each combination
(C, γ) of the hyper-parameters, that is in this case a 2-dimensional grid (Fig. :ref:`Overfitting`). For each
combination (a cell of the grid), the model is learned on the learning set and evaluated on the
validation set. At the end, the hyper-parameters with the lowest error on the validation set are
retained and the model f is learned on all training data using these optimal hyper-parameters.
This process is referred to as the model selection.

.. _Overfitting:

.. figure:: /docs/related_work/images/Overfitting.png
   :width: 300px
   
   An example of overfitting in the case of classification. The objective is to separate blue points from red points. Black line shows a classifier $f_1$ with low complexity where as green line illustrates a classifier $f_2$ with high complexity. On training examples (blue and red points), the model $f_2$ separates all the classes perfectly but may lead to poor generalization on new unseen examples. Model $f_1$ is often preferred.