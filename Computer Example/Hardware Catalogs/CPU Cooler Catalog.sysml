package 'CPU Cooler Catalog' {
    private import 'CPU Cooler'::*;

    package 'MSI' {
        part def 'MAG Coreliquid A13' :> 'Liquid CPU Cooler' {
            doc /* Specific Model of CPU Cooler */
        }
    }
    package 'Cooler Master' {
        part def 'Hyper D92' :> 'Air Cooler' {
            doc /* Specific Model of CPU Cooler */
        }
    }
    //TODO: By defalt the bracket installed is for Intel CPUs, but is hot-swappable to AMD. How to show this?
}