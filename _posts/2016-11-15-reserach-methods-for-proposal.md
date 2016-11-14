---
published: true
layout: post
title: Reserach Methods
categories: proposal
tags: proposal
---
## RESEARCH METHODS

$$ \beta $$

The principal method of analysis will be to develop energy systems models to examine the allocation of power across renewable and non-renewable generating sources, and between jurisdictions along interties. Our focus is on Canada and our approach will be to construct a decision support model for two separate electricity grids, each representing a different mix of generating facilities.

 - The grids are connected by a transmission intertie that allows them to trade electricity and meet the constraints imposed by different forms of generation. (Decision variables include the allocation of generation to the various generators in the system, plus the capacities of transmission lines.) 

 - One grid relies primarily on hydroelectricity, with remaining load met by natural gas and other power sources (including biomass). 
 - The other system meets base-load power needs with coal, CCGT and/or biomass assets, while marginal power is produced by a mix of hydro and open-cycle natural gas for peak power production. 
 - A renewable source such as wind is introduced at various levels. Case studies will consider British Columbia and Alberta, and Nova Scotia and Newfoundland and Labrador (NL); in both situations, one grid is fossil fuel driven while the ‘partner’ grid consists almost exclusively of hydro assets, while new interties are either under construction (NS-NL) or contemplated (BC-AB).
 
The energy systems models employ mathematical programming and simulation. A description of the type of models that will be used in the study is found in van Kooten (2012). The models to be developed in the proposed research will expand extensively on this prototype modeling to include the integration of two grids in a more explicit fashion, a sub-model detailing the operation of hydroelectric facilities, the interaction between disparate grid operators, and the calibration procedures.

### Game Theory and Grid Expansion
The system operators will be modeled as strategic agents maximizing net revenues. Each operator takes into account the decisions of the other operator via the reaction functions of game theory (Bierman & Fernandez 1998). If the available data consist of hourly prices, the operators will maximize profits with the net revenue function taking into account the decisions of the other operator through a Bertrand game type of reaction function; alternatively, if hourly demand data are only available, this will necessitate the use of cost minimization and a Cournot reaction function to model strategic decisions.

A challenge to energy systems modeling in this context concerns the use of game theory in modeling the costs and benefits available when, in our study, two separate grid operators (or two provincial governments) cooperate to allocate generating assets optimally to their mutual benefit. This
issue has not previously been considered in the modeling of large-scale transmission interties across multiple grids and jurisdictions (e.g., see DeCarolis & Keith 2006). Addressing this issue and determining how cooperative versus non-cooperative solutions affect the economic wellbeing and CO2
flux from electricity production and storage is one of the long-term objectives of the research.

### Optimization 
Optimization is subject to technical constraints that are specific to each electricity grid. Accurate specification of the constraints is important for measuring the true impact of renewable energy on the generation assets, the overall grid and CO2 emissions. Thus, data collection will be a major component
of the project. We will employ an optimization approach (Ravindran et al. 2006) that builds upon methods used previously (Prescott et al. 2007; Benitez et al. 2008; Maddaloni et al. 2008a, 2008b; Prescott & van Kooten 2009; Timilsina et al 2013; Sopinka et al. 2013).

### Calibration of Mathematical Programming Models in the Energy Systems Context

The complexity of the programming problem poses a number of challenges. The main one relates to the costs of operating power plants at various levels of capacity. Information on costs is difficult to find; cost data and (quite sophisticated) decision models used by system operators and asset owners are
proprietary. Further, even if costs are available for individual generators, models generally aggregate several or even all generators of a particular fuel type. In that case, engineering costs are no longer relevant for modeling purposes as costs need to take into account how the various generators operate in tandem and how external factors, including the operation of other generator types under changing load conditions, affect operating costs (Önal and McCarl 1989). 

Models must then be calibrated to actual operating levels, and this requires the analyst to discover the economic cost functions. This has not been
done previously in this context. Thus, a major contribution of the current research is to demonstrate how one or more calibration methods can be used to develop economic cost functions for grid optimization modeling.

One early approach to calibration is referred to as the historic mixes approach (McCarl 1982; Önal and McCarl 1991). This method does not find the explicit economic cost function, but, rather, constrains future allocation of load across generators so it resembles the historic mix. It assumes that
observed choices – allocations of load across generators – are optimal; that is, past choices are optimal or else they would not have been chosen. Further, because solutions occur at extreme points or corners (viz., simplex algorithm for solving linear and quadratic programming problems), a linear combination
of observed mixes is also optimal. 


#### PMP
A mathematical programming (MP) model would then take historical choices into account by constraining the current decision to be a weighted average of past decisions, with the weights determined endogenously within the MP model and the sum of the weights constrained to equal 1. Chen and Önal (2012) suggest an extension of this approach to include new sources of energy, which have not previously been observed to generate power. This method adds synthetic (or
simulated) mixes of the decision variables to the historical mixes, allowing the optimization procedure to choose the weights, and constraining the sum of the historic and synthetic weights to equal 1. Notice that the ‘cost’ problem is not really solved, although the optimal allocation of load to generators is found. The most promising alternative approach that directly enables one to find the economic cost functions is based on positive mathematical programming (PMP), which was originally proposed by
Howitt (1995) and is increasingly applied to resource management problems (Paris 2011; Heckelei et al., 2012). 

