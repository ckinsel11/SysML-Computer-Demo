package 'Customer Requirements'{
    private import Profile::Stereotypes::*;
    private import Profile::Enumerations::*;

/* I really am not a fan using doc as the place for the shall statement. It works but feels 
* almost too generic when used as part of the definition. I'm thinking about making text part
* of the base requirement metadata.*/

/* NOTE: IDs (in <>), should come from requirements management tool as this level should be the baseline of 
* needs/requirements/documents coming from the customer/stakeholders. In a typical setting C1.0, would be
* under Section 3 Requirements and be a heading under there.*/
    requirement def <'C1.0'> 'Part Vendors'{
        @'Base Requirement'{
            'Object Type' : 'enum_Requirement Category' = 'enum_Requirement Category'::Heading;
        }
        requirement <'C1.1'> 'SSD Vendor'{
             doc /* The SSD vendor shall be Samsung. */
            @'Base Requirement'{
                'Object Type' : 'enum_Requirement Category' = 'enum_Requirement Category'::Threshold;
                'Requirement Type' : 'enum_Requirement Type' = 'enum_Requirement Type'::Constraint;
            }
        }
        requirement <'C1.2'> 'RAM Vendor'{
            doc /* The RAM vendor should be G.Skill. */
            @'Base Requirement'{
                'Object Type' : 'enum_Requirement Category' = 'enum_Requirement Category'::Objective;
                'Requirement Type' : 'enum_Requirement Type' = 'enum_Requirement Type'::Constraint;
            }
        }
    }
    requirement def <'C2.0'> 'Video Performance'{
        @'Base Requirement'{
            'Object Type' : 'enum_Requirement Category' = 'enum_Requirement Category'::Heading;
        }
        requirement <'C2.1'> 'FPS'{
            doc /* The computer shall, while in operational condition, play most games at 60+ frames per second (fps). */
            @'Base Requirement'{
                'Object Type' : 'enum_Requirement Category' = 'enum_Requirement Category'::Threshold;
                'Requirement Type' : 'enum_Requirement Type' = 'enum_Requirement Type'::Constraint;
            }
        }
    }
    requirement def <'C3.0'> 'Drives' {
        @'Base Requirement'{
            'Object Type' : 'enum_Requirement Category' = 'enum_Requirement Category'::Heading;
        }
        requirement <'C3.1'> 'Boot Drive'{
            doc /* The boot drive shall be a SSD. */
            @'Base Requirement'{
                'Object Type' : 'enum_Requirement Category' = 'enum_Requirement Category'::Threshold;
                'Requirement Type' : 'enum_Requirement Type' = 'enum_Requirement Type'::Constraint;
            }
        }
        requirement <'C3.2'> 'Additional Drive(s)'{
            doc /* There shall be at a minimum one additional hard drive for storage. */
            @'Base Requirement'{
                'Object Type' : 'enum_Requirement Category' = 'enum_Requirement Category'::Threshold;
                'Requirement Type' : 'enum_Requirement Type' = 'enum_Requirement Type'::Constraint;
            }
        }
    }
}