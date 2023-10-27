---
layout: post
title: "Notes: Arguments"
categories: notes
modified_date: Oct 24, 2023
author:
- Jovan Sardinha
---

## Workbook on Arguments

Link to [book](https://www.amazon.com/Workbook-Arguments-Complete-Critical-Thinking/dp/162466833X)

* Ch1: Short arguments
  * Rule 1: Identify premise and conclusion
  * Rule 2: Develop you ideas in a natural order
  * Rule 3: Start from a reliable premise
  * Rule 4: Be concrete and concise
  * Rule 5: Build on substance, not overtone
  * Rule 6: Use consistent terms
* Ch 2: Generalizations
  * Rule 7: Use more than one example
  * Rule 8: Use representative examples
  * Rule 9: Background rates may be critical
  * Rule 10: Statistics needs a critical eye
  * Rule 11: Consider counterexample
* Ch 3: Arguments by analogy
  * Rule 12: Analogies require
* Ch 4: Sources
  * Rule 13: Cite your sources
  * Rule 14: Seek informed sources
  * Rule 15: Seek impartial sources
  * Rule 16: Cross-check sources
  * Rule 17: Use the web with care
* Ch 5: Causes
  * Rule 18: Causal arguments start with correlations
  * Rule 19: Correlations may have alternate explanations
  * Rule 20: Work towards the most likely explanations
  * Rule 21: Expect complexity
* Ch 6: Deductive arguments
  * Rule 22: Modus poneus
  * Rule 23: Modus tollens
  * Rule 24: Hypothetical syllogims
  * Rule 25: Disjunctive syllogims
  * Rule 26: Dillemma
  * Rule 27: Reductio ad absurdum
  * Rule 28: Deductive arguments in several steps
* Ch 7: Extended arguments
  * Rule 29: Explore the issue
  * Rule 30: Spell out the basic arguments
  * Rule 31: Defend basic premises with arguments of their own
  * Rule 32: Consider objections
  * Rule 33: Consider alternatives
* Ch 8: Essays
  * Rule 34: Jump right in
  * Rule 35: Make a definite claim or proposal
  * Rule 36: Your argument is your outline
  * Rule 37: Detail objections and meet them
  * Rule 38: Use your feedback
  * Rule 39: Modesty
* Ch 9: Oral arguments
  * Rule 40: Reach out to your audience
  * Rule 41: Be fully present
  * Rule 42: Signpost your argument
  * Rule 43: Offer something positive
  * Rule 44: Use visual aids sparingly
  * Rule 45: End in style
* Ch 10: Falacies
* Ch 11: Definations
  * Rule D1: When terms are unclear, get specific
  * Rule D2: When terms are contested, work from the clear case
  * Rule D3: Definitions don’t replace arguments

![](/assets/post_assets/arguments/deductive_arguments_notes.png)

---

## Logic 101

[Link to course](https://gametheory101.com/courses/logic-101/)
[Link to playlist](https://www.youtube.com/playlist?list=PLKI1h_nAkaQq5MDWlKXu0jeZmLDt-51on)

### Operations

* Negation: `~`
* OR/Disjunction (inclusive): `v`
* XOR (exclusive):
* AND/Conjunction: `^`
* Conditional: `P=>Q`; `P` is the antecedent, `Q` is the consequent
* Bi-conditional (if and only if): `P<=>Q`; `P` is the antecedent, `Q` is the consequent

### Truth Tables

### Replacement Rules

> Used to replace one expression with another.

* Double Negation: `P <=> ~~P`
* Material Implication: `P=>Q <=> ~PvQ`
  * Helps convert conditionals to disjunctions
* Contraposition: `P=>Q <=> ~Q=>~P`
  * Helps convert conditionals to conditionals
* De Morgan's Law: `~(P^Q) <=> ~Pv~Q`
  * Helps convert conjunctions to disjunctions
* Associativity:
  * with conjunction: `(P^Q)^R <=> P^(Q^R)`
  * with disjunction: `(PvQ)vR <=> Pv(QvR)`
* Commutativity
* Distribution
  * with conjunction: `P^(QvR) <=> (P^Q)v(P^R)`
  * with disjunction: `Pv(Q^R) <=> (PvQ)^(PvR)`
* Idempotence
  * with conjunction: `P^P <=> P`
  * with disjunction: `PvP <=> P`

### Rules of Inference

> Help us draw conclusions from premises

* Modus Ponens:
  1. `P=>Q`
  2. `P`
  3. `therefore Q`
* Modus Tollens:
  1. `P=>Q`
  2. `~Q`
  3. `therefore ~P`
* Disjunctive Syllogism:
  1. `PvQ`
  2. `~P`
  3. `therefore Q`
* Hypothetical Syllogism:
  1. `P=>Q`
  2. `Q=>R`
  3. `therefore P=>R`
* Dilemma:
  * Constructive:
    1. `P=>Q`
    2. `R=>S`
    3. `PvR`
    4. `therefore QvS`
  * Destructive:
    1. `P=>Q`
    2. `R=>S`
    3. `~Qv~S`
    4. `therefore ~Pv~R`
* Conjuction introduction
  1. `P`
  2. `Q`
  3. `therefore P^Q`
* Simplification
  1. `P^Q`
  2. `therefore P`
* Biconditional:
  * Biconditional elimination
    1. `P<=>Q`
    2. `therefore P=>Q` and `therefore Q=>P`
  * Biconditional introduction
    1. `P=>Q`
    2. `Q=>P`
    3. `therefore P<=>Q`
* Disjuction introduction
  1. `P`
  2. `therefore PvQ`

### Proofs

* Styles:
  * Proof by contradiction
  * Conditional proofs
  * Tautologies
  * Nested Proofs
  * Biconditional tautologies

* Proof strategy:
  1. DeMorgan's Everything
  2. Working backwards
  3. Proof by cases


### Fallacies

* Affirming the consequent
* Denying the antecedent
