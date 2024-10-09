function [S f t] = spectrogram(signal, fs, window_size)
	n = length(signal);
    nr_windows = floor(n / window_size);

    S = zeros(window_size, nr_windows);
    f = (0 : window_size - 1)' * fs / (2 * window_size);
    t = (0 : nr_windows - 1)' * window_size / fs;

    for i = 1 : nr_windows
        window = signal(((i - 1) * window_size + 1) : (i * window_size));
        hann_window = hanning(window_size) .* window;
        fft_window = fft(hann_window, 2 * window_size);
        fft_window = fft_window(1 : window_size);
        S(:, i) = abs(fft_window);
    endfor
endfunction

