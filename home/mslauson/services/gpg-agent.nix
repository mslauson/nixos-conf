{
  programs.gpg = { enable = true; };
  services.gpg-agent = {
    enable = false;
    enableZshIntegration = true;
    enableSshSupport = true;
    # pinentryFlavor = "qt";
    enableScDaemon = true;
  };
}
