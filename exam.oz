declare Exo1 Exo2
proc {Exo1 S}
   X0 X1 X2 X3 X4 X5 X
in
   S= X
   X::100000#999999
   [X0 X1 X2 X3 X4 X5] ::: 0#9
   X0 <: X1
   X1 <: X2
   X2 <: X3
   X3 <: X4
   X4 <: X5
   X0 + X5 \=: X1 + X4
   X0 + X5 \=: X2 + X3
   X1 + X4 \=: X2 + X3
   X=: X0*100000 + X1*10000 + X2*1000 + X3*100 + X4*10 + X5
   {FD.distribute naive [X0 X1 X2 X3 X4 X5]}
end
local X in
   X= {List.filter {SearchAll Exo1} fun {$ N} {Int.'mod' N 7} =< 0 }
   {Browse X}
end

