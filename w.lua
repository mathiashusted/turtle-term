local arg = {...}
if arg[1] and arg[1] > 0 then
  arg[1] = arg[1] - 1
  i = 0
  while i < arg[1] do
    turtle.forward()
  end
else
  turtle.forward()
end
