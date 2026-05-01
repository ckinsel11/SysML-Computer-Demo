package 'Combined Interfaces Library' {
    private import 'Communication Interface Library'::*;
    private import 'Cable Connector Library'::*;

    port def 'HDMI Standard A Interface' {
        doc /* The typical commercial HDMI Type A interface */
        port 'connector' : 'HDMI Connectors'::'Type A';
        port 'signal' : 'Video Interfaces'::HDMI;
        
    }
}