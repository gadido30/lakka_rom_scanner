#!/bin/bash

function create_new_list (){
	core=$(echo $1 | cut -d'|' -f 2)
    	system_name=$(echo $1 | cut -d'|' -f 1)
   	./create_playlist.sh "$root_folder/$folder/*" "$core" "$system_name" "$system_name.lpl" "/home/guru/playlists/"
	#echo "$root_folder/$folder/*" "$core" "$system_name" "$system_name.lpl" "/home/guru/playlists/"
	#"/storage/playlists/"

}


function create_new_list_scummvm (){
        core=$(echo $1 | cut -d'|' -f 2)
        system_name=$(echo $1 | cut -d'|' -f 1)
        ./create_playlist_scummvm.sh "$root_folder/$folder/*" "$core" "$system_name" "$system_name.lpl" "/home/guru/playlists/"
        #echo "$root_folder/$folder/*" "$core" "$system_name" "$system_name.lpl" "/home/guru/playlists/"
        #"/storage/playlists/"

}


shopt -s nocasematch
root_folder="[Rom Folder]"
system=""
for folder in $(ls $root_folder); do
	if [[ -d "$root_folder/"$folder ]]; then	    
		case $folder in "Atari2600")
			system="Atari - 2600|/tmp/cores/stella_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "Atari7800")
			system="Atari - 7800|/tmp/cores/prosystem_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "AtariJaguar")
			system="Atari - Jaguar|/tmp/cores/virtualjaguar_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "lynx")
			system="Atari - Lynx|/tmp/cores/handy_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "AtariST")
			system="Atari - ST|/tmp/cores/hatari_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "wswanc")
			system="Bandai - WonderSwan Color|/tmp/cores/mednafen_wswan_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "wswan")
			system="Bandai - WonderSwan|/tmp/cores/mednafen_wswan_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "CaveStory")
			system="Cave Story|/tmp/cores/nxengine_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "prboom")
			system="DOOM|/tmp/cores/prboom_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "FBA")
			system="FB Alpha - Arcade Games|/tmp/cores/fbalpha_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "fba_libretro")
			system="FB Alpha Libretro - Arcade Games|/tmp/cores/fbalpha_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "vectrex")
			system="GCE - Vectrex|/tmp/cores/vecx_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "Lutro")
			system="Lutro|/tmp/cores/lutro_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "MAME")
			system="MAME|/tmp/cores/mame2003_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "msx2")
			system="Microsoft - MSX2|/tmp/cores/bluemsx_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "msx1")
			system="Microsoft - MSX1|/tmp/cores/bluemsx_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "msx")
			system="Microsoft - MSX|/tmp/cores/bluemsx_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "supergrafx")
			system="NEC - PC Engine SuperGrafx|/tmp/cores/mednafen_supergrafx_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "pcengine")
			system="NEC - PC Engine - TurboGrafx 16|/tmp/cores/mednafen_pce_fast_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "pcenginecd")
			system="NEC - PC Engine - TurboGrafx 16|/tmp/cores/mednafen_pce_fast_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "gba")
			system="Nintendo - Game Boy Advance|/tmp/cores/mgba_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "gbc")
			system="Nintendo - Game Boy Color|/tmp/cores/gambatte_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "gb")
			system="Nintendo - Game Boy|/tmp/cores/gambatte_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "n64")
			system="Nintendo - Nintendo 64|/tmp/cores/mupen64plus_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "nes")
			system="Nintendo - Nintendo Entertainment System|/tmp/cores/nestopia_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "NintendoSatellaview")
			system="Nintendo - Satellaview|/tmp/cores/snes9x2010_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "Snes")
			system="Nintendo - Super Nintendo Entertainment System|/tmp/cores/snes9x2010_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "virtualboy")
			system="Nintendo - Virtual Boy|/tmp/cores/mednafen_vb_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "Quake1")
			system="Quake1|/tmp/cores/tyrquake_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "ScummVM")
			system="ScummVM|/tmp/cores/scummvm_libretro.so"
			create_new_list_scummvm "$system"
		esac
		case $folder in "Sega32X")
			system="Sega - 32X|/tmp/cores/picodrive_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "gamegear")
			system="Sega - Game Gear|/tmp/cores/genesis_plus_gx_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "mastersystem")
			system="Sega - Master System - Mark III|/tmp/cores/genesis_plus_gx_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "megadrive")
			system="Sega - Mega Drive - Genesis|/tmp/cores/genesis_plus_gx_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "segacd")
			system="Sega - PICO|/tmp/cores/picodrive_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "sg1000")
			system="Sega - SG-1000|/tmp/cores/genesis_plus_gx_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "zxspectrum")
			system="Sinclair - ZX Spectrum +3|/tmp/cores/fuse_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "zx81")
			system="Sinclair - ZX81|/tmp/cores/fuse_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "ngpc")
			system="SNK - Neo Geo Pocket Color|/tmp/cores/mednafen_ngp_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "ngp")
			system="SNK - Neo Geo Pocket|/tmp/cores/mednafen_ngp_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "neogeo")
			system="SNK - Neo Geo Pocket|/tmp/cores/mednafen_ngp_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "SonyPlayStationPortable")
			system="Sony - PlayStation Portable|/tmp/cores/ppsspp_libretro.so"
			create_new_list "$system"
		esac
		case $folder in "psx")
			system="Sony - PlayStation|/tmp/cores/pcsx_rearmed_libretro.so"
			create_new_list "$system"
		esac
    fi
done

