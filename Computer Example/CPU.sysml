package CPU {
    part def 'Central Processing Unit' {
        doc /* Primary Processor of a Computer */
        port Socket;
        attribute 'Performance Core Clock' : Real;
        attribute 'Performance Core Boost Clock' : Real;
        attribute 'Thermal Design Power' : Real;
        attribute Microarchitecture;
        attribute 'Core Count' : Integer;
        attribute 'Thread Count' : Integer;
        attribute 'Maximum Supported Memory' : Real;
    }
}