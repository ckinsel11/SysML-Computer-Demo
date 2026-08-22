# 1. Packages
## Package Example
Packages can help organize your model within a particular namespace. Most .sysml files will have it's first line be the creation of a package.
```
package 'Computer System' {
}
```
## Documentation Example
Documentation can be put on virtually any element of the model by using the key word doc followed by block comment indicators that look like this:  /* INSERT TEXT HERE */. Because the documentation is owned by the element, good practice is to indent it on a new line.
```
abstract part def Computer {
    doc /* A machine that can be programmed to carry out sequences of arithmetic or logical operations */
}
```
## Comment Example
Comments in the context of SysML and commenting your code/text notation are completely different concepts. 

Comments from the SysML perspective are elements that are created as part of the model that can annotate some element or namespace. Where it can be confusing is that /*...*/ as a construct is broadly used for block commenting in some programming languages such as C,C++ and Java. It can be very tempting to follow this pattern as you can block comment in SysML v2 but note you are creating elements in your model as a result. That may not be ideal in the long run.

```
    /* Step 1: Identify requirements and assumptions */
    /* Step 2: Identify alternatives under consideration */
    /* Step 3: Identify evaluation criteria */
    /* Step 4: Weight selection criteria */
    /* Step 5: Define criteria scoring scale */
    /* Step 6: Conduct evaluation of alternatives */
    /* Step 7: Record results */
```
There are multiple syntactical ways to create a comment, name a comment, or specifically indicate what the comment is annotating. For me, I tend to not even use the key word comment. I'm a bit more shorthand about it and it's clear from my programming experience and background that it is in fact a comment and knowing SysML v2, there will be an element created as a comment.

### Commenting your "Code"
Let's say we have work that needs further development or issues, or we want to leave further breadcrumbs for future us and we want to "comment" our "code" like good developers. We can use // to leave what is referred to in SysML v2 as a note. You will see this same syntax as a single line comment in other programming languages such as C, C++ and Java. This does not create any element in the model but allows your text to be in place and either "comment out" errors or leave those breadcrumbs.

```
        //contains (CaseCnst.'Supported Motherboard Sizes', MBCnst.'Form Factor')
```
In this example, I'm trying to write a query to do something and it's just giving me headaches and errors so I have opted to leave it and comment it out so I can come back and revisit it later.
# 2. Part Definitions
## Part Definition Example
I like to use part definitions as the specification for an object. A definition represents the object as if were something you could order from a catalog. In this example, I have abstracted the part def as I'm going to create a catalog of computer configurations. A part definition combines a lot of different elements from V1 (Block, System, Subsystem, System Context).
```
    abstract part def 'Central Processing Unit' {
        doc /* Primary Processor of a Computer */
        attribute 'Performance Core Clock' : Real;
        attribute 'Performance Core Boost Clock' : Real;
        port Socket : 'CPU Sockets' :: 'CPU Socket';
    }
```
# 3. Generalization
Generalizations create a "is a" relationship. One element is going to inherit all properties of another. It can also be called a specialization. In context, it is one part definition specializing another part definition.
## Generalization Example
 There are multiple syntactical ways to create a generalization. I prefer the symbolic method using :>.
```
    part def 'Core i7-14700K' :> 'Central Processing Unit' {
        doc /* Specific Model of CPU */
    }
```
In this example, I am establishing Core i7-14700K is a CPU and thus gets all of the properties of a CPU.
# 4. Subsetting
Subsetting creates another form of "is a" relationship, however it is slightly different from a generalization. It is a part usage inheriting another usage.
## Subsetting Example
The interesting thing is that subsetting uses the exact same symbolic syntax as a generalization (:>). However, if you choose to write out the keywords, subsetting has a different keyword than a generalization.
```
TODO: Have a clear subsetting example here
```
# 5. Redefinition
Redefinition is typically used to change/update property values or types from an inherited property. 
## Redefinition Example
There are multiple syntactical ways to create a generalization. I prefer the symbolic method using :>>. 
```
    part def 'Core i7-14700K' :> 'Central Processing Unit' {
        doc /* Specific Model of CPU */
        attribute :>>'Performance Core Clock' = 3.4 [GHz];
        attribute :>>'Performance Core Boost Clock' = 5.6 [GHz];
        port :>> Socket : LGA1700;
    }
```
## Redefinition Problems
This is a common error in the software code and development space but can also occur in SysML v2. Let's look at a definition of what a redefinition error is: "A redefinition error happens when your code defines the same variable, function, class, or struct more than once in the same scope." 

