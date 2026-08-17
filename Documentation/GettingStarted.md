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
For this demonstration, we'll start with defining a generic computer system which includes its major components. A generic definition is useful here because we are going to analyze multiple configurations of a computer system for comparison purposes. For context, this is everything that goes into the case. We will discuss other peripherals later.
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
## Defining the Generic Components
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
Attributes are the properties of the object. When we define generic objects using "abstract", we probably won't set any values as default as we are just creating the locations for our values to live later when we define specific objects. At the generic level we are just going to specify what data type the value will be (String, Real, Integer, Bool, etc.)
## Ports (Interfaces)
Ports represent the interfaces of the component. These are typically going to be set by a standard and are usually going to be defined in their own library.

For our CPU example above, the only interface that we care about is the socket because that defines compatibility with the motherboard. There is some power interface to the motherboard, but that level of detail is not required to do our analysis and evaluation of CPUs within our system.

```
        abstract port def 'CPU Socket' {
            doc /* Physical interface on a motherboard that connects the CPU to the system */
            attribute 'Pin Count' : Integer;
        }
```
Here I also created an abstract port with the key attributes for the interface. I can then mature the port usage under the abstract CPU

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
        port Socket : 'CPU Sockets' :: 'CPU Socket';
    }
```

## Being Organized
Be consistent and organized in your code base. For part definitions, I like to always follow the same order so that every definition looks the same. For a part definition I use this ordering for my elements: 
1. Documentation
2. Attributes
3. Owned Parts
4. Owned Ports

## Maturing the Generic System
Now that we have the outline of generic components defined, let's mature our generic PC definition by typing the parts.
```
    abstract part def Computer {
        doc /* A machine that can be programmed to carry out sequences of artithmetic or logical operations */
        part cpu[1] :'Central Processing Unit';
        part cooler[1] :'CPU Cooler';
        part motherboard[1] : Motherboard;
        part ram[1..4] : Memory;
        part drive[1..*] : Storage;
        part gpu[1] : 'Video Card';
        part 'case'[1] : Case;
        part 'power'[1] : 'Power Supply';
    }
```
# Detailing Components
For this example, computer parts are widely available and the specifications are easily found on the internet. I don't need to model every part available on the market, but only the ones I was looking at. 

```
    part def 'Ryzen 7 9800 X3D' :>'Central Processing Unit' {
        attribute :>>'Performance Core Clock' = 4.7 [GHz];
        attribute :>>'Performance Core Boost Clock' = 5.2 [GHz];
        attribute :>>'Thermal Design Power' = 120 [W];
        attribute :>>'Core Count' = 8;
        attribute :>>'Thread Count' = 16;
        attribute :>>'Maximum Supported Memory' = 192 [GB];
        port :>> Socket;
    }
```
This is a part definition again, because this is the specification of that part under consideration, not the exact unit installed.
## Subsetting
A subset is used when trying to inherit a generic set of properties to a part specification. This defines the part in a "is a" fashion. That Ryzen 7 is a CPU. In SysML v1, we would use a generalization to achieve this affect. 

## Attribute Redefinitions
Here we are redefining :>> the attributes and setting the default specified values by using the = sign. Notice before we set the type as "Real" or "Integer" so the numbers should match that data type. We now also set teh units by placing it in []. Most units are available in the built-in SI library, but some prefixes may need to be added.

## Port Redefinitions
The socket is also going to get redefined with the specific port, but first we need to define that interface.
```
    port def AM5 :> 'CPU Socket' {
        doc /* Specific microprocessor Socket */
        attribute :>> 'Pin Count' = 1718;
    }
```
## Maturing the component
Now that we have the specific interfaces defined we can mature our component definition as shown below.

```
    part def 'Ryzen 7 9800 X3D' :>'Central Processing Unit' {
        attribute :>>'Performance Core Clock' = 4.7 [GHz];
        attribute :>>'Performance Core Boost Clock' = 5.2 [GHz];
        attribute :>>'Thermal Design Power' = 120 [W];
        attribute :>>'Core Count' = 8;
        attribute :>>'Thread Count' = 16;
        attribute :>>'Maximum Supported Memory' = 192 [GB];
        port :>> Socket : AM5;
    }
```
# Final System Definition
Let's define a configuration of a computer using all that's been shown.

```
    part def 'Cory Computer 2026' :> 'Computer System'::Computer {
        doc /* My personal computer build design. */
        part :>>'case' : 'be quiet!'::'Dark Base Pro 901';
        part :>>power : Corsair::'RM1200x SHIFT';
        part :>>motherboard : ASUS:: 'ROG STRIX X870E-E';
        part :>>ram : 'G.Skill'::'Trident Z5 RGB - 16';
        part :>>drive : 'Samsung'::'990 EVO Plus 2 TB M.2-2280 PCIe 5.0 X2 NVME Solid State Drive';
        part :>>cooler : MSI::'MAG Coreliquid A13';
        part :>>cpu : AMD::'Ryzen 7 9800 X3D';
        part :>>gpu : 'GPU Catalog'::ASUS::'ASUS Prime OC RTX 5080';
    }
```