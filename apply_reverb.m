function signal_fin = apply_reverb(signal, impulse_response)
  impulse_mono = stereo_to_mono(impulse_response);

  conv_signal = fftconv(impulse_mono, signal);

  signal_fin = conv_signal / max(abs(conv_signal));
endfunction

