if CLIENT then
    print("A.C.K.M  V0.1 Loaded")
    ACkm = ACkm or {}

    ACkm.LocalSettings = ACkm.LocalSettings or {
        mysql = {
            Host = "127.0.0.1",
            Port = 3306,
            Username = "username",
            Database = "database",
            Password = "password"
        }
    }
end