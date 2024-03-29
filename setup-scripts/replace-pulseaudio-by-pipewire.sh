# Script obtained from https://atish3604.medium.com/solved-bluetooth-headset-mic-not-working-detected-in-ubuntu-20-04-86a5236444d0

# Pre-requisites
sudo add-apt-repository ppa:pipewire-debian/pipewire-upstream
sudo apt-get update
sudo apt-get install pipewire pipewire-audio-client-libraries

# Replace Pulseaudio by pipewire
systemctl --user daemon-reload

systemctl --user --now disable pulseaudio.service pulseaudio.socket
systemctl --user --now enable pipewire pipewire-pulse
systemctl --user mask pulseaudio
systemctl --user --now enable pipewire-media-session.service


# On bluetooth connection problems
# (sometimes not needed)
sudo apt remove pulseaudio-module-bluetooth
sudo apt-get install libspa-bluetooth
systemctl --user restart pipewire.service # restarts pipewire
