{
  programs.ssh = {
    enable = true;
    # addKeysToAgent = 'yes';
    # addKeysToAgent
    forwardAgent = true;
  };
}
