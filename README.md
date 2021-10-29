## SyncPOD

Syncs a local folder with your iPod

for Linux and \*BSD

### Author & Copyright

© 2003 Armin Obersteiner

### Description

```
This script syncs a local directory with your iPod. If the directory is larger than the space on your iPod you can sync this larger directory with a master playlist. As alternative you can sync just a bunch of playlists.
By typing "SyncPOD" the sync is done ... nothing more nothing less. Configuration is done with a config file ("~/.ipod/config").

You need a FAT32 iPod, Linux with IEEE1394 harddisks support (\*BSD may work too) and Perl5 to do that.

Everything is done in Perl, not just a C wrapper. Nothing is OS specific. The iPod needs to be mounted somewhere, if you can manage that, you have won...
```

### License & Disclaimer

```
This library is released under the GNU General Public License Version 2 as published by the Free Software Foundation, This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See either the GNU General Public License or the Artistic License for more details.
You should also have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.

If you use this library in a commercial enterprise, you are invited, but not required, to pay what you feel is a reasonable fee to the author, who can be contacted at <armin at xos dot net>.
```

### Things to remember

```
This is a one-way sync to your iPod, which means files are deleted from the drive if they don't exist in the syncdir or playlists.
Your MP3 files have to be uniquely named, even if they are in subdirectories.
Some characters in the MP3 names are not possible: "?" is one of them. (FAT32 problem ?)
The master playlist has to point to files within your SYNCDIR.
Always read the README
```

### Changes

```
0.68
2003 05 05
-n option: With this option mp3 file names are checked for safety. (This is very strict right now. But I got skips on my iPod with names containing apostrophes, etc. This may as well be because of the UTF-8 conversion. Well it's optional anyway.)

0.66
2003 01 12
Now we delete before we copy to the iPod, this can be handy on low disk space
Minor annoyances fixed

0.64
2002 10 04
Bug fix: album order can now handle non numeric input like: "5/13"

0.63
2002 09 29
Bug fix: file escaping (now using: File::Copy instead of Shell)
New feature: availiable space check on syncing
New feature: just playlist sync (without syncdir or master playlist)

0.60
2002 09 29
New feature: on the fly playlist creation with search patterns as arguments (SyncPOD -h for more)
New feature: now creating filesystem structure on my own
New feature: ask before deletion (DELETEASK parameter in config file)

0.51
2002 09 25
Initial public BETA release
```

### History

```
I bought my MAC iPod at christmas 2001. I wanted linux support since that time ...
In january I hacked a script which could parse the iTunesDB and iTunesEQPresets file. A lot of information was from Jason's page, the rest from hexdumps ;-) Joe (Ephpod) also helped me with some issues.
In february a script was written to actually write an iTunesDB file. In order not to ruin my mp3 player (I use it every day) and the missing possibility to mount the iPod with Linux I never tried the file. I was also told, that the iPod ignores the iTunesEQPresets file.
A new firmware makes the iPod to use the iTunesEQPresets, so this work was not useless after all.
Some time later at the end of September someone wrote me about using the Windows iPod with Linux and Ephpod, so I tried my script from february and it worked out of the dusty box (with a one line fix).
I tried to cleanup and release it as fast as possible in oder to share it with the open source community...
```
