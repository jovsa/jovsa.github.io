---
layout: post
title: "The Case for Meta-Learning in Production"
categories: machine-learning
author:
- Jovan Sardinha
metadata:
  related idea:
---
## Background
Situtaion: Building ML systemes is great (when they work) -> From simple huristics, regression to massive nets. This is because we have figured out how to close the cycle time from resrearch idea -> prod.
Compliation: Bulding ML systems is quite tedious and requires too much domain knowledge.
 - Change model type and a few assumptions
  - Is tedious with a lot of redundant steps/choices
  - Requires too much domain knowledge
  - High chance of failure and wasted effort
  - High maintainance overhead

 - Too much for everyone to do it (silent failures)
Q: Having been working in the field and talking to a lot of people - Is there a better way or are we stuck in this tedious hell?
A: Yes, meta-learning via multi-taks learning
```
https://xkcd.com/1425/
```

## Motivating Example
 - Motivating exmaple: use mensa IQ test (http://www.graduatewings.co.uk/classic-abstract-test-patterns/) (image 1)
  - Give 1 hint and see if scores improves

How did you accomplish this?
 - You havd a lot of existing knowledge and you could levarage it to make choices
 - The hint definately helped

Just like how your previous knowledge helped solve this problem, does this give us hints on how we can build systems that can better generalize to realted tasks?

```
Agenda:
 - State of the Ecosystem
 - What  is multi-task and meta learning
 - Why this matters in the bigger picture
```

## State of the Ecosystem
[trend graphs](https://hai.stanford.edu/sites/default/files/ai_index_2019_report.pdf)
[also use these ](https://course.fullstackdeeplearning.com/course-content/infrastructure-and-tooling)
[also chip's](https://huyenchip.com/2020/06/22/mlops.html)
**The production ecosystem**
 - Supervised learning is becoming more and more easy
  - tools are getting better
  - show trends of usage going up
  - But it's tedious and error prone and takes a long time

**The research ecosystem**
 - Research is collecting more building block (ala Jeff Clune)
    - show number of papers published
    - show number of components created
      - Show compoenents of Papers who Code
    - But it's tedious and error prone and takes a long time

 = Rube Goldberg contraptions (the real value is in the components systems)
 - High activation energy
 - High investment costs
 - Lack of expertise
 - hard to collaborate


## Learning from History
Looking at history
 - If you were to build a system for the IQ test task how will you do it?
  - past examples and categorize
  - Features
  - etc...

 - this trend suggests that there is a better way to do things. We also know that as we scale compute+data+models we can learn more and mre sopisticated sutff

## Meta Learning Nomenclature
 - Supervised learning 1 line deifinition
 - Meta learning 1 line definition
  - Learn a broader definition of taks so that we can just fine tune on the subset of the distribution
    - If you are a use your favourite website(s), the meta distribution is user behavior and the subste distributions are:
     - the distribution of user behavior while reading a post
     - the distribution of users while they comment on a post
     - the distribution of users when they consume from a newsfeed
     .... etc..
```
state assumptions: on dependence of params and tasks
```
But multi-task learning is just a special case of meta-learning where we learn params of the meta distribution for a predefined set of taks.
`add derivations from C. Finn see slides`

## Case Study from C. Fin Lab
 - ML 45 meta learning is really low (see slide on 40:28)
 - multi-task algorithms also struggle (see slie on 40:46)
 - why the poor results?
  - optimization problem? (see slides on 42:15)
 - very similar in prod too ^
 [Meta-World: A Benchmark and Evaluation for Multi-Task and Meta Reinforcement Learning](https://arxiv.org/pdf/1910.10897.pdf)



## Literature review
   - P. Abeil Lecture + why now slides (from Cheslea Flinn)
   fall into one of two camps
     - architectures (not good idea because they were domain determant)
     - Task weighted and gradient sharring solution

Don't think you need to do either or, but task weighted stuff is more scalable.

## Problems
   - Negative Transfer
   - Overfitting
    - Multi-task a form of regularization
   - multi-talk is just a interem stemp to meta

## Implications for Production Systems
 - Cheap to experiment on new cases; since we can quickly apply to another task
  - You can decouple data generation ML eng + ML infra
 - Changes this from a Data -> compute (given that we have an algorithm) (reference OpenAI)
 - Ability of small players to come in and get started quickly (because they can bootstrap off larger models)

 - Ability to quickly collaborate with others (PM, designers, etcc.) [for ex. what's happening with GPT-3] experiment. This will allow ML relegated to a few ML "experts".


## In Summary:
  - @TODO


## Feedback from ML Guild
 - What is the differance between this and fine tuning?
 - Reddit will have an advantage in Meta learning models becaues they have interaction data
 - If you have a design decision that is implimneted by a human it's only a matter of time until it become a bottleneck in generalization
 - Stress on the ML + ML infra values
  - It's a gradient multi-task -> meta-learning (Garret's quetions)
 - A lot of questions on negative transfer (maybe with respect to Adversarial training)
 - People didn't understand that you can train on tasks that are not realted (ex. Garret's quetions)and they don't realize that it's much better
 - People really want to start reading into multi-task learning (give lunach in points)
 - People really want to know a playbook in prod






Given 1 more test shape from the IQ test (image 2)



```
**Title**

* Multi-task and Meta learning in production
* The quiet Learning to Learn Revolution
* The Data driven paradigm
* A pragmatic view into scaling ml systems
* The Case for Meta-learning in Production

**Thumbnail**

```
