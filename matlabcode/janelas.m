N = 100;
janela01 = window(@blackmanharris,N);
janela02 = window(@hamming,N);
janela03 = window(@gausswin,N,2.5);
wvtool(janela01, janela02, janela03);

janela04 = window(@barthannwin,N);
janela05 = window(@bartlett,N);
janela06 = window(@blackman,N);
wvtool(janela04, janela05, janela06);