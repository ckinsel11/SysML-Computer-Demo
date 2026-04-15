package 'Unit Library'{
    private import SI::*;
    package 'Data Transfer' {
        attribute <'kbit/s'> 'kilobit per second' :> 'bit/s'{
            :>>unitConversion:MeasurementReferences::ConversionByPrefix{
                :>>prefix = kilo;
                :>>referenceUnit = 'bit/s';
            }
        }
        attribute <'Mbit/s'> 'megabit per second' :> 'bit/s'{
            :>>unitConversion:MeasurementReferences::ConversionByPrefix{
                :>>prefix = mega;
                :>>referenceUnit = 'bit/s';
            }
        }
        attribute <'Gbit/s'> 'gigabit per second' :> 'bit/s' {
            :>> unitConversion:MeasurementReferences::ConversionByPrefix{
                :>>prefix = giga;
                :>>referenceUnit = 'bit/s';
            }
        }
    }
}