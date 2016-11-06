---
published: true
layout: post
---
## Data Science for Social research

 [course-v1:MITx+14.310x+3T2016](https://courses.edx.org/courses/course-v1:MITx+14.310x+3T2016/courseware/58cc4fe6fa994e3397a82a9329a7e7ae/5e9578b5bbcb4744975a3d093a407bae/).
 
 The chart does seem to show that use of glyphosate and the number of cases of autism have both increased over time. However, based on this evidence we cannot confidently conclude that increased glyphosate use has caused an increase in autism. There could be many other factors not captured in this chart that have led to the increase in glyphosate use over time and to the increase in cases of autism over time.
 
 
 Professor Duflo presents various examples that demonstrate that caution should be used in collecting, presenting, and interpreting data, since it can sometimes be deceitful. One chart shows some kind of relationship between glyphosate and the number of cases of autism, while another shows some kind of relationship between organic food sales and cases of autism. Professor Duflo makes the point that researchers could focus on or drop certain portions of data in order to show support for whatever explanation or story they have in mind.
 
 
 Better scores and higher income earned are examples of direct effects of education, and hence are not considered to be positive externalities of education. One example of a positive benefit of education would be if parents that were highly educated children make better health and nutrition choices for their children, in turn positively investing in the next generation as a result. Better-educated children that become politicians or businesspeople as adults may create policies or businesses that better help their communities, another potential spillover benefit of education beyond the direct impact on the child’s educational and occupational outcomes themselves.
 
 
 Reverse causality and hidden/omitted variables are discussed in class as reasons that we should use caution before concluding that higher education leads to higher GDP. There could be other third factors that contribute to higher incomes as well as higher education levels which are not included in this simplistic model. There could also be some reverse correlation at play, where it is not necessarily the case that higher education leads to higher income, but rather than higher levels of income lead to higher education levels. In this example of outcomes as complex as national GDP per capita and education levels, there are likely many interrelated factors and interactions at play beyond what is included in this simplistic model.
 
 
 If we are able to control for a wide range relevant variables, this should allow us to better isolate the relationship of interest. However the difficulty is to be sure we have controlled for all the relevant variables.
 
  When running many regressions in a data set, there is the risk of “overfitting”: finding patterns by random chance in a particular data set that would not be found elsewhere because they are not real. We will see later in the course how this can be avoided, with a model (the position traditional econometrics take) or with statistical techniques (the position of Machine Learning)
  
  
  
  In the lecture we discuss the differences between causation and correlation, and the potential risks of confounding the two.
  Ideally to identify the causal effect of the mita, we would compare two equal regions that only differ on the presence of this labor institution. Given the large changes in the altitude across the black boundary, it is likely that other variables that affect development could also change. Therefore, comparing regions within and outside the grey boundary is a better idea since it is expected that they are more similar and that the main differences in long-run development variables are more attributable to the presence of the mita.
  
  
  Since the shaded area inside the boundary is darker, this implies that consumption levels are lower and the stunting rate is higher in the regions with mita presence. From Question 3 we argue that the grey boundary allowed us to identify a causal effect, since the regions across the boundary were very similar in other geographic characteristics. Thus, the maps imply a negative effect of the mita in the long run.
  
  
  ![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/97dbc2fd64d61b4d117f5b117cfd03e3/asset-v1:MITx+14.310x+3T2016+type@asset+block/PSET01_02_2.png)
  
  In the lecture, Professor Duflo presented Michael Greenstone and coauthors’ research, where the relationship between pollution and the distance to the Huai river had two different visualizations: (1) a map similar to the ones in Figure 2, (2) a two-dimensional plane of the data. The latter showed the degree to the north in the x-axis and the level of pollution in the y-axis. Suppose that we were trying to do a similar visualization here. To simplify the plot, we only take the boundary in the south. Assume that the x-axis corresponds to the degree in the north, and that we normalize the boundary to zero. It might be helpful to make some drawings for a better visualization of the plot.
  
  
  
  
  Camacho & Conover (2011) document manipulation of a targeting system for social welfare programs in Colombia. Take a look at the following figure, which shows two histograms: the black arrows present the histogram for a poverty score (lower numbers mean being poorer) that was calculated using the same data the Government collected to target social welfare programs – where only individuals with a poverty score below 48 were eligible to receive most of these programs. The blue bars correspond to the histogram reconstructing this poverty score using other data sources that were not used by the Government for this purpose.
  
  
  ![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/e4675a77bfc8e7141c4eb18ad920ac72/asset-v1:MITx+14.310x+3T2016+type@asset+block/PSET01_03.png)
  
  The first statement is true since the histogram with the black arrows is to the left of the one with the blue bars. In addition, the plot shows bunching exactly in 48 (the social welfare eligibility score used by the government) which is not there looking in the blue histogram. Since the data set that was used by the Government to determine social program eligibility is shown with the black arrows, and this pattern is not found in alternative data sources, this suggests some sort of manipulation of social welfare targeting.
  
  
  Continuing with Colombia, www.laramaciudadana.com is a blog that publishes quantitative information about different topics of national interest. Their objective is to inform public policy debate by collecting data on these controversial topics and displaying it to a general audience. Their most recent project uses satellite photos to map deforestation and evaluate industrial reforestation efforts in the country. 
  
  
  
  The map is presented in Figure : the red dots show the locations where satellites detected deforestation activities, and the yellow dots give an overview of the industrial reforestation efforts made by the Government in recent years. Take a close look at the map.
  
  ![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/496701b130fd46a8dde72d39f650dc27/asset-v1:MITx+14.310x+3T2016+type@asset+block/PSET_01_04.png)
  
  
  
  During the introductory lecture, Professor Duflo discussed that human capital externalities are one potential explanation for the fact that the relationship between schooling and output at the country level is larger than the relationship between an additional year of schooling and income at the individual level. She also argued that some of these externalities could stem from teaching or exchanging ideas within a city. A researcher decides to test this idea formally and she correlates the average schooling level in the city with the individual wage of a sample of individuals. She finds a strong positive correlation! From this statistical evidence, could she conclude that there are human capital externalities?
  
  No, from this evidence the she can’t conclude that. There are multiple arguments for this, as the ones discussed in the lecture. For example, there is a selection problem: individuals that are similar are likely to live in the same city. Thus, individuals will not only be similar in their education levels, but also in other variables that change your income. Thus, the correlation attributed to schooling might come from some of these variables.
  
  In R every time you perform an operation with a missing value, you’ll get as a result a missing value as well.
  
  In order to get the vector without those missing values, we can identify the position in which they are located. We can choose then the ones without those missing values by using the code age[c(1, 2, 3, 4, 6, 7, 8, 9, 10, 12)]. We can try to simplify this, by just telling R to omit those positions where they are located, and this is possible using two different ways: age[-c(5, 11)], and age[c(-5, -11)]. We can even simplify this more, and use the is.na function, asking first where are the missing values and then using the negation symbol !. Then, we can do this by age[!is.na(age)].


## Set theory and Probability

Suppose that X is contained in Y. Which of the following diagrams represents the sample space where X is contained in Y? 



![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/73d8809c4cc7ab59205b3f284cde9cc5/asset-v1:MITx+14.310x+3T2016+type@asset+block/L02_S01_01.JPG)



Diagram D represents the case where X is contained in Y. If X is contained in Y, then that means that all possible outcomes of X also belong within the set of possible outcomes of Y. 


In the diagrams below, which of the following shaded areas shows the union of X and Y?


![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/1c516aed5db91ae8996089778c2cb0a1/asset-v1:MITx+14.310x+3T2016+type@asset+block/L02_S01_02.JPG)

Diagram B shows the **union** of X and Y. In contrast, diagram A shows the **intersection** of A and B.




in set theory, the notation for the **intersection of** A and B, A ∩ B, is **equivalently denoted AB** in probability theory.



**Mutually exclusive** refers to two events that cannot both occur or be true at the same time. for example, the two events “It is Tuesday” or “It is Sunday” are mutually exclusive events.

### Defining Probability


 a **probability** as a collection of numbers P(A) where the following three are true: 
 
 (1) P(A) is greater than or equal to zero for all A in the sample space S. 
 
 (2) The sum of each of the P(A) in the sample space S (equivalent to P(S)) is equal to 1. 
 
 (3) For any sequence of disjoint sets A1, A2, A3, … the probability of the union of these events occurring is equal to the union of the probabilities of the events occurring.




The **probability of P(Ac) (A complemen**t) is equivalent to the probability of all events that are not included in event A. This can be a useful fact to keep in mind for cases where you know the probability of all outcomes not included in A, P(Ac), and can use this information to calculate the probability of A. For example, suppose that you know that the probability of rain on a given day is 0.6 or 60%. You can use this information to calculate the probability that it does not rain as 1-0.6, which is equal to 0.4 or 40%. (In the way this example is set up, P(does rain)=0.6 is the complement and P(does not rain)=0.4 is the event of interest.) 


a **“simple sample space**” is defined as a sample space where each of the possible outcomes are equally likely.

Let’s go through an example of a simple sample space. Suppose that you have two spinners which you can spin to point towards red, orange, yellow, green, or blue with equal probability. If you spin each spinner once, what is the probability that both of the spinners will point to blue? 



![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/ff92ff7df44e1c39cc03e3081c0c9cbb/asset-v1:MITx+14.310x+3T2016+type@asset+block/L02_S03_01.JPG)


The probability that both of spinners points to blue is 1/25. If you spin both spinners, there are 5 x 5 = 25 possible combinations. In only one of these combinations do both spinners turn up as blue, so the probability that both spinners point to blue is 1/25. 


Using the same spinner example as before, what is the probability that at least one of the spinners points to blue?

The probability that both of the spinners points to blue is 1/25. This is an example where each of the pairings of two colors is equally likely. Out of 25 possible outcomes, we only have to count the number of outcomes that involve at least one of the spinners pointing to blue. There are 9 such possible combinations, so we know that the probability that at least one of the spinners points to blue is 9/25



![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/499ab9ffc036f239b0e1f90aed5ab93e/asset-v1:MITx+14.310x+3T2016+type@asset+block/L02_S03_04.JPG)



##### Module 2: Fundamentals of Probability, Random Variables, Distributions, and Joint Distributions > Fundamentals of Probability > Probability: Another Example

A factorial for a number X, represented as X!, is the product of all positive integers less than or equal to X. In other words, take the set all positive integers less than or equal to X and multiply them together. If this concept is new to you or you need a refresher on this notation, we encourage you to learn or refresh on some of these concepts before we get too far along with probability and statistics.



 Under sampling without replacement, each time a certain colored ball is removed from the bag, the probability of drawing any of the remaining colors changes. For example, suppose there is one yellow ball. For the first draw, the probability of randomly selecting the yellow ball is 1/50. Suppose you randomly select a green ball during the first draw. When it comes time for the second draw, there are now 49 differently-colored balls in the bag. So, for the second draw, the probability of randomly selecting the yellow ball is 1/49.




###### Ordered and Unordered Arrangements


 Fundamentals of Probability, Random Variables, Distributions, and Joint Distributions > Fundamentals of Probability > Ordered and Unordered Arrangements
 
 
 
 A permutation refers to an ordered arrangements of objects. For example, the example given in class where the sequence of letters and numbers drawn would make up a complete license plate number is a permutation. One way to think of a permutation is as a list in a particular sequence.



A “permutation” refers to an ordered arrangement of objects. In this case, the ordering of handshakes is irrelevant because a handshake between candidate A and candidate B is the same as a handshake between candidate B and candidate A. So we are only interested in counting the total number of handshakes that occur. We should use a combination rule to count the number of handshakes. Specifically, if there are 9 candidates and pairings of 2 candidates shaking hands, there are 9-choose-2 handshakes total.


In the example discussed in class, there are 40! (40-factorial) possible combinations of office arrangements. For the first faculty member to be assigned an office, there are 40 different possible office assignments. Once the first faculty member has been assigned, one office is filled, and there are 39 possible office assignments remaining, and so on. So, this can be represented as 40! since this case is analogous to sampling without replacement.


Suppose that you and a friend are deciding to watch 2 movies one evening. You have 10 movie options. 3 of these are action movies, and 7 are comedies. You and your friend plan to randomly select two of the movies. How many possible outcomes are there if the order you watch them in does not matter?

There are 45 possible pairings of movies. Using the combination rule discussed in class, we can define the sample space as 10 choose 2. In this example, the number of possible combinations is represented by N!/((N-n)!n!) = 10!/(8!2!) = 45.




There are (7 x 6)/2 = 21 outcomes where you and your friend end up watching 2 comedies.



The proper intuition about independent events is that knowing one
event occurred doesn’t give you any information about
whether the other occurred.

 Two events are said to be independent if the fact that one of the events occurs does not impact the probability that the other will occur.
 
 
 
 
 Which of the following are examples of two events or outcomes that are likely to be independent from each other? (Check all that apply)


a. Two siblings are both taller than average .

b. You roll a “4” twice, when rolling a fair die two times 

c. It rains today, and your classmate brings an umbrella to class.

d. The chance that the morning bus arrives late, and the likelihood that your classmate brings a sandwich for lunch 

EXPLANATION

B and D are both examples of plausibly independent events. If you have a fair 6-sided die, the chance of rolling a 4 is 1/6. Regardless of which number is rolled on the first attempt, the chance of rolling a 4 remains 1/6 for the second roll. The two events in D are completely unrelated, so we would not expect the realization of one to impact the probability that the other occurs. In contrast, A and C represent pairs of events or outcomes that are likely not independent. If we know that one of a pair of siblings is very tall, we might increase our expectation of the probability that the second of a pair of siblings is tall. Similarly, if you know that there is a high likelihood of rain, then you might believe that there is a higher probability that your classmate brought an umbrella to class.
 
 
 
 ##### Probability---conditional probability
Recall that knowing that two events are independent means
that the occurrence (or nonoccurrence) of one event doesn’t
tell you anything about the other.
But what if we have two events where the occurrence of one
event actually tells us something relevant about the
probability of another event? How can we alter the
probability of the second event appropriately?
The probability of A conditional on B, P(A|B), is P(AB)/
P(B), assuming P(B) > 0.
 
 
 Conditional probability refers to the case where knowing the outcome of one event tells you something about the likelihood of a second event. However, if the two events are independent, then knowing that A has occurred does not tell you any new information about the probability that B will occur. In this case, the probability that B occurs conditional on A is equal to the probability that B occurs regardless of the outcome of A.
 
 
 The probability that candidate 3 wins the general election is the probability that candidate 3 wins the republican nomination multiplied by the probability that he or she wins the general election conditional on having won the nomination. This is 0.2 * 0.2 = 0.04 or 4%.
 
 
 
  
 
 To calculate the probability that a Republican candidate will win the general election, we do the following calculation: (0.3 * 0.5) + (0.2 * 0.1) + (0.2 * 0.2) + (0.1 * 0.1) + (0.2 * 0.1) = 0.24 or 24%.

P(R) = P(c1)*P(R|c1) + P(c2)*P(R|c2) + P(c3)*P(R|c3)+ P(c4)*P(R|c4) + P(c5)*P(R|c5)
 
 
We know that the probability of testing positive given that you have the condition is 85% and the probability of testing positive if you do not have the condition is 5%. Furthermore, we know that the probability of having the condition is 1%, so the probability of not having the condition must be 100% - 1% = 99%. Overall, p(t+) = p(t+|c)*p(c) + p(t+|c’)*p(c’) = 0.85 * 0.01 + 0.05 * 0.99 = 0.058, or 5.8%


From above, we know that the probability of testing positive, p(t+), is 5.8% or 0.058. We know the probability of testing positive given that you have the condition, p(t+|c), is 85% or 0.85, and that the probability of having the condition is 1% or 0.01. Using Bayes rule, p(c|t+) = (p(t+|c)*p(c)) / p(t+) = (0.85 * 0.01 ) / 0.058 = 0.1466 = 0.15 or 15%.


Let p(I) denote the probability that you are invited and p(I’) denote the probability that you are not invited. Let p(fs) denote the probability that it is Friday or Saturday and p(fs’) denote the probability that it is not Friday or Saturday. You are given that p(I|fs) = 0.8 and p(I|fs’) = 0.5. You are not given p(fs), but can calculate this as 2/7 = 0.2857 or 29% (two of the possible seven days of the week). Using Bayes rule as before, p(fs|I) = (p(I|fs)*p(fs)) / p(I) = (p(I|fs)*p(fs)) / (p(I|fs)*p(fs) + p(I|fs’)*p(fs’) = (0.8 * 0.2857) / (0.8 * 0.2857 + 0.5 * 0.7143) = 0.39 or 39%.

##### Module 2: Fundamentals of Probability, Random Variables, Distributions, and Joint Distributions > Random Variables, Distributions, and Joint Distributions > Introduction to Random Variables 

A random variable is a real-valued function whose domain is the sample space.


A discrete random variable is a variable that can only take on a finite or countable infinite number of values. Many random variables are integers, but they do not have to be.


The number of books in a box and the number of children in a classroom are classic examples of discrete random variables, because they are integer values. In other words, you can have 1, 2, 3, etc… books in a box but you cannot have 1.12324 books in a box. In principle, the weight of a box of books is not discrete, in that there are infinite possible weights and these are not countable. In contrast, if you have a scale that takes measurements in hundredths of a kilo from 0 to 100, the readings from that scale would be discrete since there are a countable number of possible readings.



A continuous variable refers to a variable that can take on any value within some interval of the real line. The interval can be either bounded (for example, a decimal number from 0 to 25) or unbounded.

Temperature, weight, and age are all continuous variables (though they could be measured and reported on a discrete scale). Age in years would be an example of a discrete variable, because it takes on a countable number of values.


A probability function describes the mapping from each outcome of the random variable to the likelihood of observing that outcome
 A probability function describes the set of probability associated with each of the possible values of a random variable.
 
 
 
 ![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/3d425ee45044b5126a81ca797d3fedb2/asset-v1:MITx+14.310x+3T2016+type@asset+block/L03_S02_02.JPG)
 
 
 
 C correctly represents that there are several equally likely combinations that would each add up to the middle values. For example, a total of 7 could be achieved from combinations of 1+6, 2+5, or 4+3. In contrast, there are few combinations that would add up to the high and low values. For example, achieving a 2 requires both die to roll a 1 and achieving a 12 requires both die to roll 6.
 
 
 
 ###### Module 2: Fundamentals of Probability, Random Variables, Distributions, and Joint Distributions > Random Variables, Distributions, and Joint Distributions > The Hypergeometric Distributio
 
 
 
 The hypergeometric distribution is characterized by the following equation:
 
 
 ![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/77ec0e8b45e6c8caffa0650165266967/asset-v1:MITx+14.310x+3T2016+type@asset+block/L03_S03_01.JPG)



a hypergeometric distribution describes the number of successes, k, out of a sample size of n drawn from a total population of size N without replacement.


##### Module 2: Fundamentals of Probability, Random Variables, Distributions, and Joint Distributions > Random Variables, Distributions, and Joint Distributions > The Binomial Distribution


 The binomial distribution describes the number of successes in n trials where in each of the trials there is a binary outcome (usually classified as “success” or “failure”). Furthermore, the “success” and “failure” outcomes are not required to be equally likely. In the Steph Curry example given in class, the outcome of each three-point attempt is either that he makes the three-point shot (success) or does not make the three-point shot attempt (failure). It is not assumed that making or missing each shot is equally likely.


Let’s do an example similar to the one described in class. Suppose that you will take 3 penalty kicks in a row. The likelihood of making each penalty kick is ¾ or 75%. What is the probability that you will score 2 (and only 2) of the 3 penalty kicks?


![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/3b356b3b332499a03bfa8e2c0d4f8586/asset-v1:MITx+14.310x+3T2016+type@asset+block/L03_S04_01.JPG)


##### Module 2: Fundamentals of Probability, Random Variables, Distributions, and Joint Distributions > Random Variables, Distributions, and Joint Distributions > Properties of the Probability Distribution



Probability---random variables

More formally, the probability function (PF) of X, where X
is a discrete random variable, is the function f X such that
for any real number x, f X (x) = P(X=x).
The probability function has properties induced by our earlier
definition of a probability. In particular,

0 <= f X (x i ) <= 1

Σ i f X (x i ) = 1


P(A) = P(XcA) = Σ A f X (x i )


A random variable X is continuous if there exists a non-
negative function f X such that for any interval A c R,

P(X c A) =∫ A f X (x)dx

the probability function fx(x) for a discrete random variable X describes the probabilities associated with each value of X. Two useful properties for the probability function are that each of the individual probabilities must be less than or equal to 1, and their sum must be equal to 1. 


##### Module 2: Fundamentals of Probability, Random Variables, Distributions, and Joint Distributions > Random Variables, Distributions, and Joint Distributions > Discrete versus Continuous Random Variables



Probability---random variables
Just like the PF, the PDF has properties induced by our
earlier definition of a probability. In particular,

0 <= f X (x)

∫ f X (x) = 1

P(A) = P(a <= X <= b) = ∫ A f X (x)dx

Note the value of a PDF at a particular x does not have the same interpretation as a probability. In fact, P(X=x) = 0 for any x if X is continuous.



this is the fundamental difference between discrete and continuous random variables. While for a discrete variable, fx(x) evaluated at x can be equal to a positive probability, for a continuous random variable, the probability of any particular point is zero.


![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/95f610380a2582e2a3d866889852ffa3/asset-v1:MITx+14.310x+3T2016+type@asset+block/L03_S06_01.JPG)



To get the probability that the continuous random variable X is between A and B, you take the integral of the probability density function from A to B. Graphically, this is equivalent to computing the area under the curve from A to B. (Remember that the total area under the curve is equal to one).



Since this is a uniformly-distributed variable, we can use proportions to calculate the probability that the random variable takes on a value less than or equal to 7. The total range of possible values is 8-3 = 5. The range of values less than or equal to 7 is 7-3 = 4. Combining the two, the probability that the variable is less than or equal to 7 is 4/5 = 0.8 = 80%.


###### Module 2: Fundamentals of Probability, Random Variables, Distributions, and Joint Distributions > Random Variables, Distributions, and Joint Distributions > The Cumulative Distribution Function


A and D are valid CDFs. Both are non-decreasing functions, originating at zero and asymptote at 1. B is not a valid CDF since it does not start at zero (implying a positive probability for impossible values of the variable). C is not a valid CDF since there is a non-decreasing portion towards the origin.


![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/94a130c1bf0de60c5eca46212b096e80/asset-v1:MITx+14.310x+3T2016+type@asset+block/L03_S08_01_1.JPG)

A correct interpretation of this CDF is that the random variable x takes on a value between 0 and B with a probability of 0.8 or 80%.


![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/07f439a56028533abc9fe63e37875cb4/asset-v1:MITx+14.310x+3T2016+type@asset+block/L03_S08_02.JPG)


#### Module 2: Fundamentals of Probability, Random Variables, Distributions, and Joint Distributions > Random Variables, Distributions, and Joint Distributions > Joint Distributio


Probability---joint distributions
If X and Y are continuous random variables defined on the
same sample space S, then the joint probability density
function of X&Y, f XY (x,y), is the surface such that for
any region A of the xy-plane,

P((X,Y) c A) =∫∫ A f XY (x,y)dxdy


Like before, properties of probability imply certain properties
of the joint PDF, such as it must integrate to 1 over the
xy-plane, and any individual point or one-dimensional curve
has probability zero.




Similar to the case of the PDF for a single variable, the joint probability at any particular point, fxy(x,y) is equal to zero, and the joint PDF must integrate to 1 over the x-y plane.






#### Module 3: Gathering and Collecting Data, Ethics, and Kernel Density Estimates > Gathering and Collecting Data > An Overview: Where Can We Find Data?



Any information that could be used to identify or contact someone needs to be anonymized (removed) from a dataset before it is made publically available. This includes name, address, and phone number.


While it is true that the information regarding respondents’ state of residence is not available publically since it could be used to identify individuals, it is possible to request this information. First, as Professor Duflo discusses, you would need to apply for a Human Subjects clearance from an IRB at your university or from another research institution and then email the owner of the dataset with your request. This process is generally true for other datasets as well. Therefore, if some information is not available, such as a state or district, but you believe it has been collected, you should check to see if you can request for it.
 
Module 3: Gathering and Collecting Data, Ethics, and Kernel Density Estimates > Gathering and Collecting Data > Data Collection in Practice


The purpose of a “back check” is to ensure the quality of the data collected. In a back check, a separate team visits the same household a few weeks after the original team already visited the household. The “back check” team asks the household a subset of the questions originally asked in order make sure that the original team was properly conducting the survey.
Answer choice a refers to a panel or longitudinal survey, which is a follow-up survey of the entire original sample, with the exception of those who cannot be tracked down. Answer choice b refers to piloting a questionnaire, while answer choice d is the definition of a repeated cross-section.



Administrative data, when available, tends to better than self-reported data since it does not depend on the respondents both accurately remember or understanding the question correctly. In the segment, Professor Duflo describes this through the example of prices. As she discusses, you can either ask people directly how much they paid for something, or go to the local market and find out the prices. The latter tends to be more accurate than the former.

##### Module 3: Gathering and Collecting Data, Ethics, and Kernel Density Estimates > Gathering and Collecting Data > Replication Data


As mentioned in the question, the unit of observation is the household, therefore it cannot be an individual-level panel. Since different households and different villages are surveyed each time, it cannot be a household-level or village-level panel. However, since the data can be aggregated at the level of the district and the same districts are in the sample each year, it can be considered a district-level panel. As Professor Duflo mentions, typically from a repeated cross-sectional survey, when you aggregate enough, you can get to a panel at a larger level of aggregation.


In this segment, Professor Duflo mentions how she believes that these datasets are not used enough. As discussed, researchers often only use a subset of the variables that they collect from the surveys, as they typically focus only on studying the impact of the intervention.


##### Module 3: Gathering and Collecting Data, Ethics, and Kernel Density Estimates > Gathering and Collecting Data > Obtaining Administrative Information

, the “Freedom of Information Act” is a law that gives citizens the right to access information from the United States federal government. Agencies must provide any information requested unless the information is protected from disclosure by law. Note that the law only applies agencies of the federal government, and therefore does not include private firms or institutions such as Facebook or MIT. To learn more about the Freedom of Information Act, you can visit this website: https://www.foia.gov/


##### Module 3: Gathering and Collecting Data, Ethics, and Kernel Density Estimates > Gathering and Collecting Data > Intro to Web Scraping


“web scraping” consists of pulling data from one page, “crawling” an entire web page, or setting up a program that runs in the background. Note that “crawling” refers to extracting data from a website programmatically.


BeautifulSoup is a Python package that provides tools that are preprogrammed to find information on websites and therefore make web scraping easier, even for those unfamiliar with Python. Most of the things that you might want to do are already available in BeautifulSoup.


 the more conventional way to perform web-scraping is to use Python. While there are some entry costs to using Python in terms of learning how to program, there are plenty of tutorials online and tools such as BeautifulSoup that make it rather simple to use in order to perform web scraping.





Professor Duflo provides an example of a similar experiment in this lecture segment and discusses how you would need to seek Human Subjects Approval in order to perform such an experiment. Even if you are not collecting any personally identifiable information (PII) (i.e. the information is collected anonymously), if the study involves Human Subjects, you still need to gain Human Subjects Approval. The IRB committee reviews the proposal to both make sure that the study is ethical and that if PII is collected, it is properly stored and protected.



This segment discusses some of the hassles with using paper surveys. Typically, after the survey is finished, the data from the paper survey is manually typed into a software that mimics the layout of the paper survey. Due to data entry error, the data needs to be entered twice and then any errors between the two entries need to be reconciled. While there are companies that offer to scan surveys, the quality of results varies. As a result, Professor Duflo mentions how J-PAL now primarily uses digital data collection methods, which even in resource poor settings tends to be cheaper and more efficient.
 
##### Module 3: Gathering and Collecting Data, Ethics, and Kernel Density Estimates > Summarizing and Describing Data > Plotting Histograms


To obtain the proportion of cases that fall into each bin, you must divide the the number of cases in that bin by the total number of observations.


##### If your bandwidth is smaller than optimal, your function will look very jagged. As Professor Duflo mentions, the smaller the bandwidth, the bigger the variance. When you pick a bandwidth that is too large for your data, the function will try to find data that does not exist. This will cause the result kernel density function to be biased, meaning that there is an important characteristics of the data that you are missing as a result of selecting a non-optimal bandwidth.




If your bandwidth is smaller than optimal, your function will look very jagged. As Professor Duflo mentions, the smaller the bandwidth, the bigger the variance. When you pick a bandwidth that is too large for your data, the function will try to find data that does not exist. This will cause the result kernel density function to be biased, meaning that there is an important characteristics of the data that you are missing as a result of selecting a non-optimal bandwidth.


As discussed in this segment, a kernel density plot provides a continuous probability density function of a random variable. In the last segment, we learned that a histogram is also an estimate of a probability distribution for a continuous variable, but, unlike the kernel density function, it is not a continuous function. Instead, a histogram demonstrates the number of observations or the proportion of observations that fit into a certain “bin.” From this, a histogram would be preferable to a kernel density function for cases in which we want to demonstrate the proportion of observations that fall into certain bins, such as when we want to show the proportion of households that fall within specified income brackets.

Let K(x) be a non-negative, symmetric kernel weighting function, centered at zero and integrating to 1. Often, K(x) is chosen to be standard normal density, and the kernel density estimator is given by:

![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/9787a359815ccdc31fb3df517ba096a8/asset-v1:MITx+14.310x+3T2016+type@asset+block/L05_S01_04.png)


	A normal distribution with mean equal to the sample mean and standard deviation h.
Explanation
Given that K(x) is the standard normal density function, then by definition given in the equation above represents a normal density with standard deviation h.





these lines illustrates the bandwidth of the kernel density estimator shown in figure below?



![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/293aeb264f7e602376c912cf98fdd581/asset-v1:MITx+14.310x+3T2016+type@asset+block/L05_S01_06.png)

The distance between the two points at which a given blue dashed line intersects the x-axis 

the bandwidth of the kernel density estimator is the width of the interval at which the kernel function is estimated.


Since the kernel function integrates to 1, and the bandwidth represents the (fixed) width of the interval over which it is evaluated, the bandwidth determines the limits of the integral, and thus determines the height of the kernel function.


The goal of kernel density estimation is to estimate random variables’ probability density functions. We turn to kernel density estimates to obtain a smoother, less variable representation of the underlying data, than a histogram.
Intuitively, any function that weights observations on the boundary of the intervals more than observations at the center of the interval surrounding a given point, will lead to higher variance. This would defeat the purpose of a kernel, as it would result in a less smooth estimator.



##### Module 3: Gathering and Collecting Data, Ethics, and Kernel Density Estimates > Summarizing and Describing Data > Bandwidth in Kernel Functions



a

![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/ab0a2cce9e1001b30cbbb27672296549/asset-v1:MITx+14.310x+3T2016+type@asset+block/L05_S01_01.jpg)


b


![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/ac84701afa3763ba8cc4baace53304e3/asset-v1:MITx+14.310x+3T2016+type@asset+block/L05_S01_02.jpg)




c


![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/162fb398fd4381da862cc182f2b36e17/asset-v1:MITx+14.310x+3T2016+type@asset+block/L05_S01_03.jpg)


the parameter h, the bandwidth of the estimating function, controls the smoothness and corresponds to the bin width of the histogram If h is too small, the estimate is too rough; if it is too large, then the resulting estimate of the function is too smooth, since it obscures the shape, and spreads the probability mass out too much, and hence, is biased.


The mean squared error is equal to the squared distance between the observed values and the predicted values of a random variable. This is a combination of variance and bias, both of which are determined by the choice of bandwidth, and hence is a good way to determine the optimal bandwidth.



The binomial distribution is approximately normal with mean np and variance np(1−p) for large n and for p and (1−p) that are not too small.

##### Module 3: Gathering and Collecting Data, Ethics, and Kernel Density Estimates > Summarizing and Describing Data > Comparing Distributions




Percentiles cannot be found directly from the height of the histogram. Instead, the 4th percentile is the point on the x-axis for which the cumulative histogram (the integral of the histogram) equals 0.04.


boxplot is a graphical display that shows a measure of location (the median), the spread of the data (the interquartile range), and the presence of outliers. Thus, it does not allow us to precisely compare different percentiles of US and Bihar height distribution per se.



##### Module 3: Gathering and Collecting Data, Ethics, and Kernel Density Estimates > Summarizing and Describing Data > Cumulative Histogram


When you are interested in probabilities, representing them
with CDF is more conventional, why?
 A pdf represents probability with areas while a cdf represents
probability with (vertical) distances.
 It is much easier for the eye to compare distance than areas:
the CDF is good to compare two distributions
 In particular you can very easily visually assess first order
stochastic dominance : for any size, the probability that a
woman in Bihar is smaller than that size is larger than the
probability that a US woman is smaller.


A histogram contains information about the frequency of observations within each interval. Dividing the frequency by the total number of observations gives us the density. On the other hand, a cumulative histogram conveys information on the “cumulative” frequency / density and hence provides an idea of what the CDF would look like. You can think of it as a running count as you move across bins, whereas a normal histogram resets the count for each bin.




![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/33856a83f440dbd152c62d21dabba750/asset-v1:MITx+14.310x+3T2016+type@asset+block/L05_S06_01.png)


As Professor Duflo explained in class, since The figure shows that the “Automatic Enrollment” curve is to the right of the the “Selection” curve. From that, we can see that for any given consumption level, there are more people who consume less than than amount under the “Selection” scheme. So by definition, the automatic enrollment curve first order stochastically dominates the selection curve.
 
##### Module 3: Gathering and Collecting Data, Ethics, and Kernel Density Estimates > Summarizing and Describing Data > Empirical Strategy



The income distribution of country A first-order stochastically dominates that of country B, if the CDF of income in country A is everywhere below (or equivalently to the right) of country B.


##### Module 3: Gathering and Collecting Data, Ethics, and Kernel Density Estimates > Summarizing and Describing Data > Representative Joint Distributions

Using the below graph, for each of the three players, approximately what percentage of their successful shot attempts (“shots made”) were from further than 20 feet away from the basket?
![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/75443065753a3f1d4c77fb2988f7376e/asset-v1:MITx+14.310x+3T2016+type@asset+block/CDF_Player_Compare_Shots_Made.png)


 James: 15%, Durant: 25%, Curry 45% 
 
 
 
 
![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/7ab7bed06cdc95172cea443de3a656c9/asset-v1:MITx+14.310x+3T2016+type@asset+block/shotdistance_baseline.png)



![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/720566f81d1c68db1602a0e0af446dda/asset-v1:MITx+14.310x+3T2016+type@asset+block/shotdistance_midline.png)


If the 3-point line becomes a straight line at a fixed distance from the baseline, we would expect for people to shoot less from the sides. We would still expect some shooters to bunch around the 3-point line. So there would be bunching close to the basket in the middle, and at the 3-point line, likely also in the middle (because it’s closest to the basket out of all points on the 3-point line). 



##### Module 3: Gathering and Collecting Data, Ethics, and Kernel Density Estimates > Summarizing and Describing Data > An Example: The Income Distribution

Top-coding implies that income levels greater than a certain amount are recoded such that, earnings greater than a specified amount are replaced by some maximum. As Professor Duflo explained in class, this is why there is small peak “bump” at the right tail of the distribution.



 
 From the Piketty-Saez graph shown below, it can be seen that between 1978 and 2013, the share of total income earned by the bottom 99% of the population _________, and that of the bottom 95% _________.
 
 
 ![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/3c34f81766ead56d8ac74b8ed951ef9f/asset-v1:MITx+14.310x+3T2016+type@asset+block/L05_top1percent.png)
 
 
 The top 1% income share increased from roughly 8% to 22%, and the income share going to between the top 5 and 1% increased from roughly 13% to 17%. Therefore the overall share of the top 5% increased from roughly 8+13=21% to 22+17=39%. Hence the bottom 99% share decreased from 100-8=92% to 100-22=78%. And the bottom 95% share decreased from 100-21=79% to 100-39=61%.
 
 For example, Piketty-Saez have information like “People paying between 30 and 35% in taxes have an average income of $200,000 and those paying between 35 and 45% have an average income of $500,000.” But the problem is that the cutoffs of the tax brackets do not coincide with the percentiles of the income distribution we are interested in (e.g. top 1%, top 5% etc). Therefore, they need to somehow interpolate the income distribution and instead use an interpolation technique exploiting properties of the Pareto distribution (which will be discussed in the next segment).
 
 
 
 ##### Module 3: Gathering and Collecting Data, Ethics, and Kernel Density Estimates > Summarizing and Describing Data > Pareto Distribution
 
##### Module 3: Gathering and Collecting Data, Ethics, and Kernel Density Estimates > Summarizing and Describing Data > Pareto Distribution
 3: Gathering and Collecting Data, Ethics, and Kernel Density Estimates > Summarizing and Describing Data > Estimation of Pareto Coefficients
 
 
 If the highest tax bracket starts at $200,000 and people in the highest tax bracket earn on average $1,000,000, then the implied Pareto coefficient is λ=____.

1.25

From s=200,000, y=1,000,000, we have b=y/s=5. Hence λ=b/(b-1)=5/4=1.25.
 
 
 
 ![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/a906ca9630247c85b89eaedd45d02121/asset-v1:MITx+14.310x+3T2016+type@asset+block/PSET03_Q13_code.png)
 
 
 
 The below figure is produced by running this code:

![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/36efcd8d8cd5dee02d1446cbd649bdeb/asset-v1:MITx+14.310x+3T2016+type@asset+block/PSET03_kernel1.png)


 
 
 The following plot shows the different shapes of the kernel functions. As you can see, the only one without a bell-shaped function is the rectangular one. This kernel is also called the uniform kernel
 
 
 ![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/411641de610467c39a058739e2897d3d/asset-v1:MITx+14.310x+3T2016+type@asset+block/PSET03_Q13_solution.png)
 
 
 the optimal bandwidth balances a trade-off between bias and variance. The larger the bandwidth, the larger the bias of the density calculated at each point is, and the smoother the function looks. As you can see, the kernel in answer (c) is the furthest from the histogram, which suggests it is the one that was constructed with the largest bandwidth.
 
 
 ![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/b58aa1d6fc57f10ab929989e34f0f0bb/asset-v1:MITx+14.310x+3T2016+type@asset+block/PSET03_kernel2.png)
 
 
 
 
 From the figure you can see that the black line is always below the blue line. This is precisely the definition of first order stochastic dominance since for all value of k, it is satisfied that 
 
 ![](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/83ad49a5c938e084a010b530e70ff066/asset-v1:MITx+14.310x+3T2016+type@asset+block/PSET03_edist.png)
 
 
 
 
 We know that if 0<x<1 then it should also be the case that 0≤y≤1. We also have that: Pr(Y≤y)=Pr(X2≤y)=Pr(X≤y)=∫0ydx=y. To get the pdf we take the derivative with respect to y, and then we have that fy(y)=12y for 0<y<1.
 
 
 We have that:
 
 $$Pr (Y=y)= Pr \bigg( \frac{X}{X+1}=y \bigg) = Pr \bigg( X = \frac{y}{1-y} \bigg)= \frac{1}{3} \bigg( \frac{2}{3} \bigg)^{\frac{1-y}{y}}$$
 
 
Pr(Y=y)=Pr(XX+1=y)=Pr(X=y1−y)=13(23)1−yy
Since x=0,1,2,⋯, then y=0,12,23,34,⋯,xx+1,⋯






## week 05


The example of the probability integral transformation given in class demonstrates which of the following?

b. The result that if you transform a random variable by its own CDF, the resulting distribution will be uniform [0,1] 

Transforming a continuous random variable by its CDF yields a random variable that is uniformly distributed.

a PDF does provide a complete description of the distribution of a random variable. In some cases, this can be more information than is necessary to capture or communicate at one point, so it is useful to have “moments” that can summarize a random variable.

The median describes the point at which 50% of the values lie above and 50% of the values lie below. In other words, this is the point above and below which the integral of the PDF is equal to ½.

 The mean, or expectation, can be visualized as the balancing point of the density. 
 
 
 A procurement auction is one where various suppliers place bids for producing some kind of goods or services, and the winner is the supplier that presented the lowest bid (subject to other requirements or criteria). This can be thought of as somewhat of a reverse auction.
 
 
##　Module 5: Moments of a Random Variable, Applications to Auctions, & Intro to Regression > Moments of a Distribution and Auctions > A Side Trip into Auction Theory - Quiz
 
 many items from art pieces, livestock, tulip bulbs in the Netherlands, and some (but not all) items on eBay are typically sold at an auction. In contrast, many goods such as groceries at a grocery store are typically sold at what is known as a list price.
 
 A Dutch auction refers to one where the bidding price starts high and consistently decreases until at least one bidder is willing to pay, at which point they are declared the winner. 
 
 
 several reasons are discussed for why a seller may choose to sell an item using an auction rather than through a posted price. Many items that are auctioned off tend to be expensive, but that does not have to be the case. For example, often expensive items like medical equipment, electronics, homes, etc. are sold at a posted price. Items that are commonly auctioned off are those where there is a lack of information or asymmetric information about the value of a good. Additionally, goods that are very rare or one-of-a-kind are often sold via auctions. 
 
 
 
 Generally speaking, the order statistic refers to the maximum in an i.i.d. group of random variables.
 
 	The random variable defined as the maximum among a group of independent and identically distributed random variables 
    
    Expected profits from a sale are calculated as the probability that at least one potential buyer has a value above the posted price. This is represented by the equation , where refers to the amount that you would get if you decided to sell at a posted price and refers to the probability that you sell the good. The probability that you sell the good is the probability that the order statistic (or the maximum value) of the set of values is greater than or equal to .
    
####　Module 5: Moments of a Random Variable, Applications to Auctions, & Intro to Regression > Moments of a Distribution and Auctions > Modeling the Posted Price 


Posted price:
Set the price at p, sell the good if there are any Vi >= p
The expected profit:
E(Π(p)) = pP(Vi >= p for at least one i)
= p(1-pN)
So dΠ/dp = 1 - (N+1)pN and the optimal price is
Futhermore, the expected profit under that optimal price is
