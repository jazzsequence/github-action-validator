#!/bin/bash
set -euo pipefail

do_ascii() {
echo "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKxdxkkkxxkKNWNNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNOxdo;.. ..'...,c:;;xNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWXk;.  .......',..',...,cooxKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNx:'.    ....''.','';,',,'...,lOXWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWXl.    .....'',,,,,;;,,,'...,;;'.,l0WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWk,     .....',;:cc:;;,,,,,,;cc;,,;;;oXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMK;      .....,:ccccccccllllllllc:;;;,;kWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMK:   ......',,;:ccclllllooddddolc::;,,',xNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMx.  ......'',,;:cccllllooddxxxdoc;;::,'.cXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWd. ........'',;:::cllooodxxxxxxdl:,',;;',xWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMK:  ........'',;;;:cclllodddxxxxddolc,'.''oNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXc  ........',,,;:::::::loodddddxdddooc,..:KWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNl  .......'',;;::;,;::cclloooooododddoc,.,lkNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNl. .........',;::;;::;;,,,;;clllooodooc;;ccdXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWx.....   ....',;;::;,,,,,;:cloooddddooc::cdKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNl.......',,,,,,,;::;;,''..'',;:cloooolcclkNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM0;..............,cl:;,'...',;cloooooolccd0WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWx'.............':llllc:;:::clodxddoolcco0WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNo....'',,,'...,:lodooc::::cldxxxxdolccoKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO,.'',,,,''..';coddooool:;;;:loooolclcoKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMK:.'',,,'..',,;cldddooooooc;',:ccccclcl0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNo..',''.....'';::;;,;:cllc:;,';:::ccccOWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWO,.........  .......,:clc:;,,,,::::::;cdOKXNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNd......  .....'''',;cloo;''',;;;;;;;,.....;clodxkO0KKXNWMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXo.....   ..,;:c:cooddoc:::;;;,,,'',::,.         ....';:coddkKNWMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNd'...... .':loooddoc:coolc:;'..'';ccc'                    ..,:ldO0KNWMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWx..........';::cc:cllooc::,..'',:c:c;.                         ...,:okKNWMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNOdlcll;.    ......',,,,;::ccc::,...',;:::cc.                               ..,cokKNMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWNK0Odl,.            ..........',:cc::,....',;::::l,                                    ..;oO
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN0kl'.                   .......',,;::;;'....',,;;;,,c;                                        .
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNX0ko'.                   .     .....''''''......''',,,'..:,                                         
MMMMMMMMMMMMMMMMMMMMMMMMMMNKko:,..                      ..        ....................  .c,                                         
MMMMMMMMMMMMMMMMMMMMMMMWOl,.                            ..      ...      .........      ,l'                                         
MMMMMMMMMMMMMMMMMMMMWXx:.                               .'                             .:l.                                         
MMMMMMMMMMMMMMMMMMWOc'                                  ';.                            'lc.                                         
MMMMMMMMMMMMMMMMWXo.                                    ':.                            ;o;                                          
MMMMMMMMMMMMMMMNx'                                      .:,                           .cl'                                          
MMMMMMMMMMMMMMMO.                                       .c:.                          'll.                                          
MMMMMMMMMMMMNK0c                                        .:c.                          ;o:.                                          
MMMMMMMMMXkl,..                                         .;l,                         .co,                                           
MMMMMMMMXc                                               ,l:.                        .ll.                                           
MMMMMMMWd.                                               'lc.                        ,oc.                                           
__  ______     ____  ___ _       ________
\ \/ / __ \   / __ \/   | |     / / ____/
 \  / / / /  / / / / /| | | /| / / / __  
 / / /_/ /  / /_/ / ___ | |/ |/ / /_/ /  
/_/\____/  /_____/_/  |_|__/|__/\____/   
                                         
    ____   __  ___________    ____  ____     __  ______  __  __   __    ______ __ ______   ___   ____________________  _   _______
   /  _/  / / / / ____/   |  / __ \/ __ \    \ \/ / __ \/ / / /  / /   /  _/ //_// ____/  /   | / ____/_  __/  _/ __ \/ | / / ___/
   / /   / /_/ / __/ / /| | / /_/ / / / /     \  / / / / / / /  / /    / // ,<  / __/    / /| |/ /     / /  / // / / /  |/ /\__ \ 
 _/ /   / __  / /___/ ___ |/ _, _/ /_/ /      / / /_/ / /_/ /  / /____/ // /| |/ /___   / ___ / /___  / / _/ // /_/ / /|  /___/ / 
/___/  /_/ /_/_____/_/  |_/_/ |_/_____/      /_/\____/\____/  /_____/___/_/ |_/_____/  /_/  |_\____/ /_/ /___/\____/_/ |_//____/  "
}

do_ascii