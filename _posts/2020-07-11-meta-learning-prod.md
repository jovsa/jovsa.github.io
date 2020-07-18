---
layout: post
title: "A Case for Meta-Learning in Production"
categories: machine-learning
author:
- Jovan Sardinha
metadata:
  related idea:
---
## Background
Machine learning systems works really well in production. This is because the field has figured out a way to tighten the cycle time from research to production. However, building ML systems:
* Is tedious: There are a lot of choices around approach, data, metrics, architecutre for every system. The multitude of choices inevitably allows for more chance to make mistakes.
* Requires a lot of domain knowledge: Around the data, what are the best metrics and what are the weak points of the current model.
* High chance of failure: Most projects fail <sup>[1]</sup>. This inevitably means there is wasted effort and time.
* High maintenance overhead: After you get past the above barriers, you have to maintain this beast on live traffic.

In addition to facing a lot of these issues first hand over the past few years, I have been spending a lot of time talking to other in the field facing similar problems. I wanted to know if there is a better way or are we stuck in this tedious world?

<div style="text-align: center">
  <img src="/assets/post_assets/mm-prod/xkdc_opening.png" width="300" />
  <figcaption>Fig.1 - obligatory xkdc post</figcaption>
</div>

### A Motivating Example

Before we dive deep into the detials, let's use a motivating example to drive our thinking.

If your brain was a machine learning model, that has been trained over the years of your life, could you take the 12 new training samples and try to guess which class the 1 test sample falls in?

<div style="text-align: center">
  <img src="/assets/post_assets/mm-prod/motivating_example.png"/>
  <figcaption>Fig.2 - motivating example<sup>[2]</sup></figcaption>
</div>

Thing about how did you accomplish this?
 - You havd a lot of existing knowledge and you could levarage it to make choices

Just like how your previous knowledge helped solve this problem, does this give us hints on how we can build systems that can better generalize to realted tasks?

How come our neural nets need so many examples, yet, you from 12 examples was able to come up with the right answer?

To see how humans this, maybe we have a strong prior that we can use to solve the problem at hand. This is exactly what happened when you try to solve the `motivating problem`. Can we take this approach with our ML systems?

The correct answer is `Set A`.


These set of questions is something that I have spend a lot of time recently. In additonal to facing these problems in places that I work at, after talking to colleages in the industry, I noticed that these are similar problems that others in the industry face. If these set of questions are something that interest you, I have structed my research in the following way:

## Agenda
 - State of the Ecosystem
 - Meta-learning basics
 - Literature review
 - Why this matters in the bigger picture


## State of the Ecosystem

<div style="text-align: center">
  <img src="/assets/post_assets/mm-prod/ecosystem_state.png" width="800" />
  <figcaption>Fig.3 - The state of machine learning systems<sup>[3][4]</sup></figcaption>
</div>


**The production ecosystem**
 - Supervised learning is becoming more and more easy and the realated tools are getting better [5]
 - But it's tedious and error prone and takes a long time

**The research ecosystem**
 - Research is collecting more building blocks [6][7]
 - But it's tedious and error prone and takes a long time

**But in reality**
 - High activation energy
 - High investment costs
 - Lack of expertise
 - hard to collaborate
 Assembling these building blocks is like assembling legos


## Learning from History
Hand-designed things are ultimately outperformed by learned solutions

Features
 - HOG/SIFT -> Deep Learning

Architectures
 - Hand designed -> Learned

Hyperparameters
 - Manually tuned -> Learned

This trend suggests that there is a better way to do things: If you have a design decision that is implimneted by a human it's only a matter of time until it become a bottleneck in the overall system.
We also know that as we scale compute+data along with model complexity you see improvements in performance [8][9]

## Meta Learning
Deep neural network models in production do a good job of learning data distributions. For a lot of machine learning teams this is their bread and butter. Although tedious, there is good enough expertise around this area.

 - talk about gradients

<div style="text-align: center">
  <img src="/assets/post_assets/mm-prod/supervised_2_meta.png"/>
  <figcaption>Fig.3 - The state of machine learning systems<sup>[3][4]</sup></figcaption>
</div>

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

**transfer learning**
 - What is the differance between this and fine tuning?
 - talk about the difference between this and transfer learning
   - specifically from the POV of engieering and product


**Negative transfer**
 - People didn't understand that you can train on tasks that are not realted (ex. Garret's quetions)and they don't realize that it's much better
 - A lot of questions on negative transfer (maybe with respect to Adversarial training)

**better WHY**
 - People really want to know a playbook in prod
  - transfer learning -> multi-task learning -> meta learning
 - Reddit will have an advantage in Meta learning models becaues they have interaction data
 - If you have a design decision that is implimneted by a human it's only a matter of time until it become a bottleneck in generalization
 - Stress on the ML + ML infra values; especially how you can decouple ideas.

 *ml + infra values*
  - more compelling WHY? -> would not encourage @Rebecca to go and try this out over the weekeing
    - don't think most directors will invest with so little WHY
  - Provide more value proposition for engineering / product and how this simplifies their life too

**More getting started resources**
 - Provide a hook for more resources to get started (also ties to motivation)
 - explain initial digram of rube goldberg more! -> think from the POV of rebecca
 - the gradient pictures definately helped
 - People really want to start reading into multi-task learning (give lunach in points)


**Need more storyline**
 - We have this awesome tools called ML. However, it's getting hard and tedious to impliment -> build something along the lines of a hero's narrative.



Given 1 more test shape from the IQ test (image 2)


## References
[1] https://www.prnewswire.com/news-releases/pactera-white-paper-reveals-85-percent-of-ai-projects-ultimately-fail-300871826.html

[2] http://www.graduatewings.co.uk/classic-abstract-test-patterns/

[3] [AI research trend graphs](https://hai.stanford.edu/sites/default/files/ai_index_2019_report.pdf)

[4] [ML tools ecosystem](https://course.fullstackdeeplearning.com/course-content/infrastructure-and-tooling)

[5] [What I learned from looking at 200 machine learning tools](https://huyenchip.com/2020/06/22/mlops.html)

[6] [Notes from Danny Britz](https://twitter.com/dennybritz/status/1262682676709990401)

[7] [Components - Papers with Code](https://paperswithcode.com/methods)

[8] [An Empirical Model of Large-Batch Training](https://arxiv.org/pdf/1812.06162.pdf)

[9] [Scaling Laws for Neural Language Models](https://arxiv.org/pdf/2001.08361.pdf)

```
**Title**

* Multi-task and Meta learning in production
* The quiet Learning to Learn Revolution
* The Data driven paradigm
* A pragmatic view into scaling ml systems
* The Case for Meta-learning in Production

**Thumbnail**

```
