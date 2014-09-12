--Turtle Term (System)
--Lizenz: The BSD 3-Clause License
 
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
   print("exit: Exit the Program")
   print("w: Forward")
   print("s: Backward")
   print("a: TurnLeft")
   print("d: TurnRight")
  elseif input == "help2" then
   print("dig: Dig")
   print("dig w: DigUp")
   print("dig s: DigDown")
   print("place: Place")
   print("place w: PlaceUp")
   print("place s: PlaceDown")
  elseif input == "help3" then
   print("fuel: FuelLevel")
   print("refuel or")
   print("load: ReFuel")
   print("refual all: ReFuel All")
   print("reboot or")
   print("restart: Restart")
   print("shutdown of")
   print("halt: ShutDown")
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
