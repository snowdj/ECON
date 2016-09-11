---
layout: post
date: 2016-09-11 13:06:34
header-img: "img/home-bg2.jpg"
comments: true
subtitle: "Exploring rvest"
category: Package Exploration
tags: [R, Scraping, rvest]
title: "Data Scientist with a wine hobby (Part I)"
author: "Hanjo Odendaal"
output: html_document
---

After high school I made my way from Johannesburg, situated in the northern part of South Africa, to the famous wine country known as Stellenbosch in the south. Here for the first time I got a ton of exposure to wine and the countless varietals that make up this "drink of the gods".

The one trick in wine tasting and exploring vini- and viticulture is the fact that the best way to learn about it all is going out to the farm and drinking the wine for yourself. Over the years I have become familiar with all the farms in the region and it can sometimes be a real prize when discovering a cellar which you have not visited. 

As one can see from the map, there are quite a few farms that are 'officially' listed, but believe me there are a few hidden ones which one will never know of without some research.

<img src="/_rmd/Wine_review_data/map_stellenbosch.jpg" title="center" alt="center" width="400px" style="display: block; margin: auto;" />

To ease this process I have used `R` in order to compile a sort of wine farm repository for myself as a go to guide whenever I visit the region. I did this as an exercise to explore Hadley Wickham's amazing `rvest` library which makes online data collection an ease.

The idea was to compile *wine review data* of the Stellenbosch wine region from [winemag.com](http://www.winemag.com)'s online database and use it to gain an analytical insight into this beautiful wine region in the Cape. 



The first step in collecting the data was to deal with some housekeeping issues. First I assign the base URL to start the collecting from and collect the number of pages from the Stellenbosch search result as part of the `pagination` block in the html. Secondly I collect the information around the wine such as name, points and price. Lastly I use the information on this first page to create a function, `info_xtr()`, to extract information of each of the wines from their own specific page. Specifically I extract the written review of the wine, the date of review and also the alcohol content of the wine.

{% highlight r %}
library(dplyr)
library(rvest)
{% endhighlight %}


{% highlight r %}
site = read_html("http://www.winemag.com/?s=stellenbosch&drink_type=wine&page=1")
nr_pages <- html_nodes(site,".pagination li a") %>%
  html_text() %>% tail(.,1) %>% as.numeric

wine_href <- html_nodes(site,".review-listing") %>% html_attr("href")

info_xtr <- function(x){
  page <- read_html(x)
  review <- page %>% html_nodes("p.description") %>% 
    html_text
  review_info <- page %>% html_nodes(".info.small-9.columns span span") %>% 
    html_text()
  cbind(review, date = review_info[5], Alc = review_info[1])
}
{% endhighlight %}

The `info_xtr()` function returns a data.frame that contains the review, date of the specific review and the alcohol content:

{% highlight r %}
info_xtr(wine_href[1])
{% endhighlight %}



{% highlight text %}
##      review                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
## [1,] "A blend of 28% Cabernet Franc, 23% Cabernet Sauvignon, 21% Malbec, 18% Petit Verdot and 10% Merlot, this is a big, bold and powerful wine, with superb balance and a firm, concentrated structure that promises great long-term aging. Dense aromas and flavors of blackberry, boysenberry, cherry and fig are layered with notes of cocoa powder, roasted espresso bean and cigar tobacco. Ripe, rich and lush, but not overdone, hints of charred oak and black pepper linger on the finish. Drink 2018–2025."
##      date        Alc  
## [1,] "12/1/2015" "14%"
{% endhighlight %}

The wine selection data from the page is collated in a nice `data.frame()` for ease of reading. With all the information I need, I start my scraper to run through the website and collect all the information surrounding the wines

{% highlight r %}
# Start the scraper ==============
Wine_cellar <- list()
for(i in 1:nr_pages)
{
  
  cat("Wine review, page: ", i,"\n")
  
  site = read_html(paste0("http://www.winemag.com/?s=stellenbosch&drink_type=wine&page=",i))
  
  wine <- html_nodes(site,".review-listing .title") %>%
    html_text()
  
  # extract specific information from title
  wine_farms <- gsub(" \\d.*$","",wine)
  wine_year <- gsub("[^0-9]","",wine)
  wine_name <- gsub("^.*\\d ","",wine) %>% gsub(" \\(Stellenbosch\\)","",.)
  
  # extract review points
  points <- html_nodes(site,".info .rating") %>%
    html_text() %>% gsub(" Points","",.)
  
  # extract review price
  price <- html_nodes(site,"span.price") %>%
    html_text()
  
  wine_href <- html_nodes(site,".review-listing") %>% html_attr("href")
  
  # here I go collect all the information from each of the wines seperately
  reviews <- sapply(wine_href, function(x) info_xtr(x))
  reviews <- t(reviews) 
  row.names(reviews) <- NULL
  colnames(reviews) <- c("review", "review_date", "Alc")
  
  # bind all the information into a nicely formatted data.frame()
  Wine_cellar[[i]] <- data.frame(wine_farms, wine_year, wine_name, points, price, wine_href, reviews, stringsAsFactors = F)
  
  # as a rule I always save the already collected data, just in case the scraper stops unexpectedly
  saveRDS(Wine_cellar,"Wine_collection.RDS")
  
  # I add in a sleep as not the flood the website that I am scraping with requests
  Sys.sleep(runif(1,0,3))
}
{% endhighlight %}

With my scraper having completed its task in retrieving all the necessary information from the website, I bind the information from the `Wine_cellar` list object. For brevity I truncate my sample by removing the *href* and *review* columns which takes up a lot of space

{% highlight r %}
Wine_all <- bind_rows(Wine_cellar)
Wine_all %>% select(-c(wine_href, review)) %>% str()
{% endhighlight %}



{% highlight text %}
## 'data.frame':	1040 obs. of  7 variables:
##  $ wine_farms : chr  "Mvemve Raats" "Mvemve Raats" "De Toren" "De Toren" ...
##  $ wine_year  : chr  "2012" "2011" "2012" "2012" ...
##  $ wine_name  : chr  "MR de Compostella Red" "MR de Compostella Red" "Fusion V Red" "Z Red" ...
##  $ points     : chr  "94" "94" "94" "92" ...
##  $ price      : chr  "$65" "$65" "$60" "$50" ...
##  $ review_date: chr  "12/1/2015" "12/1/2015" "12/1/2015" "12/1/2015" ...
##  $ Alc        : chr  "14%" "14%" "14%" "14%" ...
{% endhighlight %}

As you can see from the information displayed, we now have a complete data-set of all reviews of the the wines in the Stellenbosch region. This information can now be used to analyse the traits of the wine region in a number of ways. I will explore this data in the next post and will see what interesting insights we can draw from it.

I am familiar with collecting online data using the `RCurl` package and have been wanting to see how I can integrate the `rvest` package into some of the work I do. I must admit, I love exploring online data with this package as the `html_node` function makes the collection a breeze. I would definitely recommend `rvest` as the go-to library for any online scraping needs.


