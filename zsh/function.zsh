goodnight() {
    i3lock -f -e -c 000000
    sleep $1
    systemctl suspend
}