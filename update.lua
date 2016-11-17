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
download("w","7xddzDwc")
download("a","Xt0fhDEW")
download("s","BeXfrKPN")
download("d","5LTZYJUc")
download("up","GrYq86xD")
download("down","x34vmpmi")

--Functions
download("dig","w0JNita2")
download("mine","M06D4Cac")
download("startup","9D9Sjfyb")
download("place","xL8fCXrU")

--Update Updater
download("update","aSH8k35U")

--Done
print([[Finished updating, restarting...]])
sleep(3)
os.reboot()
