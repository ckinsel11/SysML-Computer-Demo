package 'Report Mouse Position' {
    private import Mouse::*;
    private import 'Computer System'::*;
    use case def 'Update Mouse Position' {
        objective {
            doc /* Control on-screen mouse position */
        }
        subject computer : Computer{
            event occurrence setMousePosition;
        }
        actor user {
            event occurrence sendev1;
        }
        part mouse : Mouse {
            event occurrence receiveev1;
            then event occurrence setMouseLocationDelta;
        }
        part monitor {

        }

        message set_position from user.sendev1 to mouse.receiveev1;
        message set_delta from mouse.setMouseLocationDelta to self;
    }
}