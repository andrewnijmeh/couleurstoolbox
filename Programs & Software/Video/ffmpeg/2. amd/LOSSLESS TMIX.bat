ffmpeg -threads 9 -i %1 -vf tmix=frames=8:weights="1" -c:v h264_amf -profile:v high -preset fast -rc vbr_hq -qmin 0 -qmax 1 -cq 51  -r 60 "%~dpn1 (Resampled).mp4"