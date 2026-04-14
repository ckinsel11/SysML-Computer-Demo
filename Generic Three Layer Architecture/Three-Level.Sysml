package 'Three-Level Architecture Example' {
    action def 'Three Level Architecture Requirements' {
        action 'Synchronize Baselined Customer Requirements' : 'Process Definition'::Processes::'Synchronize Baselined Requirements';
        first start then 'Synchronize Baselined Customer Requirements';
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
    }
}