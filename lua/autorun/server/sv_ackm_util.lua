ACkm = ACkm or {}
ACkm.ULX = ACkm.ULX or {}


function ACkm.load()

    if not(file.Exists("ACkm/settings.txt", "DATA")) then
        print("[ACkm] Writting settings file")
        file.CreateDir("ACkm")

        ACkm.Settings = {
            mysql = {
				Host = "127.0.0.1",
				Port = 3306,
				Database = "database",
                Username = "root",
				Password = ""
			},
        }

        file.Write("ACkm/settings.txt", util.TableToJSON(ACkm.Settings, true))
    else
        print("[ACkm] Gettings settings file")
        ACkm.Settings = util.JSONToTable(file.Read("ACkm/settings.txt", "DATA"))
    end
end
   
hook.Add( "Initialize", "ACkm_Load", MSync.load )    