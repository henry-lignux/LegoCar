distance = brick.UltrasonicDist(1);
disp(distance);

while 1
    distance = brick.UltrasonicDist(1);
    disp(distance);
    while distance >= 15
        distance = brick.UltrasonicDist(1);
        brick.MoveMotor('A', -42);
        brick.MoveMotor('B', -40);
    end
    while distance < 15
        distance = brick.UltrasonicDist(1);
        brick.MoveMotor('A', -100);

        brick.StopMotor('AB');
        
        
    end
end
        
       





    
    

