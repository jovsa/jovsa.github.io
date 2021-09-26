---
layout: post
title: "Knowledge Base"
categories: notes
modified_date: Sept 19, 2021
author:
- Jovan Sardinha
---
<script src="https://unpkg.com/mermaid@8.9.0/dist/mermaid.min.js"></script>

<div class="mermaid">
erDiagram
    experimentation ||--o{ value_extraction : enables
    value_creation ||--o{ experimentation : enables
    value_extraction {
        inside corporate_finance
        outside valuation
        inside human_psycology
        outside marketing
        outside analytical_analysis
        outside political_analysis
    }
    value_creation {
        inside systems_thinking
        inside NNT
        inside jeff_letters
        outside distributed_systems
        outside software_engineering
        outside ml
        outside rl
    }
    experimentation{
        inside live_metrics
        inside system
        outside arb_strat
        outside iteration
    }
</div>