disp('Push the button for the kill switch to activate.');
while brick.TouchPressed(1) == 0
    brick.playTone(100, 500, 500);
    if brick.TouchPressed(1)== 1
        brick.playTone(0, 0);
        pause(0.75);
   
    end
end
disp('Done!');