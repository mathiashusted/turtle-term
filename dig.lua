local arg = {...}
if arg[1] then
  if arg[1] == "w" or arg[1] == "" then turtle.digUp()
  elseif arg[1] == "s" or arg[1] == "S" then turtle.digDown()
  else
    print([[Usage: dig [w, s] ]])
  end
else
  turtle.dig()
end
