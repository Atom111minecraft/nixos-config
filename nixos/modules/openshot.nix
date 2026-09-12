{ pkgs, ... }:
let
  openshot-fixed = pkgs.symlinkJoin {
    name = "openshot-qt-fixed";
    paths = [ pkgs.openshot-qt ];
    nativeBuildInputs = [ pkgs.makeWrapper ];
    postBuild = ''
      wrapProgram "$out/bin/openshot-qt" \
        --set QT_QPA_PLATFORM xcb \
        --set SDL_VIDEODRIVER x11 \
        --set SDL_AUDIODRIVER pulseaudio
    '';
  };
in
{
  environment.systemPackages = [ openshot-fixed ];
}
