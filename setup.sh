apt update
apt install ffmpeg -y
pip install openai-whisper
pip install yt-dlp

URL="https://www.youtube.com/watch?v=0J5dI7O2w30"

yt-dlp $URL --progress -x --audio-format wav --audio-quality 16k --output audio
whisper audio.wav --model medium --language en --word_timestamps True -f vtt