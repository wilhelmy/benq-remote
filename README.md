A remote control for BenQ projectors via Ethernet.

Confirmed working with

* MP626
* LU935ST

Edit the script and add your projector's IP.
Then run as "./send.sh on" or "./send.sh" for interactive mode.

"on" and "off" were created by sniffing the communication of the flash UI with
the projector using wireshark. In case your projector uses different codes, 
feel free to open a pull request.

The main purpose of this repository is to document these hex codes in public, not to brag about the cool shell script, which really doesn't do all that much other than sending a TCP packet with a fixed payload for on or off to the projector and hexdumping the response. Since I don't have a projector but rather hacked this together one afternoon, I'm hereby crowdsourcing maintainership. Have fun!

Dependencies: xxd for hexing
