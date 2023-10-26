touch = brick.TouchPressed(2);

while 1 
  touch = brick.TouchPressed(2);
  if (touch == 1)
    brick.stopMotor('AB', 'Brake');
    brick.MoveMotorAngleRel('AB', 60, -120, 'Brake');
    brick.WaitForMotor('AB');
    brick.MoveMotorAngleRel('A', -60, -415, 'Brake');
    brick.WaitForMotor('A');
  elseif (touch == 0)
    brick.MoveMotor('AB', -50);
  end
end
