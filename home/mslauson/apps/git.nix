{ firefox }:

{
  programs.git = {
    enable = true;
    userName = "Matthew Slauson";
    userEmail = "matthew@slauson.io";
    signing = { key = "3AB57AD2F78683DF9E9D0659EF6F329D8D6E51C5"; };
    diff-so-fancy = {
      enable = true;
      markEmptyLines = true;
    };
    aliases = {
      st = "status";
      co = "checkout";
      br = "branch";
      f = "fetch";
      m = "merge";
      cam = "commit -am";
      lg = "log --graph --format='%Cred%h%Creset  %<|(15) %C(white)%s %<|(35) %Creset %Cgreen(%cr)%<|(55)  %C(blue)<%an>%Creset%C(yellow)%d%Creset'";
    };
    extraConfig = {
      init = { defaultBranch = "main"; };
      pull = {
        rebase = false;
      };
      commit = {
        gpgSign = true;
      };
      web = {
        browser = "${firefox}/bin/firefox";
      };
      core = {
        editor = "nvim";
      };
    };
  };
}
