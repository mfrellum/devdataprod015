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

# [Try it out yourself!](https://mfrellum.shinyapps.io/Irisclassify)

--- .class #id 

## How to use: Classify-tab

![classifyHelp](assets/img/classifyHelp.png)

--- .class #id 

##  How to use: Data-tab

![dataHelp](assets/img/exploreData.png)

--- .class #id 

## R Summary of the Iris data set


```r
 summary(iris)
```

```
##   Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
##  Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  
##  1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  
##  Median :5.800   Median :3.000   Median :4.350   Median :1.300  
##  Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  
##  3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  
##  Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  
##        Species  
##  setosa    :50  
##  versicolor:50  
##  virginica :50  
##                 
##                 
## 
```

--- .class #id 

## External resources
Here you can read more about the famous Iris data set and the classification methods
used in this App. Images are borrowed from these sites.
* [Iris flower data set](https://en.wikipedia.org/wiki/Iris_flower_data_set)
* [Supervised learning](http://sebastianraschka.com/Articles/2014_intro_supervised_learning.html)
* [Decision tree learning](https://en.wikipedia.org/wiki/Decision_tree_learning)
* [K-means clustering](https://en.wikipedia.org/wiki/K-means_clustering)

This presentation was made with [Slidify](http://slidify.org).

