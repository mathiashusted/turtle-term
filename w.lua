local arg = {...}
if arg[1] then arg[1] = arg[1] - 1 end
if arg[1] > 0 then
  for i=0,arg[1] do
    turtle.forward()
  end
else
  turtle.forward()
end
