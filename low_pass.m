function signal = low_pass(signal, fs, cutoff_freq)
  fft_signal = fft(signal);

  n = length(signal);
  f = (0 : n - 1)' * fs / n;

  mask = ones(n, 1);
  for i = 1 : n
    if f(i) > cutoff_freq
        mask(i) = 0;
    endif
  endfor

  fft_signal_filtered = fft_signal .* mask;
  signal = ifft(fft_signal_filtered);

  signal = signal / max(abs(signal));
endfunction

