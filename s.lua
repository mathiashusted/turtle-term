local arg = {...}
arg[1] = arg[1] + 0
if arg[1] > 0 then
  for i=0,arg[1] do
    turtle.back()
  end
else
  print([[Usage: s [Blocks]])
end
