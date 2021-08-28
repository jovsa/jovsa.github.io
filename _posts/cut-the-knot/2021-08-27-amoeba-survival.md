---
layout: post
title: "9.2: Amoeba's Survival"
categories: notes
chapter: "9: Recurrences and Markov Chains"
modified_date: "Aug 20, 2021"
author:
- Jovan Sardinha
---
Given:
$$ P(Reproduce) =  \frac{3}{4}$$
$$ P(Die) =  \frac{1}{4}$$

Q: What is the probability that the original amoeba will go on forever.


We know $$ P(Reproduce) + P(Die) = 1$$

Let $$P(Survive)$$ be the probability of the original amoeba survival after infinite iterations.

For generation two onwards:
$$(1-P(Survive))^2$$ is the probability that both amoebas will perish after iteration 1 (zero indexed).
Hence,

$$P(Survive) = P(Reproduce)(1-(1-P(Survive)))$$

Hence,

$$P(Survive) = \frac{2P(Reproduce)-1}{P(Reproduce)}$$

$$P(Survive) = \frac{2}{3}$$

TODO(jovsa): Can this be solved as a biased random walk?