package 'Unit Library'{
    private import SI::*;
    package 'Data Transfer'{
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
        attribute <'Gbit/s'> 'gigabit per second' :> 'bit/s'{
            :>> unitConversion:MeasurementReferences::ConversionByPrefix{
                :>>prefix = giga;
                :>>referenceUnit = 'bit/s';
            }
        }
    }
    package 'Digital Storage'{
        attribute <kB> kilobyte :> byte{
            :>>unitConversion:MeasurementReferences::ConversionByPrefix{
                :>>prefix = kilo;
                :>>referenceUnit = byte;
            }
        }
        attribute <MB> megabyte :> byte{
            :>>unitConversion:MeasurementReferences::ConversionByPrefix{
                :>>prefix = mega;
                :>>referenceUnit = byte;
            }
        }
        attribute <GB> gigabyte :> byte{
            :>>unitConversion:MeasurementReferences::ConversionByPrefix{
                :>>prefix = giga;
                :>>referenceUnit = byte;
            }
        }
        attribute <TB> terabyte :> byte{
            :>>unitConversion:MeasurementReferences::ConversionByPrefix{
                :>>prefix = tera;
                :>>referenceUnit = byte;
            }
        }
    }
    package 'Frequency'{
        attribute <MHz> megahertz :> hertz{
            :>>unitConversion:MeasurementReferences::ConversionByPrefix{
                :>>prefix = mega;
                :>>referenceUnit = hertz;
            }
        }
        attribute <GHz> gigahertz :> hertz{
            :>>unitConversion:MeasurementReferences::ConversionByPrefix{
                :>>prefix = giga;
                :>>referenceUnit = hertz;
            }
        }
    }
}