PMP is especially suited for estimating cost functions for groups of generators, with the level of aggregation chosen dependent on the problem to be addressed and the overall complexity of the programming model. PMP takes into consideration not only the operating and maintenance costs of
generating power from a particular source (e.g., an aggregation of several thermal power plants or generators), but also explicitly accounts for the costs associated with planned and unplanned shutdowns, other nuances specific to existing assets (e.g., varying ages of generators), et cetera. PMP has yet to be applied to the estimation of cost functions in the operation of electricity grids.

The PMP approach usually requires specification of a strictly diagonal quadratic cost matrix, implying that there are no substitutionary or complementary effects among generating sources. Yet, the almost universal existence of multi-sourced electrical generating grids (viz., coal, natural gas, hydro, wind) implies that the regional power authorities are well aware of the interdependencies among generators, and use them together to maximize profits. 

#### ME

Clearly, the assumption of a diagonal cost matrix may not be realistic. Fortunately, the PMP method has been extended by employing information theory and the principle of maximum entropy (**ME**) to obtain parameter estimates for the entire cost matrix (Howitt 1995, 2005; Paris & Howitt 1998; Buysee et al. 2007).



Heckelei and Wolff (2003) argue, however, that in some cases PMP is inconsistent, because the derived marginal costs will not converge to the true MCs. They introduce a generalized maximum entropy approach in which the shadow prices associated with the calibration constraints of PMP and the parameters of the cost function are estimated simultaneously using mathematical programming, something they refer to as econometric programming. 

In essence, the method employs a standard Lagrangian with econometric criteria applied directly to the Karush-Kuhn-Tucker conditions. This permits prior information to influence the estimation results even in situations with limited data, while ensuring computational stability.

The ME approach can be used in conjunction with PMP methods to reconstruct electricity production functions; the contribution of ME is to reconstruct the parameters of the production function so as to duplicate the multiple-output generating mixes historically observed. By specifying a set of observed costs associated with power production (i.e., operating and maintenance costs, cost of planned and unplanned shutdowns and retrofits, etc.), the ME technique estimates a unique distribution from the prior cost information. It has been shown that the distribution with the maximum entropy is the best estimator. 

Again, maximum entropy has yet to be applied to electrical grid management settings, but it appears to be well suited for solving problems associated with interdependent decisions. The proposed research will thus investigate how an electricity grid management model can be calibrated using historical mixes, PMP and maximum entropy methods. This is envisioned to be a long-term task.

### Complexity and Energy Systems Modeling 
A second set of challenges relates to the complex nature of the mathematical programming problem if hydroelectric sources of generation are included. Although hydro turbines have a rated capacity, their operating capacity depends crucially on head height – the volume of water in the relevant
reservoir. Reservoir volume and capacity also impact the ability of hydro resources to store intermittent and other sources of power. Modeling these attributes is a challenge that leads to nonlinearities that may
need to be addressed using linear approximation methods (see Muckstadt & Koenig 1977; Loucks et al. 1981; Murillo-Sanchez & Thomas 1998; Arroyo & Conejo 2000).


Further, anecdotal evidence from Alberta and Nova Scotia indicates that base-load generators do not adjust output very much during the day, with the exception of planned maintenance or unplanned outages. Base-load generators are nonetheless capable of responding quite rapidly (even ramping up
their entire capacity within one hour) if they are in a ‘committed’ state. Ramping rates are slightly slower when the generator is ‘warm’, but it takes a significant time to ramp up from a cold start. Taking these
states into account in mathematical programming poses challenges, although Arroyo & Conejo (2002) provide some guidance in how this might be addressed (although their example is somewhat contrived) .


### Mathematical Programming and Policy Analysis
In addition to data collection, the research will consist of two principal activities 
– (i) providing theoretical foundations for the game-theoretic component and PMP method in the context of power optimization across the generators comprising the grid, and 
- (ii) constructing mathematical programming models that can be solved numerically in the GAMS (McCarl et al. 2007) software environment. By
solving a well-calibrated model numerically with real world data, we can be confident that the model can be used for policy analysis (Paris 2011). We will be able to track changes in the utilization of renewable power sources and CO2 emissions as electricity demand changes over time. We will be able to
examine how the optimal structure of an electricity grid in a particular jurisdiction would change under various policies to mitigate climate change, highlighting opportunities for improving the performance of the current electricity system. 

Further, we can estimate potential costs of such policies. Finally, we can
determine whether and under what circumstances the grids we examine can reduce CO2e emissions by upwards of 80% from 2005 levels by 2050, as has been agreed to in international negotiations. 
Modeling energy systems such as electricity grids is fraught with complexities related to the engineering of physical assets, the economics of regulated (command-and-control) versus unregulated (privatized) decision making (e.g., BC vs. Alberta), calibration and solution techniques in mathematical programming, et cetera. After more than a decade grappling with these issues in a variety of contexts (including in the classroom), the PI needs a period of continuous funding to be able adequately to address the issues identified in this proposal.
