#!/bin/ksh


A &
A_PID=$!

B &
B_PID=$!

C &
C_PID=$!

D &
D_PID=$!

wait $A_PID $B_PID
echo "A returned $?"

wait $B_PID 
echo "B returned $?"

wait $C_PID 
echo "C returned $?"

wait $D_PID 
echo "D returned $?"

echo "Done waiting"

#echo "Process IDS were : $A_PID , $B_PID , $C_PID , $D_PID"

echo "All jobs are done"
