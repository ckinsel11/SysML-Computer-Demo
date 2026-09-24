# Why do I model?
The short and simplest answer to this question is: to answer stakeholder questions. There's a lot of nuance within that answer, and I'll cover a bunch of the "standard" questions below. 

# The Breadcrumb Trail
At surface level, this seems doesn't seem to figure in to the bucket of "stakeholder questions". However, this is probably the most common base question which takes the form of "Why did we do X?". One of the biggest reasons to model is to be able to answer that question by documenting our rationale as we make decisions in our engineering process.

## Requirement Derivation
Traceability is the big word when we talk about requirement derivation and going from level to level, but there's more to that analysis that we should capture to leave our breadcrumb trail for later. Let's look at the highlighted process:
```
//Step 1 : Group Requirements
//Step 2 : Analyze Requirements 
//Step 3 : Author Requirements 
//Step 4 : Establish Traceability
//Step 5 : Allocate Requirements
```
### Group Requirements
Requirement derivation at its simplest is a 1:1 or 1:many relationship, but in a lot of contexts it is a many:many as there can be a lot of source documents/standards to consider as we derive our requirements. 

I don't derive requirements from one parent requirement at a time. I group them by topic and the kind of work needed to derive lower-level requirements. Flow downs are grouped, behaviors are grouped and performance are grouped. This grouping allows us to organize our derivation efforts and see all of the impacts based on the sources. 

### Analyze Requirements
This section is the work required for the requirement derivation. Flow downs don't really have any work required to derive lower-level requirements. Functional requirements need to have behaviors/processes defined to get further requirements. For these we can develop use cases to specify the behavior required which leads to lower-level requirements. Performance requirements will require some form of math. We want to link in that analysis, report, or integrate it in to the process and then can author the lower level requirements based on that math.

### Author Requirements
Based on the work done, we can author our lower-level requirements. Keep in mind that we don't need to author strictly one-level at a time. Write requirements as you find out you need them and don't worry about system/subsystem/component layers when authoring. For example, in my computer demo, the stakeholder need is for any SSD to be from Samsung. This requirement doesn't need to go through every layer to get down to the component, we can go straight there.

Requirements should be authored in a very generic way so that we authored one time and roll out N times. The format should look something like "The *subject item* shall ... do thing". The subject item language should be replaced as you get the requirement into your requirement management database. 

### Establish Traceability
This is where we establish links between the parent requirement (baselined source requirement) and child (authored requirement). Because we're doing this as part of a full process, we can see the tied requirements and the work we did to get there.

### Allocate Requirements
We can then mark the elements these requirements apply to and roll out those requirements into our requirements management tool and update the language to reflect those elements.

## Trade Studies / Analysis of Alternatives
Trade studies or analyses of alternatives allow us to document our decisions and rationale for making those decisions. Let's look at the general process:

```
//Step 1 : Identify requirements and assumptions
//Step 2 : Identify alternatives under consideration
//Step 3 : Identify evaluation criteria 
//Step 4 : Weight selection criteria
//Step 5 : Define criteria scoring scale
//Step 6 : Conduct evaluation of alternatives
//Step 7 : Record results
```

### Identify requirements and assumptions
What are the factors that go into our decision from a requirements standpoint? What are we assuming when we make the decision? This is important because those requirements can change and assumptions can become knowns during the development cycle. We will revisit these decisions over time. 

### Identify alternatives under consideration
What were the options considered? New products and versions get released all the time and can change the outcome of the process. We need to document what we were even considering at the time.

### Identify evaluation criteria
What were the factors the impacted the decision?

### Weight Selection Criteria
What factors have the biggest impact on our decision? What do we value the most?

### Define criteria scoring scale
Are we scoring out of 5? 100? or some other scale?

### Conduct evaluation of alternatives
Crunch the numbers and give justification for the scores. Why did this thing score so well or bad? What were the differentiators?

### Record results
Why did we pick what we picked? Give rationale and detail as to why the selection was the best or why it wasn't selected. And it is perfectly acceptable for the answer to be "Because so-and-so said so". It's more important to write down the rationale because these decisions can be revisited over time and it's better to know what was thought at the time, than to guess.

# Physical "Verification"
I personally love the physical modeling space within SysML. And specifically when we get into interface modeling, from electrical signals, pin-outs, and cable connections. The biggest question to answer and assist in the analysis is the run through of that requirement based data into the verification that the components as designed meet those interface requirements. 

A good example of this is verifying that the cable harnesses are designed to meet the pin-to-pin requirements. Because each box interface (pin-out) is independent the harness is just the connection point with no data on it. This then can verify the pin-outs are correct and the cable connects the right pins together. We can end up finding errors in either the box interface or the cable because signal signs get flipped, or Transmits become Receives. We want to verify that the design is consistent through all of the drawings before we get to building and assembling hardware.

This is true for the other parts of the interface. Verifying interface compatibility goes a long way prior to purchasing or building any part of the system.