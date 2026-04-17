package 'Storage Catalog'{
    private import Storage::*;
    private import 'Unit Library'::'Digital Storage'::*;

    package Samsung{
        part def '990 EVO Plus 2 TB M.2-2280 PCIe 5.0 X2 NVME Solid State Drive' :> SSD{
            attribute :>> Capacity = 2 [TB];
        }
        part def '970 EVO' :> SSD{
            attribute :>> Capacity = 500 [MB];
        }
    }
}