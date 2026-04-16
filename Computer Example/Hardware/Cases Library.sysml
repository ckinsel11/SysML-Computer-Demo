package 'Cases Library'{
    private import Case::Case;
    private import 'Cable Connector Library'::USB::*;
    
    package 'be quiet!'{
        part 'Dark Base Pro 901' : Case {
            port 'USB 3.2 Type A'[4] : 'Standard-A';
            port 'USB 3.2 Type C'[1] : 'Type-C';
            port 'Microphone';
            port 'Headphone';
        }
    }
    
}