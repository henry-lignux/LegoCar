% touch sensor stuff
brick = ConnectBrick('EV3F');
% % Actual distance from wall
% distance = brick.UltrasonicDist(1);
% % Minimum distance from wall before the car turns
% min_distance = 15;
% % Speed of the car
speed = 40;
% Weight coefficient
w_coefficient = 1.05
% Turn angle
angle = 100;
% disp(distance);

while 1 
    % When the car is not touching the wall, it moves forward
    while brick.TouchPressed(2) == 0 
        brick.MoveMotor('A', -1 * speed * w_coefficient);
        brick.MoveMotor('B', -1 * speed);
    end
    % When the car is touching the wall
    while brick.TouchPressed(2) == 1 
	% it turns right
        brick.MoveMotor('A', -1 * angle);
	% and then stops
        brick.StopMotor('AB');
    end
end
