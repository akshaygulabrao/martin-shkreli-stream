HOST=root@63.141.33.31
PORT=22090

scp  -P $PORT -i ~/.ssh/id_ed25519 $HOST:/root/audio.vtt audios/stream_20250716.vtt