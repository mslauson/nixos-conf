{ pkgs, ... }: {
  users.users.mslauson = {
    isNormalUser = true;
    description = "Matthew Slauson";
    extraGroups = [ "networkmanager" "wheel" "input" ];
    shell = pkgs.zsh;
    packages = with pkgs; [ ];
  };
  users.users.nkuehne = {
    isNormalUser = true;
    description = "Nicholas Kuehne";
    extraGroups = [ "networkmanager" "wheel" "input" ];
    shell = pkgs.zsh;
    packages = with pkgs; [ ];
  };

  users.groups.nas-user = {
    members = [ "mslauson" ];
    gid = 1069;

  };
  users.groups.nas-admin = {
    members = [ "mslauson" ];
    gid = 3001;

  };
  users.groups.nas-media = {
    members = [ "mslauson" ];
    gid = 3002;

  };
}
