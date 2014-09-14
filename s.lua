local arg = {...}
if arg[1] then
  arg[1] = arg[1] - 1
else
  turtle.back()
end
if arg[1] > 0 then
  for i=0,arg[1] do
    turtle.back()
  end
else
  print([[Usage: s [Blocks]])
end
