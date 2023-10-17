% Actual distance from wall
distance = brick.UltrasonicDist(1);
% Minimum distance from wall before the car turns
min_distance = 15;
disp(distance);

while 1
    distance = brick.UltrasonicDist(1);
    disp(distance);
    % When the car is further than min_distance, it moves forward
    while distance >= min_distance 
        distance = brick.UltrasonicDist(1);
        brick.MoveMotor('A', -42);
        brick.MoveMotor('B', -40);
    end
    % When the car is less far than min_distance, it turns
    while distance < min_distance
        distance = brick.UltrasonicDist(1);
        brick.MoveMotor('A', -100);

        brick.StopMotor('AB');
        
        
    end
end
        
       





    
    

