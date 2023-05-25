import speech_recognition as sr
import sys

r = sr.Recognizer()

with sr.AudioFile(sys.argv[1]) as source:
    audio_text = r.record(source=source)
    text = r.recognize_google(audio_text)
    print(text)
