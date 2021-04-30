# docker-audio

This kit just has a few files to glue together https://github.com/oguzhan-yilmaz/pyCrossfade
as a container.

# Use

Clone this. Have docker installed. 

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
