---
title       : Iris ML App
subtitle    : Pitch
author      : Morten Frellumstad
job         : Developing Data Products 015
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---
<style>
  .title-slide {
    background-image: url(assets/img/bkg.png);
    background-repeat: no-repeat;
    background-position: 70% 50%;
   }
</style>
<!---
https://github.com/ramnathv/slidify/issues/373
install_github('ramnathv/slidify', ref = github_pull(425))
-->

## Explore and experiment
The Iris ML App lets you do some interactiv exploring and experimentation in your web browser on
the famous Iris data set.

### The App has two main parts:
1. The Classify-tab
2. The Data-tab

### Structur of the Iris data set in R


```r
 str(iris)
```

```
## 'data.frame':	150 obs. of  5 variables:
##  $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
##  $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
##  $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
##  $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
##  $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
```

# [Try it out yourself!](https://mfrellum.shinyapps.io/Irisclassify)

--- .class #id 

## How to use: Classify-tab

![classifyHelp](assets/img/classifyHelp.png)

--- .class #id 

##  How to use: Data-tab

![dataHelp](assets/img/exploreData.png)

--- .class #id 

## External resources
Here you can read more about the famous Iris data set and the classification methods
used in this App. Images are borrowed from these sites.
* [Iris flower data set](https://en.wikipedia.org/wiki/Iris_flower_data_set)
* [Supervised learning](http://sebastianraschka.com/Articles/2014_intro_supervised_learning.html)
* [Decision tree learning](https://en.wikipedia.org/wiki/Decision_tree_learning)
* [K-means clustering](https://en.wikipedia.org/wiki/K-means_clustering)

This presentation was made with [Slidify](http://slidify.org).

