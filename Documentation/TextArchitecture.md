# Is SysML v2 Code?
The answer is well, sort-of. The textual notation looks a lot like a coding language, but is also just "a view" and is equivalent to a set of diagrams which generates that content in a database in the background. It really comes down to what the software vendor treats as the authoritative source of truth for SysML v2. 
# Code Architecture
While SysML v2 may or not be code depending on who you ask, we can manage the textual notation very similar to how we'd manage a code base. One of the major challenges is then how do we architect that textual notation. 
## Namespaces
Namespaces as unique elements are going to be separated out as individual .sysml files and packages can be created within them to help further organize the data.
### How I Approach
I approach the architecture to my code base so that every Namespace is single topic and as narrowly scoped as possible and are organized into their own folders in my git repository. Every file is meant to be contained so there is clear scope, understandability, ease of use, re-use, and maintainability.

Catalogs of components or standard interfaces will be very large files and that makes a lot of sense as it will contain all definitions for that kind of part. Generic definitions, processes, will each get their own file as well. 