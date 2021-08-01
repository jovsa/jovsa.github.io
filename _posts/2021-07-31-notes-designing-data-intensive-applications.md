---
layout: post
title: "Notes: Designing Data-Intensive Applications"
categories: notes
modified_date: "Aug 1, 2021"
author:
- Jovan Sardinha
---

## Notes

**Part 1: Foundations of Data Systems**

### Chapter 1
* How have applications changed in 2020s from the earlier days? What are the usual limiting factors?
  * Model applications are `data bound` as opposed to `compute bound`.
  * Most of the bottlenecks arise from fetching/setting and manipulating data.
* What are the typical building blocks that provide common functionality in modern applications?
  * Databases
  * Caches
  * Search Indexes
  * Stream Processing
  * Batch Processing
* The following tools {databases, queues, caches, etc...} each store data for different duration of time. Hence, why are these all grouped under the umbrella term of `data systems`?
  * There are a lot of tools that have emerged in recent years that are optimized for a particular used case. These tools do not fit into the traditional categories.
  * Many applications have a wide rage of needs that a single *database* tools cannot satisfy. Instead, it's better to break down tasks and let the best tool handle the sub-component.
  * When you combine several tools to provide one service, the service hides and syncs all these data tools from the client.  Now you have created a new, special-purpose data system from smaller general-purpose components.
* What is the difference between a *fault* and a *failure*?
  * A failure is caused when the system stops providing service to its clients.
  * A fault is when a component of a system deviates from spec.
* What are the main concerns of modern applications?
  * *Reliability*: The system should continue to work correctly even in the face of adversity.
  * *Scalability*: As the system grows (data volume, traffic volume, complexity, etc...), there should be reasonable ways of dealing with such growth.
  * *Maintainability*: Over time, different people will work on the system and they need to be able to contribute productively.
* Define load parameters?
  * Load on an online or offline system can be described by a few numbers which we call *load parameters*. In batch (offline) systems we usually care about throughput (i.e. the number of requests we can process per second). However, in online systems we care about the service's response time (the time ebtwee a client sending a request and receiving a response).
* What is the difference between latency and response time?
   * Response time is the what the clinet observes; beside the time it takes to service the request (service time).
   * latency is the the duration that a request is waiting to be serviced.
TODO (jovsa): p. 14

#### References
  * [Full list](https://github.com/ept/ddia-references/blob/master/chapter-01-refs.md) of references.
  * [How complex systems fail](https://how.complexsystems.fail/)
  * [Simple made easy](https://www.infoq.com/presentations/Simple-Made-Easy/)

### Chapter 2

## References
* [Poster](https://dataintensive.net/poster.html)
* [References by Chapter](https://github.com/ept/ddia-references)