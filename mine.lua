local arg = {...}
stoneSlot = 15
torchSlot = 16
autoRefuel = true
if arg[1] == nil then
  print([[Usage: mine <Länge>]])
  --
else
  arg[1] = arg[1] - 1
  if turtle.getItemCount(stoneSlot) == 0 then print([[Ich brauche Fackeln in Slot 16!]])
    repeat until turtle.getItemCount(stoneSlot) > 0
  end
  if turtle.getItemCount(torchSlot) == 0 then print([[Ich brauche Stein in Slot 15!]])
    repeat until turtle.getItemCount(torchSlot) > 0
  end
  if turtle.getFuelLevel() == 0 then print([[Ich brauche Fuel!]])
    repeat
      io.write([[Drücke ENTER um ein Refuel zu machen. Schreibe all um ein Refuel all zu machen.]])
      fuelInput = io.read()
      if fuelInput == "all" then shell.run("refuel all")
      else turtle.refuel() end
    until turtle.getFuelLevel() > 0
  end
  turtle.select(16)
  for block=0,arg[1],1 do
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
    if block % 10 == 0 then
      turtle.turnLeft()
      turtle.turnLeft()
      turtle.place()
      turtle.turnRight()
      turtle.turnRight()
    end
    turtle.forward()
  end
  print([[Fertig!]])
end
