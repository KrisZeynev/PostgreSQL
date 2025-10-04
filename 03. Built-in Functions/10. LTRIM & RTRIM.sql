SELECT 
    LTRIM(peaks.peak_name, 'M') AS left_trim,
    RTRIM(peaks.peak_name, 'm') AS right_trim
From peaks;