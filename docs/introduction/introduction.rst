===================
Introdution
===================


Motivation
===================
The work of this PhD is in the context of a CIFRE1 thesis with Schneider Electric and two
public research laboratories, LIG2 and GIPSA-lab3. Within Schneider Electric, the PhD took
place in the Analytics for Solutions (A4S) team, part of the Technology and Strategy entity.
Among the wide rage of activities of the A4S team, in the context of system modeling (e.g.,
buildings, sensor networks, Internet of Things), two topics are at least studied: modeling by
physical models (white/grey-box) and modeling by machine learning algorithms (black-box).
With the increase of the amount of data and sensors that collect data, modeling accurately
systems through a priori equations (white/grey-box) for some prediction tasks has become
more and more difficult. Within the vast amount of applications in Schneider Electric, some
applications involve in particular temporal data, e.g., forecasting the energy consumption
in a building, virtual sensors for industrial processes, fault detection and prediction for
assets maintenance. More generally, Schneider Electric, like many other companies in
various application domains (medicine, marketing, meteorology, etc.) has taken a growing
interest these last decades in machine learning problems (classification, regression, clustering)
that involve time series of one or several dimensions, of different samplings, etc. A time
series can be seen in signal processing and in control theory as the response of a dynamic
system. Contrary to static data, time series are more challenging in the sense that the
temporal aspect (i.e., order of appearance of the observations) is an additional key information.


Problem statement and contributions
======================================
In this work, we focus on classification problems of monovariate time series (data of 1 di-
mension) with a fixed sampling rate and of same fixed lengths. Among the wide variety of
algorithms that exist in machine learning, some approaches (e.g., k-Nearest Neighbors (k-
NN)) classify samples using a concept of neighborhood based on the comparison between
samples. In general, the concepts of 'near' and 'far' between samples is expressed through a
distance measure. Time series can be compared based not only on their amplitudes like static
data but also on other characteristics, called modalities, such as their dynamics or frequency
components. Many metrics for time series have been proposed in the literature such as the
Euclidean distance [Din+08], the temporal correlation [FDCG13], the Fourier-based distance
[SS12a]. A detailed review of the major metrics is proposed in [MV14]. In general, existing
metrics involve one modality (characteristic) at the global scale (i.e., involving systematically
all the time series observations). We believe also that the multi-scale aspect of time series
(i.e., involving a temporal part of the observations), not present in static data, could enrich
the definition of the existing metrics.

In this work, our objective is to learn a combined multi-modal and multi-scale time series
metric for a robust k-NN classifier. The main contributions of the PhD are:

- The definition of a new space representation: the pairwise dissimilarity space where each pair of time series is embedded as a vector described by basic temporal metrics.
- The definition of basic temporal metrics that involve one modality at one specific scale.
- The learning of a multi-modal and multi-scale temporal metric for a large margin k-NN classifier of univariate time series.
- The definition of the general problem of learning a combined metric as a metric learning problem using the dissimilarity representation.
- The proposition of a framework based on Support Vector Machine (svm) and a linear and non-linear solution to define the combined metric that satisfies at least the properties of a dissimilarity measure.
- The comparison of the proposed approach with standard metrics on a large number of public datasets.
- The analysis of the proposed approach to extract the discriminative features that are involved in the definition of the learned combined metric.


Organization of the manuscript
======================================
The first part makes a review of existing methods in machine learning and metrics for time
series. The first chapter presents classical approaches in machine learning. We recall the
general principle and framework in supervised learning and focus on two machine learning
algorithms: the k-Nearest Neighbors (k-NN) and the Support Vector Machine (svm). In the
second chapter, we review some basic terminology for time series and recall at least three
types of metrics proposed for time series: amplitude-, behavior- and frequential-based.
The second part of the manuscript proposes a Multi-modal and Multi-scale Temporal Metric
Learning (m2tml) approach for a robust k-NN classifier of time series. In the third chapter,
we first review the concept of metric learning for static data and focus on a framework of
metric learning for nearest neighbors classification proposed by Weinberger & Saul [WS09].
We then present a new space representation, the pairwise dissimilarity space based on a
multi-modal and multi-scale time series description and their corresponding basic metrics.
Then, we formalize the general m2tml optimization problem using the pairwise dissimilarity
space representation. From the general formalization, we propose at least three different
formalizations. The first and second propositions involve different regularizers, allowing to
learn an a priori linear or non-linear form of the combined metric. The third proposition
presents a framework based on svm and a solution to build the combined metric, in the linear
and non-linear context, satisfying at least the properties of a dissimilarity measure. Finally,
Chapter 4 presents the experiments conducted on a wide range of 30 public and challenging
datasets, and discusses the results obtained.