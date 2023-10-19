% touch sensor stuff
% % Actual distance from wall
% distance = brick.UltrasonicDist(1);
% % Minimum distance from wall before the car turns
% min_distance = 15;
% % Speed of the car
speed = 40;
% Weight coefficient
w_coefficient = 1.05;
% Turn angle
angle = 100;
% disp(distance);

while 1 
    touch = brick.TouchPressed(2);
    % pause(0.2);
    display("In First ");
    disp(touch);% When the car is not touching the wall, it moves forward
    while touch == 0 
        brick.MoveMotor('A', -1 * speed * w_coefficient);
        brick.MoveMotor('B', -1 * speed);
        touch = brick.TouchPressed(2);
        % pause(0.2);
        disp(brick.TouchPressed(2));
    end
    if touch == 1
        brick.MoveMotor('AB', 50);
        pause(0.3);
        brick.StopMotor('AB');
        pause(3);
        brick.MoveMotor('A', -50);
        pause(0.1);        
    end

    % When the car is touching the wall
    
end