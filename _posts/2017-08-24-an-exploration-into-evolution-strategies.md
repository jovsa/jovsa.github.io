---
layout: post
title: "An Exploration into Evolution Strategies"
author:
- Jovan Sardinha
---

In march 2017, OpenAI released a paper[^1] and a blog post[^2] showing that Evolution Strategies (ES) was a scalable alternative to [reinforcement learning](https://en.wikipedia.org/wiki/Reinforcement_learning). Running a computing cluster of 80 machines and 1,440 CPU cores, their implementation was able to train a 3D MuJoCo humanoid walker in only 10 minutes[^2]. Furthermore, using 720 cores they obtained comparable performance to A3C on Atari while cutting down the training time from 1 day to 1 hour[^2].

This post details my initial exploration in ES within the context of Neural Networks (NN). More specifically, the objectives can be defined as follows:
>1 — Implement evolution strategies from scratch and use it to optimize the weights of a neural network on the task of [MNIST](http://yann.lecun.com/exdb/mnist/) [digit](http://colah.github.io/posts/2014-10-Visualizing-MNIST/) [recognition](https://www.tensorflow.org/get_started/mnist/pros).
>2 — Find a good set of hyperparameters of the algorithm that achieves the best results after 12 hours of training.
>3 — Distribute the above across the cores of a computer (going to 4 cores). Analyze the speedup observed when going from 1 core to a 4 core implementation.

```
Assumptions:
1. Used a 1 layer deep network to train MNIST for speed of iteration.
2. Restricted the NN to use only 1 core while exploring all three objectives. This was done to analyze improvements in ES while keeping NN execution constant.
3. Restricted each run of hyperparameters to 1,000 generations. This was done so that many combinations of hyperparameters could be explored in 12 hours.
4. All code has been run and tested on Ubuntu 16.04.2 LTS using Python 3.5.2.
```

All the code for the following objectives can be found on my [github](https://github.com/JovanSardinha/evolution-strategies-exploration)

## Pre-processing
Before starting, MNIST data was downloaded from Tensorflow using the 1-hot encoded flag on. This data was split into 55,000 samples in the train set, 10,000 in the test set and 5,000 in the validation set. Tests were done to ensure that all 10 classes of digits were evenly distributed and this was validated when naive models had a accuracy on the test set of ~10% `(=1/num. of classes)`.
To speed up training and to prevent overfitting, a mini-batch of 128 samples was used for each training epoch.

### Objective 1: Implementing evolution strategies from scratch
The ES algorithm was implemented using numpy and originally influenced by karpathy. For the NN model, a Keras model was used with a Tensorflow backend with the following definition:

```
# NN model definition
input_layer = Input(shape=(784,))
layer_1 = Dense(784)(input_layer)
output_layer = Dense(num_classes, activation='softmax')(layer_1)

model = Model(input_layer, output_layer)model.compile(Adam(), 'mse')
```

This model was restricted to use only 1 core, as suggested using the following code [as per assumption 2]:

```
config = tf.ConfigProto(
  intra_op_parallelism_threads=1,
  inter_op_parallelism_threads=1,
  allow_soft_placement=True,
  device_count = {'CPU': 1, 'GPU':0})

session = tf.Session(config=config)

K.set_session(session)
```

The overall training process is illustrated by the digram below:

![Figure 1: Overall process of training a MNIST classifier with ES](/assets/MNIST_classification_with_ES.png)


## Reference
[^1] Tim Salimans, Jonathan Ho, Xi Chen, and Ilya Sutskever. “Evolution Strategies as a Scalable Alternative to Reinforcement Learning”. Arxiv.org.https://arxiv.org/pdf/1703.03864.pdf.

[^2] Evolution Strategies as a Scalable Alternative to Reinforcement Learning. OpenAI.https://blog.openai.com/evolution-strategies/

[^3] James Bergsta, Yoshua Bengio. “Random Search for Hyper-Parameter Optimization”. Journal of Machine Learning Research. http://www.jmlr.org/papers/volume13/bergstra12a/bergstra12a.pdf