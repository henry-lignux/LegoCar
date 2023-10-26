distance = brick.UltrasonicDist(1);

while 1 
  distance = brick.UltrasonicDist(1);
  display(distance);

  if (distance > 15)
    brick.MoveMotor('B', -50);
    display(distance);
  elseif (distance < 15)
    brick.MoveMotor('AB', -50);
    display(distance);
  end
end

  
    
    
    
    
    

  