This type of error can occur when you have redefined the same property using the same names across an inheritance chain. 
# 6. Enumeration Definitions
An enumeration is just an ordered listing of items. We will typically use this concept to define a known limited set of values for a property.
## Enumeration Definitions 1
In SysML v1, we may create a library for all of our enumerations. In v2, following a more practical "coding standard" approach, I want to define my enumerations as locally to the source as possible. In this example, I define the enumeration locally to the generic storage definition file. 
``` 
    enum def 'enum_HDD Form Factor' {
        enum '2.5 inch';
        enum '3.5 inch';
    }
```
## Enumeration Definitions 2
Enumerations can also include attributes as part of the enumeration. 
```
TODO: Have an example where this is shown or explain why this isn't typically used
```
# 7. Parts
Parts are usages of another part or part definition.
## Parts Example 1
```
    abstract part def Computer {
        doc /* A machine that can be programmed to carry out sequences of arithmetic or logical operations */
        part cpu[1] :'Central Processing Unit';
        part cooler[1] :'CPU Cooler';
        part motherboard[1] : Motherboard;
        part ram[1..4] : Memory;
        part drive[1..*] : Storage;
        part gpu[1] : 'Video Card';
        part 'case'[1] : Case;
        part 'power'[1] : 'Power Supply'
    }
```
## Parts Example 2
A part can be added to another part, not just a part definition. This is useful when you are quickly concepting to get something captured without extracting the definition.
```
TODO: Have an example where this is shown or explain why this isn't typically used
```
# 8. Items
For my use, I use items heavily when developing a data model, and more rarely within the context of a system architecture.
## Items Example
```
TODO: Have an example where this is shown or explain why this isn't typically used within a system architecture
```
# 9. Connections
Connections are typically going to be made between ports and tie two points of data together. It can be used to connect parts as shown in the official github training repository, but I don't find myself using that at all while modeling.
## Connections Example
These connections are not going to establish any form of directionality of the connection, just that the elements are connected.
```
    port def 'USB 3.2 A Standard Interface' :> 'USB A Standard Interface' {
        doc /* The typical commercial USB Type A interface with USB 3.2 support */
        port connector :>> connector : 'USB'::'Standard-A SuperSpeed Connector';
        port signal :>> signal : 'Peripheral Interfaces'::'USB 3.2';

        ref connection connect connector.'CA-SuperSpeed'.'5' to signal.'SSRX-';
        ref connection connect connector.'CA-SuperSpeed'.'6' to signal.'SSRX+';
        ref connection connect connector.'CA-SuperSpeed'.'7' to signal.'GND';
        ref connection connect connector.'CA-SuperSpeed'.'8' to signal.'SSTX-';
        ref connection connect connector.'CA-SuperSpeed'.'9' to signal.'SSTX+';
    }
```
# 10. Ports
Ports are your interface points for a system. They can be used to represent everything from physical connections, to electronic signal connections to fluid and power going in and out.
## Port Example
I use ports for a bit of everything with interfaces. The first example will be for electronic signals.
```
    abstract port def 'USB' {
        doc /* Generic Standard USB Communication Interface */
        attribute 'Signaling Rate' : Real;
        port VBus {
            doc /* +5 V */
        }
        port 'D+' {
            doc /* Data+ */
        }
        port 'D-' {
            doc /* Data- */
        }
        port GND {
            doc /* Ground */
        }
    }
```
Here's an example where I look at the USB-A plug as a physical connector
```
    port def 'USB Type A' {
        port '1';
        port '2';
        port '3';
        port '4';
    }
```
## Port Conjugation Example
A conjugated port allows for a common use of an port definition but flip the flow properties (in/out). There are use cases for this especially when an interface is completely undefined, but I find that as the interfaces matures especially in the electronics realms this gets used slightly less as there is more to change in the opposing interface (e.g. pins and sockets).
```
TODO: Have an example where this is shown or explain why this isn't typically used
```
# 11. Interfaces
To be honest, I haven't found a good use case for this construct especially as a definition as it puts the connection between two boxes on the line connecting the boxes. Interface (not sysml) definitions should be done on the box in a single-sided fashion.

