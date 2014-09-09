--Turtle Term (System)
--Lizenz: The BSD 3-Clause License
 
print("Turtle Term (Beta)")
print("Licensed under The BSD 3-Clause License")

--while true Loop
while true do
  io.write("-> ")
  --Get Input
  input = io.read()
  --Actions von Input
  if input == "exit" then break
  elseif input == "help" then --Muss noch gemacht werden
  elseif input == "clear" then shell.run("clear")
  elseif input == "w" or input == "W" then turtle.forward()
  elseif input == "a" or input == "A" then turtle.turnLeft()
  elseif input == "s" or input == "S" then turtle.turnRight()
  elseif input == "d" or input == "D" then turtle.right()
  elseif input == "refuel" or input  == "load" then shell.run("refuel")
  else print("Ungültiger Befehl")
  end
end
