# What is a Cable Connector?
A cable connector is an interface that is at the end of a wire. House hold examples include USB or VGA. For commercial purposes, the connector and signal pinouts standardized, where as in military and aerospace, the pinouts are custom set during the design phase.
# Components of a Cable Connector
For a cable connector interface, there are two major components:
1. The Physical Connector, including a Contact Arrangement
2. The signals that pass through the connector

The physical connector in almost all circumstances are defined by some standard. This could be a military standard (e.g. MIL-STD-38999) or a standard from another body (e.g. USB)

I'm going to start from the foundational pieces and build up. Each signal interface and each connector are going to be maintained in their own libraries and then connected. This allows for a clean object oriented approach where we will define each object 1 time and then use those definitions as part of a larger definition.

First, Let's look at the  generic cable connector definition
 ```
    abstract port def 'Cable Connector'{
        doc /* Generic cable connector definition to establish property spaces */
        port 'CA';
    }
```
## Signal Interfaces
I like to refer to these as communication interfaces. They are also going to be standardized from some governing body. Examples include HDMI, USB, Ethernet, Serial etc. Let's take a look at the generic definition of USB. 

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
This is an abstract definition because this is the foundation for each version of the USB standard as later versions will change the signaling rate, and actually add some more signals to the definition. Getting more specific, let's look at USB 2.0
```
    port def 'USB 2.0' :> USB {
        doc /* USB 2.0 Standard Communication Interface */
        attribute :>> 'Signaling Rate' = 480 ['Mbit/s'];
    }
```
Notice that the signals have not changed but we have refined the definition of the interface by establishing the signaling rate and thus removing the abstract key word.

## The Physical Connector
The physical connector can be broken down into a couple of key parts. There is the physical shell/frame, and then the contact arrangement of the pins. Contact arrangements are going to be defined separately in their own library because in MIL-STD-38999 connectors, the same contact arrangement can be used in multiple shell shapes and sizes.

### Contact Arrangements
For a USB type A connector, there's actually only 4 pins. A link can be established to a known image of the contact arrangement, but hasn't been done in this example. We can define that contact arrangement as shown below:
```
    port def 'USB Type A' {
        port '1';
        port '2';
        port '3';
        port '4';
    }
```
### Specific Physical Connector Example
Now that the contact arrangement is defined, we can build the physical connector. Note that for this example, I'm not defining the color the plastic insert of the connector although it is in the specification. Other types of connectors will have defined attributes such as finish, connector type, keying, etc. 

```
    port def 'Standard-A Connector' :> 'Cable Connector' {
        doc /*  USB A Standard physical connector not tied to the communication interface */
        port CA :>> CA : 'USB Contact Arrangements'::'USB Type A';
    }
```
In this example we are redefining the CA from the Cable Connector abstract port in order to set the type for the USB Type-A connector.

## Tying the communication interface to the physical interface
In this example, I'm going to use a generic Type-A definition not tied to a standard. We can then specify the standard when we go to use this interface.

```
    port def 'USB A Standard Interface'{
        doc /* The typical commercial USB Type A interface */
        port connector : 'USB'::'Standard-A Connector';
        port signal : 'Peripheral Interfaces'::USB;

        ref connection connect connector.CA.'1' to signal.'VBus';
        ref connection connect connector.CA.'2' to signal.'D-';
        ref connection connect connector.CA.'3' to signal.'D+';
        ref connection connect connector.CA.'4' to signal.'GND';
    }
```
### Reference (ref Key Word)
Something interesting about ports, is that according to the specification ports can only own other ports except by reference. Reference just means that we want to use associate another element in the current scope.
### Connections 
The keyword connection creates the usage of a link between two elements, which is typically going to be a port. The keyword connect established the link with the first element to the second element. Note this is only directional when the connection definition (not used here) establishes a target and source end. 

To get to the pins and signals you need to navigate the chain to those specific elements. For the pins, we go through the physical connector, which as the CA as an element, and then the CA defines the pins. The signal goes straight to the individual signals of the communication interface.

For creating these connections, I go in pinout order, so that it can be easily rendered as a pin-out table.