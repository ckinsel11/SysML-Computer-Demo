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
            event occurrence setMousePhysicalLocation;
        }
        part mouse : Mouse {
            event occurrence getMousePhysicalLocation;
            then event occurrence setMouseLocationDelta;
        }
        part monitor {

        }

        message set_position from user.setMousePhysicalLocation to mouse.getMousePhysicalLocation;
        message set_delta from mouse.setMouseLocationDelta to self;
    }
}