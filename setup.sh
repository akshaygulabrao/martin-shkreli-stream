apt update
apt install ffmpeg -y
pip install openai-whisper
pip install yt-dlp

yt-dlp https://www.youtube.com/watch?v=LSv0ei2ainU --progress -x --audio-format wav --audio-quality 16k --output audio
whisper audio.wav --model medium --language en --word_timestamps True -f vtt
    