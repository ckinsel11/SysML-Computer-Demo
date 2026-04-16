package 'Memory Catalog' {
    private import Memory::Memory;
    private import 'Unit Library'::'Digital Storage'::*;
    
    package 'G.Skill'{
        part def 'Trident Z5 RGB - 16' :> Memory{
            attribute :>>'Module Size' = 16 [GB];
        }
        part def 'Trident Z5 RGB - 32' :> Memory{
            attribute :>>'Module Size' = 32 [GB];
        }
    }
}