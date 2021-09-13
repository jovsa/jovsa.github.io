---
layout: post
title: "4.24: Acting as a Team"
categories: notes
chapter: "4: Basic Probability"
modified_date: Sep 13, 2021
author:
- Jovan Sardinha

---

### Question

Three hats (each of which is either red or blue) are places on the head of three people facing each other. Each has to guess the color of his hat, if possible. There are some rules to the task:

1. The players act as a team. The team wins or losses, not the individuals.
2. After the hats have been places on the heads there must be no communication between team members.
3. Each player may guess only once and all those who choose to make a guess do so simultaneously on a signal.
4. Each player is allowed to pass rather than make a guess.
5. The team win only if at least one player makes a correct guess and no player guesses incorrectly.

Devise a strategy (that can be discussed before the game starts) and compute the resulting probability of success. Try to maximize the probability of success.

### Approach

If each of the three players were to guess randomly, then the probability of success is:

$$ P(success) = (\frac{1}{2})^3 = \frac{1}{8}$$

Each player can make 3 choices (red, blue, pass), making $$3^3 = 27$$  total choices.

Evaluating strategies around *passing*:

* If all three players pass, then the probability of success is = 0. This is worse than the baseline.
* If two players pass, there are 6 possible answers each with probability $$\frac{1}{2} $$ of being the correct guess.
* If one player pass, there are 12 possible answers each with probability $$\frac{1}{4} $$ of being the correct guess.

Hence, finding the probability of success of this strategy:

$$ = \frac{1}{27}(0*1 + \frac{1}{2}*6 + \frac{1}{4}*12 + \frac{1}{8}*8)$$

$$ = \frac{7}{27} $$

$$ = \frac{1}{4} $$



