print([[Turtleterm 0.8 "Beta"]])

local terminalZeichen = "# "

while true do
  io.write(terminalZeichen)
  input = io.read()
  if input == "exit" then break
  else
    shell.run(input)
  end
end
