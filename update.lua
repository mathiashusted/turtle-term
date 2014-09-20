--Installer/Updater
--Download/Replace Function
function download(filename,pastebin)
  if fs.exists(filename) == false then
    shell.run("pastebin get "..pastebin.." "..filename)
  else
    fs.delete(filename)
    shell.run("pastebin get "..pastebin.." "..filename)
  end
end

print([[Updating Turtleterm...]])
--Bewegung
download("w","Cmu9r1du")
download("a","nhR6UFEY")
download("s","8h4HFYaJ")
download("d","0j06jMHP")
download("up","1WRgSXiM")
download("down","qKz7KjSJ")

--Functions
download("dig","qKz7KjSJ")
download("mine","jN3zEHkf")
download("startup","nKV2QkEQ")
download("place","BCnnZKmV")

--Update Updater
download("update","Sa2dV347")

--Done
print([[Finished updating, restarting...]])
sleep(3)
os.reboot()
