$env.IP = (ip -4 addr show ens18 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

let request = 'http://odelis.arlofilley.home:53333/' + $env.IP
$env.HOST_NAME = (http get $request)
$env.DNS_NAME = $env.HOST_NAME + '.arlofilley.home'

cd ~/.dotfiles/hostname/
open host_name.toml | update server.host_name $env.HOST_NAME | save -f host_name.toml
open host_name.toml | update server.dns_name  $env.DNS_NAME  | save -f host_name.toml
open host_name.toml | update server.ip_addr   $env.IP        | save -f host_name.toml

sudo hostnamectl set-hostname ($env.HOST_NAME)