#!/bin/bash

# Install httpd server
yum -y install httpd

# Enable the httpd server to start at boot
systemctl enable httpd


# Create our index file
cat > /var/www/html/index.html <<- "EOF"
<html>
<br /><br />                             
                                                             
                                          __  __   ___   .--.
                                         |  |/  `.'   `. |__|
                                         |   .-.  .-.   '.--.
                                    __   |  |  |  |  |  ||  |
                                 .:--.'. |  |  |  |  |  ||  |
                                / |   \ ||  |  |  |  |  ||  |
                                `" __ | ||  |  |  |  |  ||  |
                                 .'.''| ||__|  |__|  |__||__|
                                / /   | |_                   
                                \ \._,\ '/                   
                                 `--'  `"                    

                               .-'''-.                                              .-'''-.               
                               '   _    \                                           '   _    \             
                             /   /` '.   \  __  __   ___                     .--. /   /` '.   \    _..._   
                            .   |     \  ' |  |/  `.'   `.                   |__|.   |     \  '  .'     '. 
                         .| |   '      |  '|   .-.  .-.   '              .|  .--.|   '      |  '.   .-.   .
    __                 .' |_\    \     / / |  |  |  |  |  |    __      .' |_ |  |\    \     / / |  '   '  |
 .:--.'.     _    _  .'     |`.   ` ..' /  |  |  |  |  |  | .:--.'.  .'     ||  | `.   ` ..' /  |  |   |  |
/ |   \ |   | '  / |'--.  .-'   '-...-'`   |  |  |  |  |  |/ |   \ |'--.  .-'|  |    '-...-'`   |  |   |  |
`" __ | |  .' | .' |   |  |                |  |  |  |  |  |`" __ | |   |  |  |  |               |  |   |  |
 .'.''| |  /  | /  |   |  |                |__|  |__|  |__| .'.''| |   |  |  |__|               |  |   |  |
/ /   | |_|   `'.  |   |  '.'                              / /   | |_  |  '.'                   |  |   |  |
\ \._,\ '/'   .'|  '/  |   /                               \ \._,\ '/  |   /                    |  |   |  |
 `--'  `"  `-'  `--'   `'-'                                 `--'  `"   `'-'                     '--'   '--'
<br />
</html>
EOF


# Re-Start the service
systemctl restart httpd


## Edit the MOTD to display something nice
>>/etc/update-motd.d/30-banner
cat > /etc/update-motd.d/30-banner <<- "EOF"
                            
                                                             
                                          __  __   ___   .--.
                                         |  |/  `.'   `. |__|
                                         |   .-.  .-.   '.--.
                                    __   |  |  |  |  |  ||  |
                                 .:--.'. |  |  |  |  |  ||  |
                                / |   \ ||  |  |  |  |  ||  |
                                `" __ | ||  |  |  |  |  ||  |
                                 .'.''| ||__|  |__|  |__||__|
                                / /   | |_                   
                                \ \._,\ '/                   
                                 `--'  `"                    

                               .-'''-.                                              .-'''-.               
                               '   _    \                                           '   _    \             
                             /   /` '.   \  __  __   ___                     .--. /   /` '.   \    _..._   
                            .   |     \  ' |  |/  `.'   `.                   |__|.   |     \  '  .'     '. 
                         .| |   '      |  '|   .-.  .-.   '              .|  .--.|   '      |  '.   .-.   .
    __                 .' |_\    \     / / |  |  |  |  |  |    __      .' |_ |  |\    \     / / |  '   '  |
 .:--.'.     _    _  .'     |`.   ` ..' /  |  |  |  |  |  | .:--.'.  .'     ||  | `.   ` ..' /  |  |   |  |
/ |   \ |   | '  / |'--.  .-'   '-...-'`   |  |  |  |  |  |/ |   \ |'--.  .-'|  |    '-...-'`   |  |   |  |
`" __ | |  .' | .' |   |  |                |  |  |  |  |  |`" __ | |   |  |  |  |               |  |   |  |
 .'.''| |  /  | /  |   |  |                |__|  |__|  |__| .'.''| |   |  |  |__|               |  |   |  |
/ /   | |_|   `'.  |   |  '.'                              / /   | |_  |  '.'                   |  |   |  |
\ \._,\ '/'   .'|  '/  |   /                               \ \._,\ '/  |   /                    |  |   |  |
 `--'  `"  `-'  `--'   `'-'                                 `--'  `"   `'-'                     '--'   '--'

EOF