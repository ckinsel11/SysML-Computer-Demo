package 'Assembly Process' {
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
        action 'Install Other Drives' {
            doc /* Install any 3.5 inch optical, 2.5 inch solid state, or disc drives */
        }
        action 'Wire Computer' {
            doc /* Connect all necessary power and data cables to ensure the computer functions correctly. */
        } 
        first start then 'Install CPU';
        first 'Install CPU' then 'Install RAM';
        first 'Install RAM' then 'Any M.2 Drives?';

        succession '[YES]' first 'Any M.2 Drives?' then 'Install M.2 Drives';
        first 'Install M.2 Drives'  then merge1;

        succession '[NO]' first 'Any M.2 Drives?' then merge1; //TODO: Visualizer has this going to any merge drives.
//TODO: I can simplify these to remove first and just use then X. BUT, on the decision node, i need something to render out as a BOOL, which would then require the PC as an input and then navigate down through drive to see if any drive has an m2 form factor.
        first merge1 then 'Install Motherboard';
        first 'Install Motherboard' then 'Install CPU Cooler';
        first 'Install CPU Cooler' then 'Install GPU';
        first 'Install GPU' then 'Install Other Drives';
        first 'Install Other Drives' then 'Install Power Supply';
        first 'Install Power Supply' then 'Wire Computer';
        first 'Wire Computer' then done;
    }
}