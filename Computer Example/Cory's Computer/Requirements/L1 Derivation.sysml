package 'L1 Derivation' {
    private import 'Customer Needs'::*;
    private import 'Requirements Profile'::Stereotypes::*;
    private import 'Requirements Profile'::Enumerations::*;
    private import RequirementDerivation::*;

    doc /* This package deals with the analyses for taking the customer level needs/requirements/documents
    * and derives the next set of requirements. */

    case def 'Vendor Limitations' {
        doc /* This case takes the stakeholder needs about preferred vendors and turns them into requirements.*/

        /* Step 1 : Group Requirements. This is done by creating a dependency from the case to the scoping requirements */
        dependency from 'Vendor Limitations' to 'Part Vendors'::'SSD Vendor';
        dependency from 'Vendor Limitations' to 'Part Vendors'::'RAM Vendor';

        /* Step 2 : Analyze Requirements. For direct flow-downs, there isn't much to discuss here as it's about taking
        * source requirements and tailoring or getting more specific needs at a lower level. */

        /* Step 3 : Author Requirements */
        requirement def <'ASys 1.0'>'Solid-State Drive' {
            @'Base Requirement' {
                'Object Type' : 'enum_Requirement Category' = 'enum_Requirement Category'::Heading;
            }
                requirement def <'ASys 1.1'> 'Solid-State Drive Manufacturer' {
                   doc /* The manufacturer of any solid-state drive shall be Samsung. */
                    @'Base Requirement' {
                        'Object Type' : 'enum_Requirement Category' = 'enum_Requirement Category'::Threshold;
                        'Requirement Type' : 'enum_Requirement Type' = 'enum_Requirement Type'::Constraint;
                        'Requirement Rationale' = "The customer has made it clear that they will only accept Samsung Solid State drives.";
                }
            }
        }

        /* Step 4: Establish Traceability. This is done by creating a connection between parent/child requirements. */
        #derivation connection 'Solid State Drive Derivation' {
            end #original r1 : 'Part Vendors'::'SSD Vendor';
            end #derive r1_1 : 'Solid-State Drive'::'Solid-State Drive Manufacturer';
        }

        /* Step 5. Allocate Requirements. This is done by creating a connection to the reference architecture. */
    }
}