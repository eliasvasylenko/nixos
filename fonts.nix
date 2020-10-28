{ config, pkgs, ... }:

{
  fonts = {
    fontconfig = {
      enable = true;

      defaultFonts = {
        emoji = [ "JoyPixels" ];
        monospace = [ "Source Code Pro" ];
      };
    };
    fontDir = {
      enable = true;
    };
    fonts = with pkgs; [
      (nerdfonts.override { fonts = [ "SourceCodePro" "FiraCode" "Meslo" ]; })

      noto-fonts-emoji

      freefont_ttf
      dejavu_fonts
      ttf_bitstream_vera
      liberation_ttf
    ];
    enableGhostscriptFonts = true;
  };
}

