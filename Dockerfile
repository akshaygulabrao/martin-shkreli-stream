FROM runpod/pytorch:2.2.0-py3.10-cuda12.1.1-devel-ubuntu22.04

RUN apt update && \
    pip install --no-cache-dir openai-whisper

WORKDIR /workspace

COPY audio.wav /workspace/audio.wav

CMD ["whisper audio.wav --model medium --language en --word_timestamps True -f vtt"]
