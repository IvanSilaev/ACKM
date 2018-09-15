if(file.Exists( "bin/gmsv_mysqloo_linux.dll", "LUA" ) or file.Exists( "bin/gmsv_mysqloo_win32.dll", "LUA" ))then
    ACkm = ACkm or {}
    ACkm.TableNamePlayers = "ACkmplayers"

    function ACkm.Connect() 
        require("mysqloo")
        ACkm.DB = mysqloo.connect(ACkm.Settings.mysql.Host, 
                                    ACkm.Settings.mysql.Username, 
                                    ACkm.Settings.mysql.Password, 
                                    ACkm.Settings.mysql.Database, 
                                    ACkm.Settings.mysql.Port)
                                
        ACkm.DB.onConnected = function ACkm.DBSuccess() {print("Test connect!")} end
        ACkm.DB.onConnectionFailed = function ACkm.DBError() {print("Error")} end
        ACkm.DB:connect()
    end

else
	print('[MSync] WARNING! You need MySQLoo v9 or higher for this addon to work!')
	print('[MSync] Get it from here: https://facepunch.com/showthread.php?t=1515853')
	print('[MSync] Here are installation instructions:')
	print('[MSync] https://help.serenityservers.net/index.php?title=Garrysmod:How_to_install_mysqloo_or_tmysql')
end

