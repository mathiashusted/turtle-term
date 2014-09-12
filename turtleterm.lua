--Turtle Term (System)
--Lizenz: The BSD 3-Clause License

function help(seite)
 if seite == 1 then
  print("help: Hilfe\nexit: Programm beenden\nclear: Cleart den Bildschirm\nw: Turtle - Nach vorne gehen\n") --Muss noch gemacht werden
 end
end

shell.run("clear")
print("Turtle Term (Beta)")
print("Licensed under The BSD 3-Clause License")

--while true Loop
while true do
  io.write("- ")
  --Get Input
  input = io.read()
  --Actions von Input
  if input == "exit" then break
  elseif input == "help" then
   seite = io.write("Welche Seite? ")
   help(seite)
  elseif input == "clear" then shell.run("clear")
  elseif input == "w" or input == "W" then turtle.forward()
  elseif input == "a" or input == "A" then turtle.turnLeft()
  elseif input == "s" or input == "S" then turtle.back()
  elseif input == "d" or input == "D" then turtle.turnRight()
  elseif input == "dig" or input == "dig" then turtle.dig()
  elseif input == "dig w" or input == "dig W" then turtle.digUp()
  elseif input == "dig s" or input == "dig S" then turtle.digDown()
  elseif input == "place" then turtle.place()
  elseif input == "place s" or input == "place S" then turtle.placeDown()
  elseif input == "place w" or input == "place W" then turtle.placeUp()
  elseif input == "refuel" or input  == "load" then turtle.refuel()
  elseif input == "refuel all" or input == "refuel ALL" then turtle.refuelAll()
  elseif input == "fuel" then print(turtle.getFuelLevel())
  elseif input == "reboot" or input == "restart" then shell.run("reboot")
  elseif input == "shutdown" or input == "halt" then shell.run("shutdown")
  else print("Ungültiger Befehl")
  end
end
