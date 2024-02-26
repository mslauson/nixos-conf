{

  networking.hosts = { "10.7.5.60" = [ "gertrude" ]; };

  fileSystems."/mnt/media" = {
    fsType = "nfs";
    device = "gertrude:/mnt/liddy-tiddy/media";
    options = [
      "_netdev"
      "noauto"
      "x-systemd.automount"
      "x-systemd.mount-timeout=10"
      "timeo=14"
      "x-systemd.idle-timeout=1min"
      # "uid=0"
      # "gid=3002"
      # "umask=002"
    ];
  };

}
