# docker-audio

This kit just has a few files to glue together https://github.com/oguzhan-yilmaz/pyCrossfade
as a container.

# Use

Clone this repo, and include submodules, which will grab the above git url.

```
git clone --recurse-submodules https://github.com/digitalsushi/docker-audio.git
```

Have docker installed. 

Run 

```
./build.sh
```

and it will build a container that is mostly ready for you.

To access the running container, run the

```
./session.sh
```

and then

```
cd /app
./init.sh
```

After that, you can copy two mp3 files you like into the demos directory, named 01.mp3 and 02.mp3. 

Run 
```
cd /app/pyCrossfade
./experiment1.py
```

and the two files will be crossfaded together using the clever work of the pyCrossfade project.

The docker container has the app folder from this directory mapped to it, so you can just drag the files
into the demos folder from your computer's desktop and the script is ready to run.

# Regenerating songs

Remove the datafiles in /app/pyCrossfade/pycrossfade\_annotations if you replace the 01.mp3 and 02.mp3 songs.
By this point you have probably changed the script on your own, but do keep it in mind it caches the answers
and you'd get the wrong results for subsequent crossfades of the same filename and different songs.
