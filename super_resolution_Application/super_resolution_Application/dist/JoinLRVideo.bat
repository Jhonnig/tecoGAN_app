del outpu.mp4
ffmpeg -i %1 -i %2 -filter_complex  "nullsrc=size=640x240 [base]; [0:v] setpts=PTS-STARTPTS, scale=320x240 [left]; [1:v] setpts=PTS-STARTPTS, scale=320x240 [right]; [base][left] overlay=shortest=1 [tmp1]; [tmp1][right] overlay=shortest=1:x=320"^
   output.mp4