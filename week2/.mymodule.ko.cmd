cmd_/home/lsh/study/os2019/week2/mymodule.ko := ld -r -m elf_x86_64  -z max-page-size=0x200000 -T ./scripts/module-common.lds  --build-id  -o /home/lsh/study/os2019/week2/mymodule.ko /home/lsh/study/os2019/week2/mymodule.o /home/lsh/study/os2019/week2/mymodule.mod.o ;  true
