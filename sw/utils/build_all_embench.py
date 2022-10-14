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
"wikisort"
]

os.system("rm -rf "+prolepsis_path+"/arm-cfi-tool/arm-benchmarks")
os.system("mkdir "+prolepsis_path+"/arm-cfi-tool/arm-benchmarks")
os.system("mkdir "+prolepsis_path+"/arm-cfi-tool/arm-benchmarks/src")

for bench in benchmarks:
	os.chdir(nucleo_path+"/sw/build")
	os.system("make "+bench+".elf")
	os.chdir("apps/embench/"+bench)
	os.system("cp "+bench+".elf "+bench)	
	os.system("mkdir "+prolepsis_path+"/arm-cfi-tool/arm-benchmarks/src/"+bench)
	os.system("mv "+bench+" "+prolepsis_path+"/arm-cfi-tool/arm-benchmarks/src/"+bench+"/")
	print(bench)
