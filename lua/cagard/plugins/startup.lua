local startup_setup, startup = pcall(require, "startup")
if not startup_setup then
	return
end

startup.setup()
