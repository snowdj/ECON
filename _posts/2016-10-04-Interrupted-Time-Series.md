---
published: true
layout: post
---
## UBCx: ITSx Policy Analysis using Interrupted Time Series
### OBSERVATIONAL STUDY DESIGNS


In a pre-post study design, the counterfactual assumption is that the level of the outcome would not have changed absent the change being studied. 

In a post-only with control study, the assumption is that the counterfactual outcome in the intervention group would have mirrored that observed in the control group. This study design is very prone to selection bias. It is likely that the locations vary on a number of other factors -- both observable and unobservable -- that impact fuel sales.


has data for two groups at one time period before the intervention and one time period after. This reflects a pre-post with control design.


The counterfactual assumption in this study design is that the outcome would have changed in the invention group in the same manner as the control group absent the intervention.

School break is clearly an event that occurs between the periods, so is a history threat to validity. However, in this case as it only affects one group and not the other, it is an interaction with selection in this instance.

the second example is a potential threat to validity. While the first looks like a history threat, the timing would have to be close to the intervention in order to be of concern. The second is an example of an instrumentation threat and is of concern as it happened close to the intervention. Finally, migration out is an issue of maturation, but because it was constant over the entire period would not constitute a threat to validity. Any changes in the outcome this caused would likely be addressed by the estimate of the pre-intervention time trend.



##

identified many potential threats to validity

collect longitudinal data and conduct a single interrupted time series analysis on her data

Both A and C are potential threats, because they are changes that would potentially impact the outcome (fuel sales), are not the intervention of interest, and happen close to the intervention under study. In contrast, while B may impact the outcome, it happended at the start of the study period, so would not be of concern. Any change that it did cause in the outcome would be captured in the existing level and trend in the pre-intervention period.

The answer to the above question represents a history threat to validity, as it is an event that is not the intervention of interest that would be expected to impact the outcome. It would not be selection-history, as there is only one group under study in this data series.

The key to this answer is the change in Bogusland, which we know was not subject to the carbon tax. The decrease in slope observed around the time of the intervention line is consistent with a change in the price of fuel that acted to decrease the secular trend in consumption.


It is important to remember that all of your estimates for the impact of the policy will be relative to the changes observed in the control group. As the level in the control group appears to increase slightly after the intervention, this would serve to increase the relative change in the intervention group. Conversely, the downward trend in the control group would cause the change in trend to be smaller relative to the estimate from the single series model.


 the actual steps you will take to conduct an analysis yourself. We will divide things up into 10 steps, which are:

* Determine time periods
	* interruption 
    * length of period enough to measure a trend 8/12 
    
    A commonly cited minimum number of data points is 8-12 before and 8-12 after the intervention. Be cautious with this rule, however. Many data series will be too variable for 8 data points to provide a stable trend estimate.
    
    
    * phase-in period
    * co-interventions
    
    Any fixed time period is suitable for an ITS analysis. There will be a trade-off with any selection: longer time periods will likely be more stable, but are also more likely to run into trouble with co-interventions that impact the same outcomes.
    
    
    
* Select analytic cohorts
	* expect impact
    * continuously enrolled// attrition -> problem
    * control groups: unexposed similar group/ subgroup, another region. non-equivalent but still comparible
    
    What's one advantage of having individual level data?
        
You can focus in on groups where you expect an impact     
    Individual-level data gives you the flexibility to run your time series models on whatever subgroups you like within your study population. This can allow you to narrow in on groups where the policy likely had an impact, and also use those where you wouldn't expect an impact as potential controls.
    
    In order to fit the model with a control group, you must have access to data on the same outcomes over the same time periods. While A and B would definitely help make your analysis more convincing, they are not technically required. With respect to response D, control groups can come from within the same region.
    
    
* Determine outcomes of interest
	* measure of characteristic/outcome 
    * choose measure -> reflect intended or unintended outcome
    * attrition
    * rates and proportions often work well.
    
    In general, rates and proportions make good outcomes for an interrupted time series study. Issues can arise with using totals when there are changes in the population size over time due to attrition or some other factor. Totals can also be problmeatic when using a control group, as the population sizes will likely differ.
    
    
