Related work
============================

.. admonition:: Summary
   :class: hint

   In this chapter, we recall some concepts of machine learning. First, we review the
   principles, the learning framework and the evaluation protocol in supervised learning.
   Then, we present the algorithms used in our work: k-Nearest Neighbors (k-NN) and 
   Support Vector Machines (svm).


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
to new instances [Dre+06]

Let X = {xi, yi}n, i=1 be a training set of n vector samples xi ∈ Rp and yi their corresponding
labels. The aim of supervised machine learning is to learn a relationship (model) f between
the samples xi and their labels yi based on examples [Bis06]; [Dre+06]; [DH73]. After the
training phase based on labeled examples (xi, yi), the model f has to be able to generalize on
the testing phase, i.e., to give a correct prediction ˆyj for new instances xj that haven't been
seen during the training.

When yi are class labels (e.g., class 'A', 'B', 'C' in the case of child's reading), learning the
model f is a classification problem; when yi is a continuous value (e.g., the energy consumption
in a building), learning f is a regression problem. For both problems, when a part of the
labels yi are known and another part of yi is unknown during training, learning f is a semi-
supervised problem [Zhu07]. Note that when the labels yi are totally unknown, learning f
refers to a clustering problem (unsupervised learning) [JMF99]; [CHY96]. Semi-supervised
and unsupervised learning problems are out of the scope of this work.