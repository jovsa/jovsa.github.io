---
layout: post
title: "Notes: RL Foundational Models"
categories: notes
modified_date: Feb 26, 2022
author:
- Jovan Sardinha
---

![fig 2](/assets/post_assets/rl-foundational-models/fig_2.png)


What the suite looks like:

![fig 3](/assets/post_assets/rl-foundational-models/fig_3.png)
10^40 states

[Museli paper](https://arxiv.org/abs/2104.06159)
* performes about the same as muZero but without planning
* However because it doesn't have a learned internal model, it's not the most sample efficient.

![fig 10](/assets/post_assets/rl-foundational-models/fig_10.png)


Distillation

![fig 15](/assets/post_assets/rl-foundational-models/fig_15.png)

Note: distillation loss is used to train the large model faster.


Auto-curriculum learning

* No-op filtering
* Prioritized level replay

![fig 11](/assets/post_assets/rl-foundational-models/fig_11.png)

![fig 5](/assets/post_assets/rl-foundational-models/fig_5.png)


![fig 6](/assets/post_assets/rl-foundational-models/fig_6.png)



![fig f.1](/assets/post_assets/rl-foundational-models/fig_f_1.png)


Multi-agent:

![fig 8](/assets/post_assets/rl-foundational-models/fig_8.png)


Scaling:

![fig 12](/assets/post_assets/rl-foundational-models/fig_12.png)


![fig 13](/assets/post_assets/rl-foundational-models/fig_13.png)
context window for 300 trial * 5 steps = 1500. However, a 1800 context size is still usefull.

![fig 14](/assets/post_assets/rl-foundational-models/fig_14.png)


