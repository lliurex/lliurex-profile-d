eval export $(lliurex-version -e -a)

if [ "x$LTSP" = "xyes" -a "x$THIN" = "xyes" -a "x$LOGIN_TYPE" = "xldap" -a "x$SERVER" = "xyes" ]; then
    export http_proxy="http://proxy:3128"
    export https_proxy="http://proxy:3128"
    export no_proxy="localhost, 127.0.0.1"
    gsettings set org.gnome.system.proxy autoconfig-url "http://proxy/proxy.pac"
    gsettings set org.gnome.system.proxy mode "auto"
fi

