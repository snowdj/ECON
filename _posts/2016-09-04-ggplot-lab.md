---
layout: post
date: 2016-09-04T16:54:23.000Z
header-img: img/high_242.jpg
comments: true
subtitle: An exploration of ggplot2
title: Body Temperature Series of Two Beavers
author: Hanjo Odendaal
output: html_document
category: labs
tags:
  - R
  - ggplot2
published: true
---




We try to add $\alpha$ to writing.


$$ \beta $$


This short post will explore a funny dataset that forms part of R's `dataset` library. The dataset will loaded out of interest of its content as well as using it to enagage with Hadley Wickhams's [ggplot2](http://docs.ggplot2.org/current/#) package. The dataset that will be used to explore `ggplot2` contains two time series of temperatures of beavers. The data was first presented in Reynolds (1994).

Reynolds (1994) describes a small part of a study of the long-term temperature dynamics of beaver Castor canadensis in north-central Wisconsin. Body temperature was measured by telemetry every 10 minutes for four females, but data from a one period of less than a day for each of two animals is used here.

First we load the data from the `datasets` library. This package encompasses some interesting works and is definately worth a look if you need generic data to experiment with.

{% highlight r %}
library(ggplot2,quietly = T)
library(datasets,quietly = T)
data(beavers)
head(beaver2)
{% endhighlight %}




{% highlight text %}
##   day time  temp activ
## 1 307  930 36.58     0
## 2 307  940 36.73     0
## 3 307  950 36.93     0
## 4 307 1000 37.15     0
## 5 307 1010 37.23     0
## 6 307 1020 37.24     0
{% endhighlight %}

Next, we want to use ggplot to see if the temperature of the beaver differs greatly between active and non-active times. A nice feature of ggplot is the easy incorporation of color differentials between factors. Here I am leaving the series as a continous variable to illustrate the easy use of the color parameter.

{% highlight r %}
qplot(beaver2$time,beaver2$temp,
      colour=beaver2$activ,
      geom="point",
      shape=I(16))
{% endhighlight %}

![center](/note/figures/ggplot_blog/unnamed-chunk-3-1.png)

The main lesson I learned from using `ggplot2` is the trick to create a template to work off of in the future. So think of creating containers for different shapes, colors, labels, headings and of course statistical visualization of the relationship of the data with the `geom_smooth` parameters. This template can then be easily copy and pasted to your other scripts without having to go re-engage with the vignette to find a specific feature.

One of the features that is easily implemented but can have high impact is the `facets` parameter and thus should form as part of your base template. This easily splits your visualization window into multiple plots to get a clearer idea of the dynamics of specific factors.

{% highlight r %}
beaver2$activ<-ifelse(beaver2$activ==1,"Active","Dormant")
qplot(time,temp,
      colour=activ,
      facets=activ~.,
      geom=c("point","smooth"),data=beaver2)+
      theme_bw(base_size = 12, base_family = "")
{% endhighlight %}

![center](/note/figures/ggplot_blog/unnamed-chunk-4-1.png)


{% highlight r %}
ggplot(beaver2, aes(activ, fill=activ)) +
  geom_bar(width=1) +
  coord_polar() +
  theme_bw(base_size = 12, base_family = "")
{% endhighlight %}

![center](/note/figures/ggplot_blog/unnamed-chunk-5-1.png)

A feature of the package that does irritate me, is the grey backrgound that is set as the default. A much clearer and widely used format is the theme of a white background with black gridlines.

{% highlight r %}
qplot(data=beaver2,x=activ,y=temp,geom="boxplot", colour=activ)+
  theme_bw(base_size = 12, base_family = "")+
   labs(title = "Boxplot of Temperatures",x = "Beaver State",y="Temperature",colour="State")
{% endhighlight %}

![center](/note/figures/ggplot_blog/unnamed-chunk-6-1.png)

This concludes our short discussion on the use of the [ggplot2](http://docs.ggplot2.org/current/#) package. I do find having learned to plot with base feature in R, the notational difference is difficult to integrate when I am coding and it doesn't come naturally as of yet. The package is however flawlessy built with great flexibility in its features. I especially enjoy how it integrates with the [Caret](http://topepo.github.io/caret/index.html) machine learning package.

Despite not using the package on a day to day basis, after using it again to write this post, I do find myself thinking, why am I not...
