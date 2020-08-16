{ config, pkgs, ... }:

{
  fonts = {
    fontconfig.enable = true;
    enableFontDir = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      (nerdfonts.override { fonts = [ "SourceCodePro" "FiraCode" "Meslo" ]; })

      noto-fonts-emoji

      freefont_ttf
      dejavu_fonts
      ttf_bitstream_vera
      liberation_ttf
    ];
    
    fontconfig.defaultFonts = {
      emoji = [ "JoyPixels" ];
      monospace = [ "Source Code Pro" ];
    };
  };
}

