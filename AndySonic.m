distance = brick.UltrasonicDist(1);

while 1 
  distance = brick.UltrasonicDist(1);
  display(distance);

  if (distance > 30)
    brick.stopMotor('AB', 'Coast');
    brick.MoveMotorAngleRel('B', -50, -415, 'Brake');
    brick.MoveMotor('AB', -60);
    pause(1);
    display(distance);
  elseif (distance < 10)
    brick.MoveMotor('AB', -50);
    display(distance);
  else
    brick.MoveMotor('B')
  end
end

  
    
    
    
    
    

  
