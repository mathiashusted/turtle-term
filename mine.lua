local arg = {...}
stoneSlot = 15
torchSlot = 16
autoRefuel = true
if arg[1] == nil then
  print([[Usage: mine <Länge>]])
  --
elseif arg[1] == "set" then
  if arg[2] then
    if arg[2] == "stoneSlot" then
      if arg[3] then
        arg[3] = arg[3] + 0
        stoneSlot = arg[3]
      else
        print([[Usage: mine set <Variable> <Value>]])
      end
    end
  else
    print([[Usage: mine set <Variable> <Value>]])
  end
  --
else
  arg[1] = arg[1] - 1
  if turtle.getItemCount(stoneSlot) == 0 then print([[Ich brauche Fackeln!]])
  elseif turtle.getItemCount(15) == 0 then print([[Ich brauche Stein!]])
  elseif turtle.getFuelLevel == 0 then print([[Ich brauche Fuel!]])
  end
  turtle.select(16)
  for block,arg[1],1 do
    turtle.suck()
    if turtle.detectUp() == true then turtle.digUp() end
    if turtle.detectDown() == false then
      turtle.select(15)
      turtle.placeDown()
      turtle.select(16)
    end
    if turtle.detect() == true then turtle.dig() end
    if turtle.getFuelLevel() == 0 then
      if autoRefuel == true then shell.run("refuel all")
      else
        print([[Ich brauche Fuel!]])
        break
      end
    end
    turtle.forward()
  end
  print([[Fertig!]])
end
