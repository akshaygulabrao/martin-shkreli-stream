HOST=root@216.249.100.66
PORT=10787

scp  -P $PORT -i ~/.ssh/id_ed25519 $HOST:/root/audio.vtt audios/stream_20250717.vtt
scp  -P $PORT -i ~/.ssh/id_ed25519 $HOST:/root/audio.wav audios/stream_20250717.wav
