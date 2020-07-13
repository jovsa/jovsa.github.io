---
layout: post
title: "WIP"
categories: template
author:
- Jovan Sardinha
metadata:
  related idea:
---

Opening (Rework -  get to the hook faster)
```
  Over the past few years, machine learning systems that have acess to a lot of data have gotten realatively good at learning one task, in one environment, starting from scratch and rely on detailed supervision and guidance.

  One of the main things I have been thinking very hevily on over the past year or so is how do we build machine learning systems that work well with online systems.
  Why online system?
  * Because they have to deal with the constantly changing real world (new trends, users, etc...)
  * have to generalize across tasks and objectives (of various stakeholders)
  * supervisation cannot be taken for granted
  * hanrd to have uniform expertize and scale it  (ML enginering)

  We humans are generalist, but more imporatantly in the past few months, systems have began to generalize boyond this trend. Also this is usefull for when you have teams that do not have the ability to hire ML staff. However, this is not something that I see a lot in many fields (NLP, vision, production and also in robotics)
```

 - Motivating exmaple: use mensa IQ test (http://www.graduatewings.co.uk/classic-abstract-test-patterns/) (image 1)
  - Give 1 hint and see if scores improves

How did you accomplish this?
 - You havd a lot of existing knowledge and you could levarage it to make choices
 - The hint definately helped

Just like how your previous knowledge helped solve this

Agenda:
 - State of the Ecosystem (lieterature review)
 - What  is multi-task and meta learning
 - Why this matters in the bigger picture


State of the Ecosystem
 - Supervised learning is becoming more and more easy
  - tools are getting better
  - show trends of usage going up, but it's tedious

 - Research is collecting more building block (ala Jeff Clune)
   - Show compoenents of Papers who Code

 = Rube Goldberg contraptions (the real value is in the components systems)
 - High activation energy
 - High investment costs
 - Lack of expertise
 - hard to collaborate

Looking at history
 - If you were to build a system for the IQ test task how will you do it?
  - past examples and categorize
  - Features
  - etc...

 - automate -> everything?

 Why now?

Meta Learning?
 - why meta learning does not work (C. Flinn)
 - Explanation of meta learning
 - via supervised multi-task learning (C. Flinn) (which is just a special case of multi-task learning)

 Literature review
   - P. Abeil Lecture
   fall into one of two camps
     - architectures
     - gradient sharing

Problems
   - Negative Transfer
   - Overfitting
    - Multi-task a form of regularization
   - multi-talk is just a interem stemp to meta

However,

Implications to practise
 - Cheap to experiment on new cases; since we can quickly apply to another task
 - Changes this from a Data -> compute (given that we have an algorithm)
  - OpenAI scaling laws;
 - Ability of small players to come in and get started quickly (because they can bootstrap off larger models)
 - Ability to quickly collaborate with others (PM, designers, etcc.) [for ex. what's happening with GPT-3] experiment. This will allow ML relegated to a few ML "experts".

In Summary:
  - @TODO



Given 1 more test shape from the IQ test (image 2)



```
**Title**

* Multi-task and Meta learning in production
* The quiet Learning to Learn Revolution
* The Data driven paradigm
* A pragmatic view into scaling ml systems

**Thumbnail**

```



## The story

1. **Who** is the character?
  * The ML Engineeer
2. **What** do they want?
  * Path to building machine learning systems is quite manual. Because of this things don't scale
3. **Why** can’t they get what they want?
  * learning each task from scratch, won't cut it
  * Don't always have a large dataset
  * Data has a long tail
  * What to quickly learing something news (new users, new environment)
4. What are the **stakes**? Ie: What will happen if they don’t get what they want?
  * Mundaine job of training each induvidual taks and specializing to it (very hyper optimized)
5. Who or what **helps** them?
  * Building models that generalize
6. **How** do they get what they want?
  * Multi-task -> Meta Learning
7. How are they **transformed** by this experience?
  * They can work on helping genralize but also improve the quality per task

## Possible Audience
* Hiring Managers
* Researchers
* Casual Readers

## The essay

> The first 15 seconds should immediately reinforce the value proposition that was promised in the title + thumbnail. We no longer want an extended 'welcome back to the channel my name is ali i'm a junior doctor working in cambridge blah blah'. We need a snappy hook that tells people "this video will deliver on what I was promised". This is arguably the most important part of the video.
> "Hey friends welcome back to the channel. Today we're talking about abc" is the longest that the intro should be. In an ideal world, we'd design a hook that doesn't even have a 'welcome back to the channel', it just launches straight into delivering value.

**Intro**
 - The need to generalize and hit all edge cases
 - use mensa IQ test (http://www.graduatewings.co.uk/classic-abstract-test-patterns/)

**Value (aiming for 50% retention by the end)**

**Point to a custom playlist / video**
> The objective of the ending is to keep them watching by pointing them to a custom playlist of 3-4 other videos that they might be interested in. Eg: "if you liked this video you'll love this custom playlist i've made for you that has my most popular videos about how to study that have apparently changed people's lives. Thanks for watching, and see you later".

## References
### Story Structure
**Hero's Journey**

{% include image.html file="template_post/hero_journey.png" %}

**Three Act Structure**
{% include image.html file="template_post/three_act_structure.png" %}
1. External Order
    1. Who is the character and what does normal look like?
    2. In what way does life feel incomplete?
    3. What prompts the character to take action?
2. External Chaos
    1. At what point is the character no longer in the status quo and why?
    2. In what ways does the character adapt to new surroundings?
    3. How does he / she get help navigating challenges?
3. Internal Chaos
    1. What does the ‘final test’ look like?
    2. Does the character prevail?
    3. What internal realisation does the character have?
4. Internal Order
    1. At what point is the character not back in the status quo and why?
    2. How is the character clearly different?
    3. In what ways does he change the world?

## Publishing Checklist
- [ ] Publish on Medium
- [ ] SBTLOM
- [ ] Share on Twitter
- [ ] SBTLOT
- [ ] Answer initial comments
