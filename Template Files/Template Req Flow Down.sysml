package ' Template Flow Down ' {
    /* INSERT IMPORT FOR SOURCE REQUIREMENTS HERE */
    private import 'Requirements Profile'::Stereotypes::*;
    private import 'Requirements Profile'::Enumerations::*;
    private import RequirementDerivation::*;

    case def 'Template Flow Down' {
         doc /* This case takes a subset of parent requirements and derives lower level children reqiurements. */
    
        comment /* Step 1 : Group Requirements. This is done by creating a dependency from the case to the scoping requirements */
    
        /*Uncomment the next line and replace XXX with the appropriate source requirement. Copy and repeat as necessary*/
        /* dependency from 'Template Flow Down' to XXX; */

        comment /* Step 2 : Analyze Requirements. For direct flow-downs, there isn't much to discuss here as it's about taking
        * source requirements and tailoring or getting more specific needs at a lower level. */

        comment /* Step 3 : Author Requirements */

        /* Put IDs in <''> for the authored requirements. .0 for the headers and .1 for anything underneath it. Note these IDs are only
        * used within the sysml context and your requirements management tool will provide more specific IDs which will be used in the
        * baseline. Requirements should be authored in a "The NOUN shall..." where the requirements management tool can roll out this 
        * singular requirement into N areas based on allocation. */
        
        requirement def <'Template 1.0'> 'Template Flow Down Heading' {
            @'Base Requirement' {
                'Object Type' : 'enum_Requirement Category' = 'enum_Requirement Category'::Heading;
            }
                requirement def <'Template 1.1'> 'Template Flow Down Requirement' {
                   doc /* The NOUN shall describe the requirement. */
                    @'Base Requirement' {
                        'Object Type' : 'enum_Requirement Category' = 'enum_Requirement Category'::Threshold;
                        'Requirement Type' : 'enum_Requirement Type' = 'enum_Requirement Type'::Constraint;
                        'Requirement Rationale' = "INSERT WHY THIS REQUIREMENT WAS WRITTEN HERE";
                }
            }
        }
        
        comment /* Step 4: Establish Traceability. This is done by creating a connection between parent/child requirements. */
        #derivation connection 'Template Derivation' {
            /* Use the format below to create a derivation relationship. The first line should be the parent requirement.
            * and uses #original with r1 just being the name of the end and typed by the parent requirement. Any line below 
            * will be child requirements named r1_X and typed by the child requirement definition. You can remove the ;
            * and uncomment the rest of the line and replace the text in caps with the appropriate requirement. */
            
            end #original r1; /* :>> PARENT REQUIREMENT; */
            end #derive r1_1; /* :>> CHILD REQUIREMENT; */
        }

        comment /* Step 5. Allocate Requirements. This is done by creating a connection to the reference architecture. */
    }
}