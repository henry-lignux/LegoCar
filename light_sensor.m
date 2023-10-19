

%returns a number that is related to the brightness of light that the sensor recieves
brick.SetColorMode(3, 2);
start_color = brick.ColorCode(3); %read the color code value from sensor on port 3
loading_color = 3; %setting color manually
end_color = 4;     %setting color manually

while 1
  color = brick.ColorCode(3);  
  if color == start_color 
    brick.MoveMotor('AB', 50); %move brick  
  elseif color == loading_color
    
  elseif color == end_color
    brick.MoveMotor('AB', 0) %stop
  elseif color == 5 %red
    brick.MoveMotor('AB', 0); % break
    pause(3);
    brick.MoveMotor('AB', 50); %move
end


  

