---
layout: post
title: "Notes: Code Generation Models"
categories: notes
modified_date: Feb 26, 2023
author:
- Jovan Sardinha
---


[Evaluating LLM trained on Code](https://arxiv.org/pdf/2107.03374.pdf)
Why code

* good size corpus [napkin math](https://docs.google.com/spreadsheets/d/1zsahRIxNnXSq9z9tEHbISCkYxsivnDG9V3LbJLJTL90/edit#gid=0)
* hierarchical structure
* automatically tested
* Errors/stacktraces are just language
* Eval tool edge
* A lot of 'context information' - documentation, commits, diffs, PR, etc...
* Complimentary skills for most other downstream tasks.

![codex scaling loss](/assets/post_assets/code_generation_models/codex_scaling_log.png)

Downstream evaluation
![codex pass rate vs. model size](/assets/post_assets/code_generation_models/codex_pass_rate_vs_model_size.png)

Language modeling vs. code generation
![codex train from scratch vs. pretrain](/assets/post_assets/code_generation_models/codex_train_from_scratch_vs_pretrain.png)

Fine-tuning: "Effective data transfer"
![codex effective data transfer](/assets/post_assets/code_generation_models/codex_effective_data_transfer.png)


Data Size:

* GPT-3 trained on 300B tokens, ~200B words.
* Dataset grows slowly with model size.
* 1T words enough for a 10x larger model?
  * Common crawl  = 10^14 words
  * Library of congress = 10^7 * 10^5 = 10^12 words (overestimate)
  * Python on Github = 50B tokens.
  * Just scaling up model size will run into data limitations soon. However what about transfer?

Generate more samples
![codex generate more samples](/assets/post_assets/code_generation_models/codex_generate_more_samples.png)

Longer programs
![codex_longer_programs](/assets/post_assets/code_generation_models/codex_longer_programs.png)

Discriminators
![antropic ml discriminators](/assets/post_assets/code_generation_models/antropic_ml_discriminators.png)

* Binary discriminators for "is this code correct?" (is this code valid is easy)
  * These don't do much better than log-probs of code-trained LM
* Naive RL -> value function won't learn much. Plausibily suggest that naive RL for function synthesis is a weak problem formulation.
* One would hope to do much better by using more information (ex. stack traces, human-feedback etc...).
* "Generate many samples" is the most naive form of search, and search is the most naive form of RL.....in the presense of a good automatic evalaution, this may work.


[Alpha code paper](https://storage.googleapis.com/deepmind-media/AlphaCode/competition_level_code_generation_with_alphacode.pdf)
![alphacode overview](/assets/post_assets/code_generation_models/alphacode_overview.png)

Ranking
![alphacode ranking](/assets/post_assets/code_generation_models/alphacode_ranking.png)


Approach:

1. Pre-train LLM on Github with standard lanugage modeling objective.
2. Fine-tune on code generation task (competitive programming).
3. Generate a very large number of samples for each problem.
4. Filter the samples to obtain a small set of high-quality solutions (~10).

![alphacode architecture overview](/assets/post_assets/code_generation_models/alphacode_architecture_overview.png)

![alphacode dataset sizes](/assets/post_assets/code_generation_models/alphacode_dataset_sizes.png)

![alphacode codeforces ranking](/assets/post_assets/code_generation_models/alphacode_codeforces_ranking.png)

![alphacode solve rate](/assets/post_assets/code_generation_models/alphacode_solve_rate.png)


[Alpha code blog](https://www.deepmind.com/blog/competitive-programming-with-alphacode)
[Viz tool](https://alphacode.deepmind.com/)


Progress by method:
![alphacode progress by method](/assets/post_assets/code_generation_models/alphacode_progress_by_method.png)
![alphacode progress table](/assets/post_assets/code_generation_models/alphacode_progress_table.png)

![codex vs. alphacode](/assets/post_assets/code_generation_models/codex_vs_alphacode.png)

![alphacode eval](/assets/post_assets/code_generation_models/alphacode_eval.png)

Filtering and clustering
![alphacode filtering](/assets/post_assets/code_generation_models/alphacode_filtering.png)



