device_alps_imoz7
=================

Lineage OS device tree (IMO Onion Z7, mt6577)

DO NOT USE THIS REPOSITORY!!!! WIP

TRYING TO PORT IT TO ANOTHER DEVICE!!!

README TO BE UPDATED!!!

OLD README AND GUIDE BELOW FROM PREVIOUS FORKED REPO


device_wiko_s8073
========================================
A vérifier :

BoardConfig.mk (partition size may diff)

recorvery.fstab (sdcard 2)

device_s8073.mk (LOCAL_KERNEL lines missing)


Get ready
========================================


initialize repo with cm9 repository:
	
	repo init -u git://github.com/CyanogenMod/android.git -b ics

Now retrieve Wiko Cink SLIM repositories (Should be using local_manifests.xml instead):

	for folder in device kernel vendor;
	do
		mkdir -p $folder/wiko/s8073;
		git clone "http://github.com/Pdroid/android_"$folder"_wiko_s8073.git" -b ics $folder/wiko/s8073;
	done


Now prepare to build

	. build/envsetup.sh
	brunch s8073
	
	
