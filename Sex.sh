su -c iptables -F
iptables -F
su -c iptables --flush
iptables --flush
iptables -F
iptables -X
ip6tables --flush
ip6tables -F
su -c iptables -F
su -c iptables -X
su -c ip6tables --flush
su -c ip6tables -F
/system/bin/iptables -I OUTPUT -p tcp -m string --string "dl.listdl.com" --algo bm -j DROP
/system/bin/iptables -I INPUT -p tcp -m string --string "dl.listdl.com" --algo bm -j DROP
/system/bin/iptables -I OUTPUT -p tcp -m string --string "cloud.gsdk.proximabeta.com" --algo bm -j DROP
/system/bin/iptables -I INPUT -p tcp -m string --string "cloud.gsdk.proximabeta.com" --algo bm -j DROP
/system/bin/iptables -I OUTPUT -p tcp -m string --string "lobby.igamecj.com" --algo bm -j DROP
/system/bin/iptables -I INPUT -p tcp -m string --string "lobby.igamecj.com" --algo bm -j DROP
/system/bin/iptables -I OUTPUT -p tcp -m string --string "android.crashsight.wetest.net" --algo bm -j DROP
/system/bin/iptables -I INPUT -p tcp -m string --string "android.crashsight.wetest.net" --algo bm -j DROP
/system/bin/iptables -I OUTPUT -p tcp -m string --string "cloud.vmp.onezapp.com" --algo bm -j DROP
/system/bin/iptables -I INPUT -p tcp -m string --string "cloud.vmp.onezapp.com" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "android.crashsight.wetest.net" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "android.crashsight.wetest.net" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "cloud.gsdk.proximabeta.com" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "cloud.gsdk.proximabeta.com" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "cs.mbgame.gamesafe.qq.com" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "cs.mbgame.gamesafe.qq.com" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "android.googlesource.com" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "android.googlesource.com" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "de.voice.gcloudcs.com" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "de.voice.gcloudcs.com" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "cloud.vmp.onezapp.com" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "cloud.vmp.onezapp.com" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "anticheatexpert.com" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "anticheatexpert.com" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "oth.eve.mdt.qq.com" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "oth.eve.mdt.qq.com" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "crashsight.qq.com" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "crashsight.qq.com" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "lobby.igamecj.com" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "lobby.igamecj.com" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "www.anonymous.com" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "www.anonymous.com" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "googlesource.com" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "googlesource.com" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "www.wetest.net" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "www.wetest.net" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "crashsight.com" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "crashsight.com" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "dl.listdl.com" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "dl.listdl.com" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "dl.listdl.com" --algo bm -j REJECT
iptables -I INPUT -p tcp -m string --string "dl.listdl.com" --algo bm -j REJECT
iptables -I OUTPUT -p tcp -m string --string "tencent.com" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "tencent.com" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "gcloud.com" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "gcloud.com" --algo bm -j DROP
iptables -I OUTPUT -p tcp -m string --string "qq.com" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "qq.com" --algo bm -j DROP
iptables -I INPUT -s dl.listdl.com -j DROP &>/dev/null
iptables -I OUTPUT -s dl.listdl.com -j DROP &>/dev/null
iptables -I INPUT -s dl.listdl.com -j REJECT &>/dev/null
iptables -I OUTPUT -s dl.listdl.com -j REJECT &>/dev/null
     i   p   t   a   b   l   e   s       -   I       I   N   P   U   T       -   p       t   c   p           -   -   d   p   o   r   t       443       -   j       D   R   O   P  
   i   p   t   a   b   l   e   s       -   I       O   U   T   P   U   T       -   p       t   c   p           -   -   d   p   o   r   t       443       -   j       D   R   O   P   
     i   p   t   a   b   l   e   s       -   I       I   N   P   U   T       -   p       t   c   p           -   -   d   p   o   r   t       443       -   j       REJECT  
   i   p   t   a   b   l   e   s       -   I       O   U   T   P   U   T       -   p       t   c   p           -   -   d   p   o   r   t       443       -   j    REJECT   
iptables -I INPUT -p tcp --dport 80 -j DROP
iptables -I INPUT -p tcp --dport 8080 -j DROP
iptables -I INPUT -p tcp --dport 8085 -j DROP
iptables -I INPUT -p tcp --dport 8086 -j DROP
iptables -I INPUT -p tcp --dport 8088 -j DROP
iptables -I OUTPUT -p tcp --dport 80 -j DROP
iptables -I OUTPUT -p tcp --dport 8080 -j DROP
iptables -I OUTPUT -p tcp --dport 8085 -j DROP
iptables -I OUTPUT -p tcp --dport 8086 -j DROP
iptables -I OUTPUT -p tcp --dport 8088 -j DROP
iptables -I INPUT -p tcp --dport 80 -j REJECT
iptables -I INPUT -p tcp --dport 8080 -j REJECT
iptables -I INPUT -p tcp --dport 8085 -j REJECT
iptables -I INPUT -p tcp --dport 8086 -j REJECT
iptables -I INPUT -p tcp --dport 8088 -j REJECT
iptables -I OUTPUT -p tcp --dport 80 -j REJECT
iptables -I OUTPUT -p tcp --dport 8080 -j REJECT
iptables -I OUTPUT -p tcp --dport 8085 -j REJECT
iptables -I OUTPUT -p tcp --dport 8086 -j REJECT
iptables -I OUTPUT -p tcp --dport 8088 -j REJECT
sleep 2
am start -n com.pubg.imobile/com.epicgames.ue4.SplashActivity > /dev/null
