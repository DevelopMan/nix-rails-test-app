{ pkgs, nixpkgs-ruby, ... }:

{
  packages = [ pkgs.pkg-config pkgs.openssl ];
  languages.ruby.enable = true;
  languages.ruby.package = nixpkgs-ruby.lib.mkRuby { inherit pkgs; rubyVersion = "3.0.0"; };  
}