local arg = {}
if arg[1] then
  if arg[1] == "w" then turtle.placeUp()
  elseif arg[1] == "s" then turtle.placeDown()
  end
else
  turtle.place()
end
