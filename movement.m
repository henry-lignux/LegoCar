global key
InitKeyboard();

while 1
    pause(0.1);
    switch key
        case 'uparrow'
            brick.MoveMotor('A', -50);
            brick.MoveMotor('B', -50);

        case 'rightarrow'
            brick.MoveMotor('A', -30);
        
        case 'leftarrow'
            brick.MoveMotor('B', -30);
        case 'downarrow'
            brick.MoveMotor('A', 50);
            brick.MoveMotor('B', 50);
        
        case 0
            brick.StopMotor('A');
            brick.StopMotor('B');
        case 'q'
            break;
        case 's'
            brick.MoveMotorAngleRel('C', 10, 30, 'Brake');

        case 'd'
            brick.MoveMotorAngleRel('C', 10, -30, 'Brake');
    end
end

