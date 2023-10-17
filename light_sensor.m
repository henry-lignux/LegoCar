brick.SetColorMode (SensorPort, mode);

%returns a number that is related to the brightness of light that the sensor recieves
brick.SetColorMode(3, 2);
color = brick.ColorCode(3); %read the color code value from sensor on port 3

while 1
  if color == 5 % if detected red
  brick.MoveMotor('AB', 0); % break
  pause(3);
  brick.MoveMotor('AB', 50); %move
  else

