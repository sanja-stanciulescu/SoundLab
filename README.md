# SoundLab

The goal of this program is audio signal processing. To achieve this, the following functionalities have been implemented:

* Storing an analog signal
* Converting a stereo signal to mono
* Visualizing sound using a spectrogram
* Creating artificial sounds using an oscillator
* Applying filters to sound (as in music production)

### Storing an Analog Signal
Analog signals are continuous, while digital signals are discrete. To store an analog signal, it must be converted to a digital signal through a process called analog-to-digital conversion. This process involves two main steps:
* Sampling: The analog signal is sampled at regular intervals. The frequency at which sampling occurs is called the sampling rate, measured in Hertz (Hz).
 Quantization: The sampled signal is quantized, meaning it is divided into discrete levels. The number of levels is determined by the bit depth, measured in bits.

### Converting a Stereo Signal to Mono
Audio can be stored in two main formats: stereo and mono.
* Stereo: Contains two channels: left and right. The left channel is associated with the left speaker, and the right channel with the right speaker.
* Mono: Contains a single channel, which is played through both speakers. To convert stereo to mono, the average of all values in each row of the stereo signal matrix is computed, and the result is stored in the corresponding row of the column vector for the mono signal.

### Visualizing Sound with a Spectrogram
A spectrogram is a visual representation of the frequency spectrum of a signal over time. It is a 2D graph of frequency versus time, where color represents the amplitude of the signal at a given moment and frequency. The spectrogram.m function is used to generate the spectrogram matrix, frequency vector, and time vector. The steps for calculating the spectrogram are:
* Determine the signal size and calculate the number of windows using the floor function.
* For each window:
** Apply the Hann function (hanning in MATLAB).
** Compute the Fourier Transform of the window with a resolution twice the window size.
** Discard the conjugate part of the Fourier Transform.
* Store the result in the spectrogram matrix.
* Calculate the frequency vector.
* Calculate the time vector.

### Creating Artificial Sounds with an Oscillator
An oscillator is an electronic circuit that produces a periodic, oscillating signal. In the context of audio signal processing, an oscillator generates a sound wave with a specific frequency and amplitude. We consider only the simplest type of oscillator: the sine wave oscillator. 
This oscillator generates a pure sinusoidal signal with a specific frequency and amplitude. The sine wave is the simplest waveform, consisting of a single frequency with no harmonics or overtones.

### Applying Filters to Sound
* Low-pass filter: A filter that allows signals with a frequency lower than a certain cutoff frequency to pass while attenuating signals with frequencies higher than the cutoff. This filter is useful in applications such as audio processing, where high-frequency noise needs to be removed.
* Reverb: The persistence of sound in a space after the original sound has been produced. It is caused by the reflection of sound waves off surfaces in the environment (similar to an echo). Reverb is an important aspect of sound perception, as it can affect the timbre, volume, and spatial characteristics of sound.
