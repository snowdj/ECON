---
layout: post
date: 2016-10-09 22:14:32
header-img: "img/home-bg2.jpg"
comments: true
subtitle: "Feature creation"
category: Package Exploration
tags: [R, Scraping, ggmaps]
title: "Data Scientist with a Wine hobby (Part II)"
author: "Hanjo Odendaal"
output: html_document
---


# Getting introduced to Google and their API
Previously we constructed a `data frame` that consisted out of the following variables that we might want to perform analysis on:

{% highlight text %}
## [1] "wine_farms"  "wine_year"   "wine_name"   "points"      "price"      
## [6] "wine_href"   "review"      "review_date" "Alc"
{% endhighlight %}

Now, one of the variables in the datasets, will be used to extend the information in our feature set even further. I will use the farms' names to collect information on the farms' location, by using an `API` made available through [Google's Developer Console](https://console.developers.google.com/). The specifc `API` I am refering to here, is their __Google Place API__ and the documentation on the parameters of this call can be found [here](https://developers.google.com/places/web-service/search).
I do recommend having a look as they have quite a few other unique location based `API`'s which might be of interest.

To use their api server, one needs to register an account and then set up what is know as a project. If you already have a google identity through something like Gmail, then this setup is a breeze.

Logging onto the website's developer page, the first step in setting up, is to have a look at the credentials tab. Here you can see I have set up a server which I with a unique key I will use to call there API service:

#<a><img src="/figures/Google_api/api_dash.JPG" align="middle" height="480" width="480" ></a>

One of the important steps in using google's `API`, is that you have to white list the ip's which will be calling the `API` service. For me you can see at the bottom of the picture, that I have worked on this project from 2 different locations. 

#<a><img src="/figures/Google_api/api_dash2.JPG" align="middle" height="480" width="480" ></a>

You will also see in the **insert the credential key** which we will be using as part of the `API` service. This key is important when you are doing the call to their server as a credential check. Be aware you only have a limited amount of calls per day as a free user.

So, having set up the server, I am now ready to head into R to create the function that will retreive the GPS coordinates of the wine farms extracted and enrich our dataset's features. The library that I will be relying on the most here is the `RJSONIO`. The reason for this is that the query will return the information in a json format.

{% highlight r %}
library(RJSONIO)

geoPlace <- function(placeName, verbose=FALSE) {
  if(verbose) cat(placeName, "\n")
  doc <- URLencode(paste0("https://maps.googleapis.com/maps/api/place/textsearch/json?query=",placeName,"&key=YOURKEYHERE"))
  
  x <- fromJSON(doc, simplify = FALSE)
  
  if(x$status=="OK") {
    lat <- x$results[[1]]$geometry$location$lat
    lng <- x$results[[1]]$geometry$location$lng
    formatted_address <- x$results[[1]]$formatted_address
    return(data.frame(placeName, lat, lng, formatted_address, stringsAsFactors = F))
  } else {
    return(c(NA,NA,NA, NA))
  }
}
{% endhighlight %}
The function takes 2 parameters, the first being the vector of place names to look up. The second parameter is useful to see which place you are doing a coordinate lookup on. The default is set to `FALSE` as one generally knows the vector you are inputting.

My function is now ready to use, so I create the vector of unique wine farm names as this will serve as our input. I first filter the wine database to just include reviews from 2013 onwards. This is just to make sure we don't work with too outdated information.

{% highlight r %}
Wine_filtered <- 
  filter(Wine_all, as.Date(review_date, "%m/%d/%Y") >= as.Date("2013-01-01"))

Farms <- 
  Wine_filtered %>% 
  distinct(wine_farms) %>% 
  unlist
{% endhighlight %}

If our server setup was done correctly, the following code will now retreive the place name's coordinates

{% highlight r %}
Farm_locations <- lapply(Farms, function(x) geoPlace(x)) %>%
  bind_rows
{% endhighlight %}


{% highlight text %}
##                placeName       lat      lng
## 1           Mvemve Raats -33.97155 18.74825
## 2               De Toren -33.96019 18.75217
## 3          Rust en Vrede -33.99844 18.85627
## 4           Raats Family -33.97155 18.74825
## 5               Eikendal -33.85500 18.71703
## 6 Stellenbosch Vineyards -33.99057 18.76789
##                                                formatted_address
## 1 Raats Family Wines, Vlaeberg Rd, Cape Town, 7601, South Africa
## 2                Polkadraai Rd, Stellenbosch, 7604, South Africa
## 3                               Annandale Rd, 7130, South Africa
## 4 Raats Family Wines, Vlaeberg Rd, Cape Town, 7601, South Africa
## 5                        Eikendal, Cape Town, 7570, South Africa
## 6                                  Baden Powell Dr, South Africa
{% endhighlight %}

Now, lets add these coordinates to our `dataframe`. This can obviously be placed within the pipe in the previous step, but for illustrative purposes I seperate these 2 steps.

{% highlight r %}
Wine_filtered <- left_join(Wine_all, Farm_locations, by = c("wine_farms" = "placeName"))
{% endhighlight %}

# Using ggmap to visualise our data
When chosing to go wine tasting, a person commonly confronted with a problem known as the traveling salesman problem. In our case, it is trying to figure out the shortest route that will result in the best wine tastings.

My aim here is to plot the wine farm locations I have collected to try and see if there are clusters or pockets of wine farms where good rated wines are prevelent. So, with this idea in mind I need to create a dataset that contains the farms, their average wine ratings and the coordinates.

{% highlight r %}
markers <- 
  Wine_filtered %>% group_by(wine_farms) %>%
  summarise(avg_points = mean(as.numeric(points))) %>% 
  left_join(., Wine_filtered %>% select(wine_farms, lng,lat), by = c("wine_farms")) %>%
  distinct() %>% filter(complete.cases(.) == T) %>% 
  data.frame
{% endhighlight %}

Now that I have that ready, I go and get a map of stellenbosch using the very handy `ggmap` package.

{% highlight r %}
library(ggmap)
{% endhighlight %}



{% highlight text %}
## Loading required package: ggplot2
{% endhighlight %}



{% highlight text %}
## Google Maps API Terms of Service: http://developers.google.com/maps/terms.
{% endhighlight %}



{% highlight text %}
## Please cite ggmap if you use it: see citation('ggmap') for details.
{% endhighlight %}



{% highlight r %}
library(ggthemes)
library(grid)

Stellies <- suppressMessages(as.numeric(geocode("Stellenbosch")))

StelliesMap <- ggmap(get_googlemap(center=Stellies, 
                                   scale=1, 
                                   zoom = 11))
{% endhighlight %}



{% highlight text %}
## Map from URL : http://maps.googleapis.com/maps/api/staticmap?center=-33.932105,18.860152&zoom=11&size=640x640&scale=1&maptype=terrain&sensor=false
{% endhighlight %}

Next I start exploring the functions of ggmap and I add my markers to the map as a layer. I specify that the size of the points need to relate the the average wine rating at that farm. I also choose that my color should be a gradient following the same idea.


{% highlight r %}
options(warn = -1)
StelliesMap +
  geom_point(data = markers, aes(x =lng, 
                                 y= lat, 
                                 size = avg_points, 
                                 colour = avg_points
                                 ),alpha = 0.75) +
  scale_colour_gradient(high = "#ad351a", low = "#253275")
{% endhighlight %}

![center](/figures/Google_api/unnamed-chunk-9-1.png)

Ok, so from this map we can see that the dots are sort of scattered all over the map with a potential "good wine" cluster in the bottom left corner out on the M12. To confirm this, I construct a heatmap over the points of the map. The heatmap is weighted for the wine region's average rating, not the amount of points within the area


{% highlight r %}
markersWeighted <- markers[rep(row.names(markers), markers$avg_points), ]
StelliesMap +
  stat_density2d(data=markersWeighted, aes(x=lng, y=lat, fill=..level.., alpha=..level..),
                 geom="polygon", size=0.01, bins=5) + 
  scale_alpha(range=c(0.5, 1), guide=FALSE) +
  theme_map() + 
  theme(plot.title=element_text(face="bold")) +
  labs(x=NULL, y=NULL, title="Heatmaps of wine farms in Stellenbosch region\n")
{% endhighlight %}

![center](/figures/Google_api/unnamed-chunk-10-1.png)

If we look at the map now, a much clearer picture can be seen. There are indeed two avenues when going on a wine tour in Stellenbosch. You can either take the M12 out, or the R44.

Finally, one of the things that I am most interested in is to see whether this particular wine region, in the bottom left corner, has always produced wine of top quality. It might just be that from 2013 upwards the region was lucky in terms of climat. The image belows shows a heatmap of the previous years from 2001 to 2015, tha captures the top rated wine farms each year.

![center](/figures/Google_api/wines_yearly.gif)








