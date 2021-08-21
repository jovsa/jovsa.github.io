---
layout: post
title: "7.3: Taking turns tossing a die"
categories: notes
chapter: "7: Conditional Probability"
modified_date: "Aug 21, 2021"
author:
- Jovan Sardinha

---


Let $$A_1$$, $$B_1$$, $$C_1$$, be the probability for each player to exit the game first.

We also know $$A_1 + B_1 + C_1 = 1$$

Hence,

$$P(A_1) = \frac{1}{6} + (\frac{5}{6})^3 P(A_1)$$

$$P(A_1) = \frac{36}{91}$$

similarly:

$$P(B_1) = \frac{5}{6} * \frac{1}{6} + (\frac{5}{6})^3 P(B_1)$$

$$P(B_1) = \frac{30}{91}$$

similarly:

$$P(C_1) = (\frac{5}{6})^2 * \frac{1}{6} + (\frac{5}{6})^3 P(C_1)$$

$$P(C_1) = \frac{25}{91}$$

---

We know

$$P(B_2|A_1) = P(C_2|B_1) = P(A_2|C_1) $$

similarly:

$$P(C_2|A_1) = P(A_2|B_1) = P(B_2|C_1) $$


Thus:

$$P(A_1 \cap B ) = P(B_2|A_1)*P(A_1)$$

> TODO (jovsa): Do we need any more parts to solve this?