Interfaces are meant to show items flowing on the line, not that a connection exists. Examples include fluids and electrical power. I
## Interface Example
## Interface Decomposition Example
# 12. Binding Connectors
## Binding Connectors Example 1
## Binding Connectors Example 2
# 13. Flows
## Flow Definition Example 
## Flow Usage Example
## Flow Interface Example
# 14. Action Definitions
Actions represent the activity or process based behaviors. Action definitions set the expected process flow.
## Action Definition Example
## Action Shorthand Example
## Action Succession Example 1
## Action Succession Example 1
# 15. Actions
Action usages are taking action definitions of a process and including them into a larger process. 
## Action Decomposition
# 16. Conditional Succession
## Conditional Succession Example 1
## Conditional Succession Example 2
# 17. Control
## Control Structures Example
## Decision Example
## Fork Join Example
## Merge Example
# 18. Action Performance
## Action Performance Example
# 19. Terminate Actions
## Conditional Succession Example 1
## Conditional Succession Example 2
# 20. Assignment Actions
## Assignment Example
# 21. Asynchronous Messaging
## Messaging Example
## Messaging with Ports
# 22. Opaque Actions
## Opaque Action Example
# 23. State Definitions
## State Definition Example 1
## State Definition Example 2
# 24. States
## State Actions
## State Decomposition 1
## State Decomposition 2
# 25. Transitions
## Change and Time Triggers
## Transition Actions
# 26. State Exhibition
## State Exhibition Example
# 27. Occurrences
## Event Occurrence Example
## Interaction Example 1
## Interaction Example 2
## Interaction Realization 1
## Interaction Realization 2
## Time Slice and Snapshot Example
# 28. Individuals
## Individuals and Roles
## Individuals and Snapshots
## Individuals and Time Slices
# 29. Expressions
## MassRollup 1
## MassRollup 2
# 30. Calculations
## Calculation Definition
## Calculation Usage 1
## Calculation Usage 2
# 31. Constraints
## Analytical Constraints
## Constraint Assertions 1
## Constraint Assertions 2
## Constraints Example 1
## Constraints Example 2
## Derivation Constraints
## Time Constraints
# 32. Requirements
## Requirement Definitions
## Requirement Groups
## Requirement Satisfaction
## Requirement Usages
# 33. Analysis
## Analysis Case Definition Example
## Analysis Case Usage Example
## Trade Study Analysis Case Example
# 34. Verification
## Verification Case Definition Example
## Verification Case Usage Example
# 35. Use Cases
## Use Case Definition Example
## Use Case Usage Example
# 36. Variability
## Variation Configuration
## Variation Definitions
## Variation Usages
# 37. Dependencies
## Dependency Example
# 38. Allocation
## Allocation Definition Example
## Allocation Usage Example
# 39. Metadata
## Metadata Example 1
## Metadata Example 2
# 40. Filtering
## Filtering Example 1
## Filtering Example 2
# 41. Language Extension
## Model Library Example
## Semantic Metadata Example
## User Keyword Example
# 42. Views
## Viewpoint Example
## Views Example