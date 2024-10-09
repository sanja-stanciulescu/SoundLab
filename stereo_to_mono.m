function mono = stereo_to_mono(stereo)
    [n m] = size(stereo);
    mono = zeros(n, 1);
    mono = stereo * ones(m, 1) / m;
  % Normalize
  mono = mono / max(abs(mono));
endfunction

