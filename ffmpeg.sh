ffmpeg -re -y -i blue.jpg -i video2.mp4 -i video2.mp4 -i abantostudio.jpg -filter_complex "[3:v]scale=150:90[logo];[1][2]alphamerge[alf];[alf]scale=1280:720[alfa2];[0][alfa2]overlay=[rt];[rt][logo]overlay,drawbox=5:645:1280:200:color=black@0.5:t=fill, drawtext=textfile=mytext.txt:reload=1:x=10:y=10:fontfile=Italic.ttf:y=h-line_h-10:x=w-mod(w*t/25\,2400*(w+tw)/w):fontcolor=white:fontsize=40:shadowx=2:shadowy=2,drawtext=lipiexpand.TTF: text='%{localtime\:%T}': fontcolor=white@0.8:fontsize=40:box=1: boxcolor=black: boxborderw=21: x=7: y=668"  -c:a copy -ac 1 -ar 44100 -b:a 96k -vcodec libx264 -pix_fmt yuv420p -tune zerolatency -f flv -maxrate 2000k -preset veryfast  rtmp://localhost:1935/live/rfBd56ti2SMtYvSgD5xAV0YU99zampta7Z7S575KLkIZ9PYk -y

