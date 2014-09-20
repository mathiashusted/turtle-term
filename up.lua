local arg = {...}
if arg[1] then arg[1] = arg[1] - 1 end

if arg[1] == nil then arg[1] = 0 end

if arg[1] > -1 then
  for i=0,arg[1] do
    turtle.up()
  end
else
  print([[Usage: up [Blocks] ]])
end
