{pkgs, ...}: {
  home.packages = with pkgs; [wakatime];

  programs.vscode = {
    enable = true;
    userSettings = {
      "window.titleBarStyle" = "custom";
      "window.titleSeparator" = "  <->  ";

      "workbench.colorTheme" = "Catppuccin Mocha";
      # "workbench.colorTheme" = "Gruvbox Light Hard";
      "workbench.iconTheme" = "material-icon-theme";
      "workbench.editor.titleScrollbarSizing" = "large";

      "explorer.compactFolders" = false;
      "explorer.sortOrder" = "filesFirst";

      "editor.fontFamily" = "'JetBrainsMono', 'monospace', monospace";
    };
    extensions = with pkgs.vscode-extensions; [
      vscodevim.vim
      yzhang.markdown-all-in-one
      # Nix
      bbenoist.nix
      # Python
      ms-python.python
      WakaTime.vscode-wakatime
      mkhl.direnv
      dbaeumer.vscode-eslint
      eamodio.gitlens
      svelte.svelte-vscode
      denoland.vscode-deno
      lokalise.i18n-ally

      # Cosmetics
      catppuccin.catppuccin-vsc
      pkief.material-icon-theme
    ];
  };
}
