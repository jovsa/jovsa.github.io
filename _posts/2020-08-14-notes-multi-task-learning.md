---
layout: post
title: "Notes: Multi-task Learning"
categories: notes
modified_date: "July 17, 2021"
author:
- Jovan Sardinha
---

## Background

**Elevator pitch**: Multi-task learning (MTL) is a training paradigm in which machine learning models are trained with data from multiple tasks simultaniously. The model does this by learning a shared representation to learn common ideas between collection of related tasks. In addition to a lot of active research in the field, many industrial application have seen success.

**Goals of this document**:
 * A collection of my notes as I read more about this field.
 * Help me create a mental map of the MTL field.
 * Get ideas on what are areas that have seen academic success and might be good to try in applications.

**Non Goals of this document**:
* Not going to cover all the pre-requisite knowledge.
* Deep notes per paper.
* Not polished for consumption - will be constantly updated.

**Terminology**:
  * Multi-task learning - MLT

**Benifits**:
  * Eliminate the data sparcity problem. In this case, the number of labelled data in each task is insufficient.
  * Related to [transfer learning](https://jovsa.github.io/notes/2020/05/15/notes-transfer-learning.html)
  * Pre-requisites for [meta learning](https://jovsa.github.io/notes/2020/07/01/notes-meta-learning.html) and [life-long learning](https://jovsa.github.io/notes/2021/04/10/notes-continual-lifelong-learning.html)


**Drawbacks**:
  * Negative tansfer (or destructive transfer) - Improving the model performance on one task will lower the performance on other tasks.


### Terminology
### Pros & Cons


## Architectures
### Architectures for Computer Vision
### Architectures for Natural Language Processing
### Architectures for Reinforcement Learning
### Architectures for Multi-Modal Learning


## Optimization


## Task Relationship Learning



## Benchmarks

### Benchmarks for Computer Vision
### Benchmarks for Natural Language Processing
### Benchmarks for Reinforcement Learning
### Benchmarks for Multi-Modal Learning


## MTL with other paradigms

## Theoretical Analysis