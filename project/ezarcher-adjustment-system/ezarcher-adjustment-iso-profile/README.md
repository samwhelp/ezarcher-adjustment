

# ezarcher-adjustment-iso-profile

| ISO Build System |
| --- |
| [ezarcher-adjustment-packaging](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-packaging) |
| [ezarcher-adjustment-repository](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-repository) |
| [ezarcher-adjustment-iso-profile](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile) |


## Notice

```
Media current: stdio file, overwriteable
Media status : is blank
Media summary: 0 sessions, 0 data blocks, 0 data, 6570m free
xorriso : FAILURE : -volid: Text too long (39 > 32)
xorriso : aborting : -abort_on 'FAILURE' encountered 'FAILURE'
./steps.sh: Error on line 338: mkarchiso -v -w ./work -o ./out ./ezreleng
make: *** [Makefile:29: build] Error 5
```

profiledef.sh:  `iso_label=` too long

```
iso_label=
```
