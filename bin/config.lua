
local config = {}

config.areaID = 1000


config.db = 
{
    STDictDBMgr = {ip = "127.0.0.1", port = 3306, db = "dict", user = "root", pwd = "123456"},
    STInfoDBMgr = {ip = "127.0.0.1", port = 3306, db = "info", user = "root", pwd = "123456"},
    STLogDBMgr = {ip = "127.0.0.1", port = 3306, db = "log", user = "root", pwd = "123456"},
}

config.docker = 
{
    {
        dockerListenHost="0.0.0.0",
        dockerPubHost="127.0.0.1",
        dockerListenPort=16000,
        dockerWhite={"192.168.", "127.0."},
        clientPubHost="127.0.0.1",
        clientPubPort=26000,
        services={"STLogDBMgr", "STAvatarMgr", "STAvatar", "STInfoDBMgr"},
        dockerID = 1,
    },
    {
        dockerListenHost="0.0.0.0",
        dockerPubHost="127.0.0.1",
        dockerListenPort=16001,
        dockerWhite={"192.168.", "127.0."},
        clientPubHost="127.0.0.1",
        clientPubPort=26001,
        webPubHost="127.0.0.1",
        webPort=26080,
        services={"STWebAgent", "STOfflineMgr", "STMinitorMgr", "STAvatar"},
        dockerID = 2,
    },
--[[
    {
        dockerListenHost="0.0.0.0",
        dockerPubHost="127.0.0.1",
        dockerListenPort=17001,
        dockerWhite={"192.168.", "127.0."},
        services={"STWorldMgr"},
        dockerID = 3,
    }, ]]
}




config.world = 
{
    dockerListenHost="0.0.0.0",
    dockerListenPort=17001,
    sceneListenHost="0.0.0.0",
    scenePubHost="127.0.0.1",
    sceneListenPort=17002,
}




config.scenes = 
{
    {
        clientListenHost="0.0.0.0",
        clientPubHost="127.0.0.1",
        clientListenPort=17102,
        sceneID = 1,
    },
    {
        clientListenHost="0.0.0.0",
        clientPubHost="127.0.0.1",
        clientListenPort=17102,
        sceneID = 2,
    },
    {
        clientListenHost="0.0.0.0",
        clientPubHost="127.0.0.1",
        clientListenPort=17102,
        sceneID = 3,
    },

}





return config