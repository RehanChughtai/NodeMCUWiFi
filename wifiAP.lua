wifi.setmode(wifi.SOFTAP)
ap_cfg={}
ap_cfg.ssid="UP837518"
ap_cfg.pwd="2020a202"
--the rest have default value
--check them by yourself, which is helpful to know how it works - Dalin
wifi.ap.config(ap_cfg)

bc = wifi.ap.getbroadcast()
print("AP Address: ",bc)

mytimer = tmr.create()
mytimer:register(3000, 1, function() 
table={}
table=wifi.ap.getclient()
clientCount = 0
for mac,ip in pairs(table) do
    clientCount = clientCount + 1
    print("Client No."..clientCount)
    print("MAC: ", mac)
    print("IP: ", ip)
end
end
)
mytimer:start()
