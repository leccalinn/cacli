posix = require("posix")
user = posix.getlogin()

filePath = string.format("/home/%s/.bash_aliases", user)

function writeOnFile(filetext)
	local file = io.open(filePath, "a+")
	file:write("\n" .. filetext)
	file:close()
end

io.write("What command do you wish to change?\n")
ocmd = io.read()

io.write("To what do you wish to change?\n")
cmd = io.read()

writeOnFile("alias " .. cmd .. "=\"" .. ocmd .. "\"")

io.write("Now, restart your machine and the command will be ready to use!\n")

