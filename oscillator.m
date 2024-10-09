function x = oscillator(freq, fs, dur, A, D, S, R)
    pas = 1 / fs;
    t = (0 : pas : dur)';
    t = t(1 : end - 1);
    sin_wave = sin(2 * pi * freq * t);

    total_samples = length(t);
    attack_samples = floor(A * fs);
    decay_samples = floor(D * fs);
    release_samples = floor(R * fs);
    sustain_samples = total_samples - attack_samples - decay_samples - release_samples;

    pas = 1 / attack_samples;
    attack_env = (0 : pas : 1)';
    attack_env = attack_env(1 : end -1);

    %decay_env = ones(decay_samples, 1);
    %decay_rate = (1 - S) / decay_samples;
    %for i = 1 : decay_samples
    %    decay_env(i) = 1 - i * decay_rate;
    %endfor
    %pas = (S - 1) / decay_samples;
    decay_env = linspace(1, S, decay_samples)';
    %decay_env = (1 : pas : S)';
    %decay_env = decay_env(1 : end - 1)

    sustain_env = S * ones(sustain_samples, 1);

    %release_env = S * ones(release_samples, 1);
    %release_rate = S / release_samples;
    %for i = 1 : release_samples
    %    release_env(i) = S - i * release_rate;
    %endfor
    %pas = - S / release_samples;
    release_env = linspace(S, 0, release_samples)';
    %release_env = (S : pas : 0)';
    %release_env = release_env(2 : end);

    final_env = [attack_env; decay_env; sustain_env; release_env];

    x = sin_wave .* final_env;
endfunction

