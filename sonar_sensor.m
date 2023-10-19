% Actual distance from wall
distance = brick.UltrasonicDist(1);
% Minimum distance from wall before the car turns
min_distance = 15;
% Speed of the car
speed = 40;
% Weight coefficient
w_coefficient = 1.05
% Turn angle
angle = 100;
disp(distance);

while 1
    distance = brick.UltrasonicDist(1);
    disp(distance);
    % When the car is further than min_distance, it moves forward
    while distance >= min_distance 
        distance = brick.UltrasonicDist(1);
	if brick.TouchPressed(2)
 		brick.MoveMotor('A', -1 * speed * w_coefficient);
        	brick.MoveMotor('B', -1 * (speed + 10));
	else
        	brick.MoveMotor('A', -1 * speed * w_coefficient);
        	brick.MoveMotor('B', -1 * speed);
	end
    end
    % When the car is less far than min_distance
    while distance < min_distance
        distance = brick.UltrasonicDist(1);
	% it turns right
        brick.MoveMotor('A', -1 * angle);
	% and then stops
        brick.StopMotor('AB');
    end
end
        
       





    
    

