---
published: true
layout: post
---
## R and timeseries




[Best packages: lubridate](https://www.rdocumentation.org/packages/lubridate/versions/1.6.0/topics/ymd_hms)

[How to deal with date and time in R](https://rstudio-pubs-static.s3.amazonaws.com/28038_1bcb9aa80ca84f27ace07d612872861a.html)


Extracting elements from a date/time

Once your date/time data in in POSIXct format, it is easy to extract parts of it (i.e. the hour of the day to find out wether it is day or night, the month to find out the season, etc.). Again, the ?format function in the base package can do this but lubridate provides easier to use alternatives.

x <- ymd_hms("2014-09-24 15:23:10")
# base package version (always returns a character string)
format(x, "%Y") # year

[1] "2014"

format(x, "%m") # month

[1] "09"

format(x, "%Y%m%d")

[1] "20140924"

# lubridate version (return numbers when appropriate)
year(x)

[1] 2014

month(x)

[1] 9

day(x)

[datacamp](https://campus.datacamp.com/courses/manipulating-time-series-data-in-r-with-xts-zoo/introduction-to-extensible-time-series-using-xts-and-zoo-for-time-series?ex=7). 


Time based indices
100xp
xts objects get their power from the index attribute that holds the time dimension. One major difference between xts and most other time series objects in R is the ability to use any one of various classes that are used to represent time. Whether POSIXct, Date, or some other class, xts will convert this into an internal form to make subsetting as natural to the user as possible.

a <- xts(x = 1:2, as.Date("2012-01-01") + 0:1)
a[index(a)]
We'll get into more detail on subsetting xts objects in a later chapter. For now you can simply use date objects to index appropriate rows from your time series. You can think of this as effectively matching the rownames you see in the object. This works as anticipated for time objects because the rownames are really dates!

For this exercise you'll create two time series using two different time classes. You will then subset each object using the other object's index.
