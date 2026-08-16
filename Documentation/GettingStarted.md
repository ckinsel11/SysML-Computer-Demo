# Overview
This project is a walkthrough, demonstration, and explanation of SysML v2 in context of a personal computer model. A personal computer was chosen as reference because it is relatable to many people and the interfaces and components are very standardized. 
# How to get started
 A modeling effort starts with two basic questions: 
1. What am I trying to model?
2. How can I use the model to answer questions and make decisions?

The depth of the model is highly dependent on those questions, as we may not need to get super detailed in order to have the information to answer those questions. It is very important that questions will arise, and you may not have the answer

For our PC example, what do we need to know?
1. Components are compatible and will make a valid configuration
    1. Interfaces are compatible
    2. Power is sufficient
2. Needs and requirements of the stakeholder (me) are met

This leads us to the conclusion that I need to capture a PC definition, a list of usual components, and then a set of possible components to choose from to evaluate the options. Maturity will develop over time and some modeling will be done for the sake of demonstrating the capability, rather than actual need and I will point those out as we go.
# Initial Definition of the System
For this demonstration, we'll start with defining a generic computer system. The following lays out a generic definition of a computer and all of its standard major components. For context, this is everything that goes into the case. We will discuss other peripherals later.
```      
    abstract part def Computer {
        doc /* A machine that can be programmed to carry out sequences of artithmetic or logical operations */
        part cpu[1];
        part cooler[1];
        part motherboard[1];
        part ram[1..4];
        part drive[1..*];
        part gpu[1];
        part 'case'[1];
        part 'power'[1];
    }
```
## Abstract Key Word
Abstract objects are kind of like "blue prints" in that it defines an object in a generic sense. Abstract definitions are very useful when you have multiple configurations of the same kind of object. You give it all the expected properties (part or value) for the object, and then all of your subsets will get those properties as well.
## Definitions (def key word)
SysML v2 is broken down into a definition/usage model. I like to think about definitions in two distinctly different contexts. The first is demonstrated with our computer definition: the specification of an object. The second is similar in that I relate it to the definition of commercial-off-the-shelf (COTS) products where we don't care about the serial numbers or other specifics, but the broad-scale part number. 
## Documentation
For definitions especially, put documentation on it to describe what it is you are modeling, what it represents, and sometimes how to use it.
## Multiplicity
A system can have any number of parts and duplicates of those parts. We can specify those through the property's multiplicity, which is shown in []. Most of the time and by default, multiplicity is 1, but as you can see a personal computer can have 1 to many drives, and 1-4 sticks of RAM. These can also help set the system boundary or system design space.
# Refining the System Definition
Now that we have our first definition, let's go through the first round of maturation by typing the parts. First we will need to define the components, then type the parts in our system definition.
## Definining the Components
Let's look at one more definition example for a component. The same rules apply as described above for abstract, definitions, documentation and multiplicity.
```
    abstract part def 'Central Processing Unit' {
        doc /* Primary Processor of a Computer */
        attribute 'Performance Core Clock' : Real;
        attribute 'Performance Core Boost Clock' : Real;
        attribute 'Thermal Design Power' : Real;
        attribute Microarchitecture;
        attribute 'Core Count' : Integer;
        attribute 'Thread Count' : Integer;
        attribute 'Maximum Supported Memory' : Real;
        port Socket;
    }
```
## Attributes

## Ports (Interfaces)

