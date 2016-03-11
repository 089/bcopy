# bcopy

**bcopy** is a bash script which copies one or more files to the same directory and renames them using a defined pattern. It can be used to backup config files easily before you edit them. 

## Installation

During the following steps please replace <path> (e.g. /home/example/.tools) with the directory where you want to "install" **bcopy**

1. `cd <path>`.
1. Download 
	1. using git (recommended)
		- `git clone https://github.com/089/bcopy.git` or 
		- `git@github.com:089/bcopy.git` 
	1. th zip file
		- `wget https://github.com/089/bcopy/archive/master.zip`  
		- Extract the zip: `unzip bcopy-master.zip`
		- Rename the directory: `mv bcopy-master bcopy`
1. Make the script executable: `chmod +x bcopy/bcopy.sh`
1. Create an alias for the script: `echo 'alias bcopy="<path>/bcopy/bcopy.sh"' >> ~/.bashrc`

## Usage
- without alias: `<path>/bcopy.sh file.ext [file2.ext] [file3.ext] [...]`
- with alias: `bcopy file.ext [file2.ext] [file3.ext] [...]`

## Examples (using the alias)
You can **bcopy** a single file
```
bcopy a.txt 

copy a.txt ==> a.txt.2016-03-11-10-21-43.backup

```

You can **bcopy** more than one file
```
bcopy b.txt c.txt 

copy b.txt ==> b.txt.2016-03-11-10-22-48.backup
copy c.txt ==> c.txt.2016-03-11-10-22-48.backup

```

You can **bcopy** wildcards. 
```
bcopy *.md

copy e.md ==> e.md.2016-03-11-10-25-36.backup
copy f.md ==> f.md.2016-03-11-10-25-36.backup
copy g.md ==> g.md.2016-03-11-10-25-36.backup

```

You can **bcopy** mixed statements.
```
bcopy *.md a.txt *.num

copy e.md ==> e.md.2016-03-11-10-27-28.backup
copy f.md ==> f.md.2016-03-11-10-27-28.backup
copy g.md ==> g.md.2016-03-11-10-27-28.backup
copy a.txt ==> a.txt.2016-03-11-10-27-28.backup
copy 1.num ==> 1.num.2016-03-11-10-27-28.backup
copy 2.num ==> 2.num.2016-03-11-10-27-28.backup
copy 3.num ==> 3.num.2016-03-11-10-27-28.backup

```

## Bugs and feature requests
Do you have a bug or a feature request? Please first search for existing and closed issues. If your problem or idea is not addressed yet, [please open a new issue](https://github.com/089/bcopy/issues/new).

## License
Code and documentation released under [GPL 3.0](https://github.com/089/bcopy/blob/master/LICENSE)
