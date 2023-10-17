brick.SetColorMode (SensorPort, mode);

%returns a number that is related to the brightness of light that the sensor recieves
brick.SetColorMode(2, 0);
brightness = brick.LightReflect(2);
