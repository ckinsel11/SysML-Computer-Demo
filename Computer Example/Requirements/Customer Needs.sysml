package 'Customer Needs' {
    private import 'Requirements Profile'::Stereotypes::*;
    private import 'Requirements Profile'::Enumerations::*;

/* I really am not a fan using doc as the place for the shall statement. It works but feels 
* almost too generic when used as part of the definition. I'm thinking about making text part
* of the base requirement metadata.*/

/* NOTE: IDs (in <>), should come from requirements management tool as this level should be the baseline of 
* needs/requirements/documents coming from the customer/stakeholders. In a typical setting C1.0, would be
* under Section 3 Requirements and be a heading under there.*/
    concern def <'C1.0'> 'Part Vendors' {
        concern def <'C1.1'> 'SSD Vendor' {
             doc /* The SSD needs to be from Samsung as they are the best quality consumer grade drives. */
        }
        concern def <'C1.2'> 'RAM Vendor' {
            doc /* RAM is preferred to be from G.Skill as the stakeholder has never had any issues in the past. This is a bit flexible due to cost in the RAM market. */
        }
    }
    concern def <'C2.0'> 'Video Performance' {
        concern def <'C2.1'> 'FPS' {
            doc /* Games are desired to have an "optimal" playing experience which correlates to approximately 60 frames per second (fps) with the graphics settings on max to look how the developer intended. */
        }
    }
    concern def <'C3.0'> 'Drives' {
        concern def <'C3.1'> 'Boot Drive' {
            doc /* The stakeholder wants fast boot times. */
        }
        concern def <'C3.2'> 'Additional Drive(s)' {
            doc /* Storage is needed for a large quantity of video games. */
        }
    }
}