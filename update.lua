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

print("Updating Turtleterm...")
--Keys
download("w","Cmu9r1du")
download("a","nhR6UFEY")
download("s","8h4HFYaJ")
download("d","0j06jMHP")

--Functions
download("dig","qKz7KjSJ")
download("mine","jN3zEHkf")
download("startup","nKV2QkEQ")

--Done
print([[Finished updating, restarting...]])
sleep(3)
os.reboot()
