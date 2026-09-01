package 'Three-Level Architecture Example' {
    action def 'Three Level Architecture Requirements' {
        action 'Synchronize Baselined Customer Requirements' : 'Process Definition'::Processes::'Synchronize Baselined Requirements';
        action 'Derive System Requirements' : 'Process Definition'::Processes::'Requirement Derivation';
        action 'Synchronize Authored System Requirements' : 'Process Definition'::Processes::'Synchronize Authored Requirements';
        action 'Baseline System Requirements' : 'Process Definition'::Processes::'Baseline Requirements';
        action 'Synchronize System Requirement Baseline' : 'Process Definition'::Processes::'Synchronize Baselined Requirements';
        action 'Derive Subsystem Requirements' : 'Process Definition'::Processes::'Requirement Derivation';
        action 'Synchronize Authored Subsystem Requirements' : 'Process Definition'::Processes::'Synchronize Authored Requirements';
        action 'Baseline Subsystem Requirements' : 'Process Definition'::Processes::'Baseline Requirements';
        action 'Synchronize Subsystem Requirement Baseline' : 'Process Definition'::Processes::'Synchronize Baselined Requirements';
        action 'Derive Component Requirements' : 'Process Definition'::Processes::'Requirement Derivation';
        action 'Synchronize Authored Component Requirements' : 'Process Definition'::Processes::'Synchronize Authored Requirements';
        action 'Baseline Component Requirements' : 'Process Definition'::Processes::'Baseline Requirements';

        first start then 'Synchronize Baselined Customer Requirements';
        first 'Synchronize Baselined Customer Requirements' then 'Derive System Requirements';
        first 'Derive System Requirements' then 'Synchronize Authored System Requirements';
        first 'Synchronize Authored System Requirements' then 'Baseline System Requirements';
        first 'Baseline System Requirements' then 'Synchronize System Requirement Baseline';
        first 'Synchronize System Requirement Baseline' then 'Derive Subsystem Requirements';
        first 'Derive Subsystem Requirements' then 'Synchronize Authored Subsystem Requirements';
        first 'Synchronize Authored Subsystem Requirements' then 'Baseline Subsystem Requirements';
        first 'Baseline Subsystem Requirements' then 'Synchronize Subsystem Requirement Baseline';
        first 'Synchronize Subsystem Requirement Baseline' then 'Derive Component Requirements';
        first 'Derive Component Requirements' then 'Synchronize Authored Component Requirements';
        first 'Synchronize Authored Component Requirements' then 'Baseline Component Requirements';
        first 'Baseline Component Requirements' then done;
    }
}