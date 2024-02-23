{ firefox, meld }:

{
  programs.git = {
    enable = true;
    userName = "Matthew Slauson";
    userEmail = "matthew@slauson.io";
    aliases = {
      st = "status";
      co = "checkout";
      br = "branch";
      f = "fetch";
      m = "merge";
      lg = "log --graph --format='%Cred%h%Creset  %<|(15) %C(white)%s %<|(35) %Creset %Cgreen(%cr)%<|(55)  %C(blue)<%an>%Creset%C(yellow)%d%Creset'";
    };
    extraConfig = {
      web = {
        browser = "${firefox}/bin/firefox";
      };
      core = {
        editor = "nvim";
      };
      # diff = {
      #   tool = "meld";
      # };
      # difftool = {
      #   prompt = false;
      #   cmd = "${meld}/bin/meld $LOCAL $REMOTE";
      # };
      # merge = {
      #   tool = "meld";
      # };
      # mergetool = {
      #   cmd = "${meld}/bin/meld $LOCAL $MERGED $REMOTE";
      #   keepBackup = false;
      # };
    };
  };
}
