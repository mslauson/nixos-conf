{ config, lib, pkgs, ... }: {
  programs.rofi = {
    enable = true;
    font = "JetBrainsMono";
    pass = { enable = true; };
    terminal = "\${pkgs.kitty}/bin/kitty";
    cycle = true;
    plugins = [ pkgs.rofi-calc pkgs.rofimoji pkgs.rofi-vpn ];
    #     theme = let
    #       # Use `mkLiteral` for string-like values that should show without
    #       # quotes, e.g.:
    #       # {
    #       #   foo = "abc"; => foo: "abc";
    #       #   bar = mkLiteral "abc"; => bar: abc;
    #       # };
    #       inherit (config.lib.formats.rasi) mkLiteral;
    #     in {
    #       "*" = {
    # "bg-col" = "#1e1e2e";
    #       "bg-col-light" = "#1e1e2e";
    #       "border-col" = "#1e1e2e";
    #       "selected-col" = "#1e1e2e";
    #       "blue" = "#89b4fa";
    #       "fg-col" = "#cdd6f4";
    #       "fg-col2" = "#f38ba8";
    #       "grey" = "#6c7086";
    #
    #         "width"= 512;
    #       };
    #
    #     "element-text", "element-icon" , "mode-switcher" {
    #         "background-color" = "inherit";
    #         "text-color" = "inherit";
    #         }
    #
    #     "window" {
    #       "height" = 360;
    #       "border" = 3;
    #       "border-color" = "#1e1e2e";
    #       "background-color" = "#1e1e2e";
    #     }
    #
    #     "mainbox" {
    #         background-color: @bg-col;
    #     }
    #
    #     "inputbar" {
    #         children: [prompt,entry];
    #         background-color: @bg-col;
    #         border-radius: 5px;
    #         padding: 2px;
    #     }
    #
    #     "prompt" {
    #         background-color: @blue;
    #         padding: 6px;
    #         text-color: @bg-col;
    #         border-radius: 3px;
    #         margin: 20px 0px 0px 20px;
    #     }
    #
    #     "textbox"-prompt-colon {
    #         expand: false;
    #         str: ":";
    #     }
    #
    #     "entry" {
    #         padding: 6px;
    #         margin: 20px 0px 0px 10px;
    #         text-color: @fg-col;
    #         background-color: @bg-col;
    #     }
    #
    #     "listview" {
    #         border: 0px 0px 0px;
    #         padding: 6px 0px 0px;
    #         margin: 10px 0px 0px 20px;
    #         columns: 2;
    #         lines: 5;
    #         background-color: @bg-col;
    #     }
    #
    #     "element" {
    #         padding: 5px;
    #         background-color: @bg-col;
    #         text-color: @fg-col  ;
    #     }
    #
    #     "element-icon" {
    #         size: 25px;
    #     }
    #
    #     "element" "selected" {
    #         background-color:  @selected-col ;
    #         text-color: @fg-col2  ;
    #     }
    #
    #     "mode-switcher" {
    #         spacing: 0;
    #       }
    #
    #     "button" {
    #         padding: 10px;
    #         background-color: @bg-col-light;
    #         text-color: @grey;
    #         vertical-align: 0.5; 
    #         horizontal-align: 0.5;
    #     }
    #
    #     "button" "selected" {
    #       background-color: @bg-col;
    #       text-color: @blue;
    #     }
    #
    #     "message" {
    #         background-color: @bg-col-light;
    #         margin: 2px;
    #         padding: 2px;
    #         border-radius: 5px;
    #     }
    #
    #     "textbox" {
    #         padding: 6px;
    #         margin: 20px 0px 0px 20px;
    #         text-color: @blue;
    #         background-color: @bg-col-light;
    #     }
  };
}

