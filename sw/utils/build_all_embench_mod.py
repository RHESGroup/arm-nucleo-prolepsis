import os
import sys

prolepsis_path = "/media/sf_Shared/prolepsis"
nucleo_path = "/media/sf_Shared/nucleo"

benchmarks = [
"aha-mont64",
"crc32",
"cubic",
"edn",
"huffbench",
"matmult-int",
"md5sum",
"minver",
"nbody",
"nettle-aes",
"nettle-sha256",
"nsichneu",
"picojpeg",
"primecount",
"qrduino",
"sglib-combined",
"slre",
"st",
"statemate",
"tarfind",
"ud",
"wikisort",
]

for bench in benchmarks:
	os.chdir(prolepsis_path+"/arm-cfi-tool/arm-benchmarks/src/"+bench)
	os.system("cp "+bench+"_mod.s "+nucleo_path+"/sw/apps/embench_mod/"+bench+"_mod")
	os.chdir(nucleo_path+"/sw/build")
	os.system("make "+bench+"_mod.elf")
	print(bench)
