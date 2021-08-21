---
layout: post
title: "4.2: Black Boxes in a Chain"
categories: notes
chapter: "4: Basic Probability"
modified_date: "Aug 20, 2021"
author:
- Jovan Sardinha
---

Given:
* `N` boxes are chained
* Output of previous is the input of the next.
* Each box passes output with prob. `p` and changes it with  prob. `1-p`

Q: What is the prob. of having the last output the same as the original input?

---

We know:
1. $$p+(1-p)=1$$
2. If N is even, then the input/output will coincide since it's symmetric. Else, not.


> *Subproblem 1.1: Given a unbiased coin, head show up with `p`. What is the probability of EVEN number of heads after `N`?*

$$P(even) = \frac{1}{2} + \frac{1}{2}(1-2p)^{N}$$

[reference](https://www.cut-the-knot.org/Probability/EvenHeads.shtml#)

> *Subproblem 1.2: Given a coin flip with `p`, what is the probability of ODD number of heads after `N`?*
$$P(odd) = 1-P(even)$$

$$P(odd) = 1-(\frac{1}{2} + \frac{1}{2}(1-2p)^{N})$$

$$P(odd) = 1-\frac{1}{2} - \frac{1}{2}(1-2p)^{N})$$

$$P(odd) = \frac{1}{2} - \frac{1}{2}(1-2p)^{N}$$















