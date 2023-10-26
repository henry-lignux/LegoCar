        distance = brick.UltrasonicDist(1);
        touch = brick.TouchPressed(2);
        while 1
            brick.StopMotor('AB');
            distance = brick.UltrasonicDist(1);
            touch = brick.TouchPressed(2);
            disp(distance);
            if (touch == 1)
                   brick.StopMotor('B');
                   brick.MoveMotor('A', -30);
                   pause(0.4);
                   touch = brick.TouchPressed(2);
                   disp(touch);
            else
                while distance < 10
                    brick.MoveMotor('A', -50);
                    brick.MoveMotor('B', -51);
                    distance = brick.UltrasonicDist(1);
                    disp(distance);
                    touch = brick.TouchPressed(2);
                    break;
                end
                brick.StopMotor('AB');
            
                brick.MoveMotor('B', -60);

                distance = brick.UltrasonicDist(1);
                disp(distance);
            end
           
        end
        
       





    
    

