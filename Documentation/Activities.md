# Text-Based Activities
Activities (Activity Diagrams) can be much easier to do in a graphical format than strictly text. It helps to see the lines drawn and understand the sequencing of actions. This walkthrough is going to discuss working pretty exclusively through text.

Activities can be very hierarchical. A process is made up of steps, and each of those steps can kick off another process.

# Activity Definition (action def key words)
Activies in SysML v2 are created using the keyword action. Following a definition/usage pattern, we are going to define a process thus prompting the def key word. The action key word will create the particular step of a process within the activity itself.

I'm going some of the activity constructs and try to touch on when to use others that may not be in the current example. We're going to start by making the process definition and giving a clear definition and scope in the documentation.
```
    action def 'Assemble Computer' {
        doc /* This process assembles a computer system from its constituent parts. */
    }
```

Now we can add in the individual steps of the process. These will not be using the key word def as they would be usages of another process if one existed. This may also include decision points, forks and pre-defining merge points. In text, decisions and merges need to be pre-defined before being connected. 

```
    action def 'Assemble Computer' {
        doc /* This process assembles a computer system from its constituent parts. */
        action 'Install CPU' {
            doc /* Install the central processing unit (CPU) onto the motherboard. */
        }
        action 'Install RAM' {
            doc /* Install the random access memory (RAM) modules into the motherboard. */
        }
        action 'Install M.2 Drives' {
            doc /* Install any M.2 storage devices onto the motherboard. */
        }
        decide 'Any M.2 Drives?' {
            doc /* Determine if there are any M.2 drives to install. */
        }
        action 'Install Motherboard' {
            doc /* Install the motherboard into the computer case. */
        }
        merge merge1;
        action 'Install CPU Cooler' {
            doc /* Install the CPU cooler onto the CPU to ensure proper cooling. */
        }
        action 'Install GPU' {
            doc /* Install the graphics processing unit (GPU) into the appropriate slot on the motherboard. */
        }
        action 'Install Power Supply' {
            doc /* Install the power supply unit (PSU) into the computer case. */
        }
        action 'Wire Computer' {
            doc /* Connect all necessary power and data cables to ensure the computer functions correctly. */
        }
    }
```
Each action can have it's own documentation as well. This is typical when we're going to leave the actions as untyped by another activity or interaction.

## Splitting Paths
There are two ways of creating multiple paths through an activity: decisions and forks.

### Decision Nodes
Decision nodes ask a question and select a singular path to follow. 
### Forks
A fork simply takes a single path and turns it into multiple parallel paths that operate simultaneously.
## Combining Paths
After splitting paths, there are two ways of combining paths back: merges and joins
### Merge Nodes
A merge acts like an "OR" gate. Our process will continue when a singular path reaches the merge. There is no waiting for any other previous action to conclude prior to proceeding.
### Joins
A join acts like an "AND" gate. Our process will stop at the join until all paths have reached that point. Every preceding action must conclude prior to the join in order to continue the process.

## Connecting the actions and creating the flows
Most of the first block is the same, and the connections are made below in a separate block. I'll explain more in "Organizing the Text"

```
    action def 'Assemble Computer' {
        doc /* This process assembles a computer system from its constituent parts. */
        action 'Install CPU' {
            doc /* Install the central processing unit (CPU) onto the motherboard. */
        }
        action 'Install RAM' {
            doc /* Install the random access memory (RAM) modules into the motherboard. */
        }
        action 'Install M.2 Drives' {
            doc /* Install any M.2 storage devices onto the motherboard. */
        }
        decide 'Any M.2 Drives?' {
            doc /* Determine if there are any M.2 drives to install. */
        }
        action 'Install Motherboard' {
            doc /* Install the motherboard into the computer case. */
        }
        merge merge1;
        action 'Install CPU Cooler' {
            doc /* Install the CPU cooler onto the CPU to ensure proper cooling. */
        }
        action 'Install GPU' {
            doc /* Install the graphics processing unit (GPU) into the appropriate slot on the motherboard. */
        }
        action 'Install Power Supply' {
            doc /* Install the power supply unit (PSU) into the computer case. */
        }
        action 'Wire Computer' {
            doc /* Connect all necessary power and data cables to ensure the computer functions correctly. */
        }

        first start then 'Install CPU';
        first 'Install CPU' then 'Install RAM';
        first 'Install RAM' then 'Any M.2 Drives?';

        succession '[YES]' first 'Any M.2 Drives?' then 'Install M.2 Drives';
        first 'Install M.2 Drives'  then merge1;

        succession '[NO]' first 'Any M.2 Drives?' then merge1;

        first merge1 then 'Install CPU Cooler';
        first 'Install CPU Cooler' then 'Install GPU';
        first 'Install GPU' then 'Install Power Supply';
        first 'Install Power Supply' then 'Wire Computer';
        first 'Wire Computer' then done;
    }
```
### Creating Paths
To create a flow we can use first then. We can state the first object, then the immediately following object. These objects can be actions or nodes. 

Each action is controlled by the flows going into it. In general, when there are no defined input parameters, we should only have one flow going into an action. When there are input parameters, we can just use the parameters coming in to trigger the action, unless we are sequencing the action, then we will have another controlling flow. NOTE: This rule is not shown in this example. 

### Starting and Ending the Activity
Ironically, unlike decisions, merges, forks and joins, the start and end of an activity doesn't need to be pre-defined in order to be used. The start of an activity is indicated by the key word start. The end of the activity is indicated by the key word done. There should only be one start and one done per activity.
### Ending Paths
In some cases where we have diverging paths, we may want to terminate the line without rejoining it to the rest of the activity. We can terminate that path by using a terminate node by using the key word terminate.
### Decision paths
Coming out of a decision node there will be multiple paths. Each path should have a condition indicated to understand when to take each path. These conditions can be shown with a succession with the guard condition (answer to the question asked by the decision node) in [].

## Organizing the Text
If you read the SysML v2 specification or use another architecture tool, you will find that activity flows are intermingled around the action usages. What I have seen, is that each line of text is added as elements are added to a diagram, thus making the text a bit chaotic to read. 

I have found that it is easier for me to consume and understand the activity when I create all the elements for the activity first. This is like dragging all the boxes onto the diagram. Then I create all of the lines connecting those elements, which is akin to connecting all of the boxes. I find this method helps me stay organized and clear about the process because the connections are together and in order of the process.

When there is multiple paths, I like to create space in the textual notation between each path. This helps me somewhat clarify where things diverge and come back together more easily. 

## Swimlanes
For this example, I've chosen not to use swimlanes. This is partially due to that there is only one person doing the activity of assembling the computer. When I do choose to use swimlanes, I like to focus not on what system is being used, but who is responsible for performing the action. 