The pattern of the data shown is almost certainly the result of anticipatory effects. It suggests that the carbon tax was announced in advance and people rushed to the gas station to fill up before it took effect, hence the spike in use in the month before and the decline in the month afterward.

If Sophie limits her time period to the month before the tax is repealed, this will leave her with a clean data series without this potential co-intervention. Proceeding with modeling (response C) is likely to result in a model that does not fit well due to the likely increase in sales after this second change.

One might expect the carbon tax to impact all of the above groups more significantly than the remainder of the population.

Remember that outcomes for an ITS analysis should be comparable between groups. As we have no information on the relative sizes of the two states under study, using any sort of total would be inappropriate

* Setup data
* Visually inspect the data
* Perform preliminary analysis
* Check for and address autocorrelation
* Run the final model
* Plot the results
* Predict relative and absolute effects





work through the following steps and conduct an interrupted time series analysis:

4. Setup data: prepare your data for analysis by adding necessary variables


While you are reading, pay particular attention to the data used in the analysis, the cohort they selected for the analysis, and the outcomes that the authors chose to study. Further, pay careful attention to how the authors present their results, in particular their method for discussing both level and trend changes.

The following variables are needed in an interrupted time series analysis dataset:
The outcome in each time period 
 - not really: Control variables for the regression model
An incrementing indicator for time 
An indicator variable for the post-intervention period 
An incrementing time variable for post-intervention time 


In a segmented regression setup, all the above variables are needed with the exception of control variables. As we discussed last week, interrupted time series is generally immune to threats to validity from other variables that remain constant over time. If other changes occur at the same time as the intervention, however, this could form an important threat to validity (see our discussion of history bias last week).





5. Visually inspect the data: plot the data and look for potential problems


For each series, here are the considerations you might make:

Series 1: This data has a logarithmic shape, so would not be suitable for linear regression in it's current form.

Series 2: This data is very noisy, so is unlikely to result in a good model fit. There may be data quality issues at play.

Series 3: The linear trend in this data is clear and continuous through the entire range.

Series 4: While this series has a distinct break at the intervention, both the pre- and post- periods are linear, making this data series likely suitable for ITS.


Typically ITS figures have the intervention plot drawn between the last pre-intervention period and the first post-intervention period. As the intervention starts at point 23 in this case, 22.5 would be between that and the previous data point


6. Perform preliminary analysis: perform a standard regression model with a time series specification


$$outcom = \beta_0 + \beta_1 * time + \beta_2 * level  +  \beta_3 * trend + \epslon_{jt}$$


A standard segmented regression model for interrupted time series requires 3 variables aside from the intercept term: (1) an existing trend, (2) a level change, and (3) a trend change.

	* The existing level?

	* The pre-existing trend per quarter?

	* The estimated level change following the prior authorization policy?

	* The estimated change in the trend per quarter following the policy change?
    
    
    
The results of the model suggest a statistically significant decrease in both the level and trend of market share following the start of the prior authorization policy.


7. Check for and address autocorrelation: use the standard regression results to assess whether autocorrelation is present and, if so, determine what parameters to use in modelling





8. Run the final model: run and interpret a final analytic model that accounts for autocorrelation






* Plot the results: plot the results of the model for presentation
Predict relative and absolute effects: use the model results to predict the impact of the intervention






### CHOOSING A RESEARCH QUESTION



#### Pinpointing a change in policy

Interrupted Time Series uses the fact that a policy change can be pinpointed in time to help understand its effects. First and foremost, a good research question for this course has to examine something that changed. This could be the introduction of a huge nation-wide program, or just a small tweak in how a service is provided. In your day-to-day work, surely things are changing all the time â€“ any of these might be candidates for research questions.

#### Considering outcomes of this change

Once you have a policy change in mind, what are its potential effects? Were there specific goals stated as a rationale for the change? Might there be unintended effects of the policy worth examining?

Moving forward, you will need to think about what you can measure with available data, but to start with, it is worth thinking through any potential outcomes.


