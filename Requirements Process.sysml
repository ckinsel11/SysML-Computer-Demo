package 'Process Definition' {
    package Processes {
        action def 'Requirement Derivation' {
            in 'Baselined Set of Requirements';
            doc /* Starting with a baselined set of requirements sychronized from a requirements management tool, we will derive a lower level set of requirements*/
            action 'Group Requirements' {
                doc /* Organize requirements by topics to help organize your thoughts and have focused efforts as not all baselined requirements are organized in that fashion.*/
                in 'Baselined Set of Requirements';
                out 'Requirement Grouping';
            }
            first start then 'Group Requirements';
            action 'Analyze Requirements' {
                doc /* Using our grouping, we will evaluate the requirements. This could included developing use cases, behaviors, numerical computations, or breaking down a standard document so only the relevant parts are included. */
                in 'Requirement Grouping';
                out 'List of Work Efforts';
            }
            first 'Group Requirements' then 'Analyze Requirements';
            action 'Author Requirements' {
                in 'List of Work Efforts';
                doc /* As a result of our analysis and work efforts, we will write our lower-level resulting requirements. */
                out 'Authored Requirements';
            }
            binding bind 'Baselined Set of Requirements' = 'Group Requirements'.'Baselined Set of Requirements';
            flow from 'Group Requirements'.'Requirement Grouping' to 'Analyze Requirements'.'Requirement Grouping';
            flow from 'Analyze Requirements'.'List of Work Efforts' to 'Author Requirements'.'List of Work Efforts';
            action 'Allocate Requirements' {
                doc /* We can create a relationship to the elements of the architecture that will be responsible for implementing those requirements. Note: Requirements can be tied to multiple elements. Examples include: standards, basic functionality, power etc. */
                in Requirements;
                out 'Authored Requirements';
            }
            first 'Allocate Requirements' then done;
            action 'Establish Traceability' {
                doc /* We will take our authored requirements (children) and create a link to the parent requirements. */
                in 'Authored Requirements';
                out Requirements;
            }
            flow from 'Author Requirements'.'Authored Requirements' to 'Establish Traceability'.'Authored Requirements';
            flow from 'Establish Traceability'.Requirements to 'Allocate Requirements'.Requirements;
            out 'Authored Requirements';
            binding bind 'Allocate Requirements'.'Authored Requirements' = 'Authored Requirements';
        }
        action def 'Baseline Requirements' {
            action 'Identify Set of Requirements to be baselined' {
                doc /* It is important to be clear what is going to be baselined. These could be new updates from customer documents, maturing requirements you have authored, or establishing a new set of requirements you have authored for a new specification. Either way clearly define what is going to be baselined, and what the changes are from the previous baseline (if there is one).*/
                in Requirements;
                out 'Set of Requirements';
            }
            action 'Peer Review Requirements' {
                doc /* After identifying what the changes are, these are sent out to review. Each organization may have their own process for this and can have differing levels of formality.*/
                in 'Set of Requirements';
                out 'Set of Requirements to be Approved';
            }
            action 'Approve Baseline' {
                doc /* After the requirements have been reviewed, they need to be approved as the newest set of requirements to be worked to.*/
                in 'Set of Requirements to be Approved';
                out 'Approved Requirements';
            }
            action 'Establish Baseline in Requirements Management Tool' {
                doc /* After the approval, we need to identify and mark this baseline to create that "snapshot in time" as requirements may still be matured and redlined.*/
                in 'Approved Requirements';
                out Baseline;
            }
            action 'Publish Baseline' {
                doc /* When a new baseline is established, we need to make it available for others to use. This could be through the creation of a document, or sending notifications that there is something new.*/
                in Baseline;
                out 'Baselined Set of Requirements';
            }
            out 'Baselined Set of Requirements';
            in Requirements;
            binding bind Requirements = 'Identify Set of Requirements to be baselined'.Requirements;
            flow from 'Identify Set of Requirements to be baselined'.'Set of Requirements' to 'Peer Review Requirements'.'Set of Requirements';
            flow from 'Peer Review Requirements'.'Set of Requirements to be Approved' to 'Approve Baseline'.'Set of Requirements to be Approved';
            flow from 'Approve Baseline'.'Approved Requirements' to 'Establish Baseline in Requirements Management Tool'.'Approved Requirements';
            flow from 'Establish Baseline in Requirements Management Tool'.Baseline to 'Publish Baseline'.Baseline;
            first start then 'Identify Set of Requirements to be baselined';
            first 'Publish Baseline' then done;
            binding bind 'Publish Baseline'.'Baselined Set of Requirements' = 'Baselined Set of Requirements';
        }
        action def 'Synchronize Baselined Requirements' {
            action 'Identify Requirements to be Synchronized' {
                doc /* Identify the set of requirements and baseline from which to synchronize. */
            }
            action 'Synchronize from Requirements Management Tool to System Architecture Tool' {
                doc /* It is important to establish the authoritative source of truth (ASoT) for your data. Each type of data can have its ASoT be a different database. We also need to ensure that you can only modify a baseline in that data's ASoT. To help mitigate risks of overwriting our requirements as we perform our derivation analyses, all of these synchronizations will be in a singular direction.*/
            }
            action 'Verify Synchronization' {
                doc /* We always want to verify our work. For requirement synchronization, we are looking for 1) the full set of requirements was synchronized, 2) that the necessary attributes are successfully transferred and 3) that we also have the unique identifiers from our requirements managment tool. This will enable our traceability from our authored requirements can be established to the appropriate source.*/
            }
        }
        action def 'Synchronize Authored Requirements';
    }
}
