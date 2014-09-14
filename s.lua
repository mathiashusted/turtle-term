local arg = {...}
if arg[1] and arg[1] > 0 then
  arg[1] = arg[1] - 1
  for i=0, arg[1] do
    turtle.back()
  end
else
  turtle.back()
end