### FINDING DATA TO ANSWER YOUR QUESTION

Once you have a question in mind, you need to determine if you can actually answer it using ITS. This means finding data that cover the period before and after the policy, and that measure outcomes you think the policy may have changed. In some cases the data may simply not exist â€“ for this course that means you likely want to pick a different question.

#### Where do data come from?

In some cases, organizations routinely collect information for ongoing monitoring or research. For example,  governments may conduct health, demographic or labour force surveys, or make regular measurements for environmental monitoring.

However, in many other situations organizations collect information for completely different purposes, but that may be useful in research or policy evaluation. Examples are endless, with many conceivable purposes (such as registration, transactions, or other aspects of service delivery) and topic areas (health, education, housing, immigration, and many other areas of business and industry). Often these datasets are very large. Unlike survey data, they likely cover all individuals using a particular service, and cover long time periods, making it possible to retrospectively evaluate policies. The main drawback is that researchers have no control over what is measured. It is also important to be aware of changes to administrative procedures or definitions over time.

#### Identifying data sources for your project

Many of you work with data on a regular basis, and already have access to everything you would need to answer a research question. If not, there may be publicly available sources worth exploring.

Regardless of the source, there are two key points to consider to determine if itâ€™s suitable for analysis:

* Does it measure a relevant outcome?
* Are multiple data points available over the necessary time period, before and after the change? 

#### Publicly available resources

If you do not already have access to relevant data, there are many publicly available data sources which could be useful. In some cases, these report on regular surveys. In others, they aggregate administrative data from other sources.




## Week03

Identify potential controls: Evaluate opportunities to add a comparison group to analysis

Set up data: prepare your data for analysis by adding additional variables to reflect differences between the intervention and control groups

Visually inspect the data: plot the data and look for potential problems, remembering it may be acceptable to use a non-equivalent control group

Perform analysis: extend the standard time series model with parameters to capture differences between the intervention and control group

Check for and address autocorrelation: assess whether autocorrelation is present and, if so, determine what parameters to use in modelling

Run the final model: run and interpret a final analytic model that accounts for autocorrelation, with additional parameters for the control group

Plot the results: plot the results of the model, depicting both the intervention and control groups for presentation

Predict relative and absolute effects: use the model results to predict the impact of the intervention incorporating information from the control group


### EXAMPLE ARTICLE

This week's example article is a paper by Santa-Ana-Tellez and co-authors.  This paper uses interrupted time series analysis with a control group to investigate the impact of policies in both Mexico and Brazil restricting antibiotic sales to people holding a prescription.


Control Series 2 would make the best control. While it has a slight trend decrease in the post period, it is very comparable in the pre period to the intervention in terms of level and trend. In terms of issues for the other options:

1. Control Series 1 is curved in shape and declining in the pre period in comparison to the intervention.

2. Control Series 3 is flat, but is over double the level in outcome compared to the intervention.

3. Control Series 4 appears to have a co-intervention in the pre-period that changes the level.



As the control group has just been vertically shifted between the two plots, the estimates for the level change and trend change would remain the same. Thus, the estimate of the counterfactual for the intervention group would not change, resulting in the same effect estimates.


#### likelihood ratio test
we've compared the original model that we had to one with q equals 1
added into it, the p value here does not reject the null hypothesis.
So we can conclude that these models are statistically the same.





### Week 5: Regression Discontinuities & Wrap-up


        Identify opportunities for regression discontinuity designs
        Understand the data requirements for these analyses
        Recognize the similar modeling technique to ITS analysis
      




This week's example article is a paper by Lee and Lemieux.  This paper reviews the use of regression discontinuity designs within economics, which is arguably the field in which the techniques have been most often applied. The article uses an example on the advantage of an incumbent party, part of which we will replicate in this week's example. Here is the full citation details for the article and a link to access it on the repec website:

Lee DS and Lemieux T. Regression Discontinuity Designs in Economics. NBER Working Paper w14723 (2009).*
https://ideas.repec.org/p/nbr/nberwo/14723.html



#### Introduction to RD
























