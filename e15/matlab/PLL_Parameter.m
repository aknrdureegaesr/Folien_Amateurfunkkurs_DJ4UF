%% PLL Parameter
%% Analoge PLL

%% get KPhi
fs = 100000;

% KPhi = 0.5/(pi/2) * 2 * pi;
f1 = 400;
f2 = 20;

nkamm = 2*fs / f1;

% KPhi des Multiplizierers bestimmen
dPhi_1 = -0.008725;1
dPhi_359= 0.008725;
KPhi = dPhi_359 - dPhi_1 * 180;     % ~pi/2




%% S5 Woblen

fs = 10*fs;

KVCO = 8000 *2* pi;
w0 = 100 * 2 * pi;


fref = 100;

wn   = 2*pi*500;
d = 1/sqrt(2);

Tau1_lag= KPhi*KVCO/wn^2;
Tau2_lag= 2*d /wn -1/(KPhi * KVCO);

Tau1_pi = KPhi*KVCO/wn^2;
Tau2_pi = 2*d /wn;

nkamm = fs / fref;



%% Digitale PLL


KPhi = 0.5/(pi/2) * 2 * pi;
KVCO = 100 *2* pi;

fref = 100;
wn   = 2*pi*fref;
fn   = 100;
wn   = 2*pi*fn;
d = 1/sqrt(2);

Tau1_lag= KPhi*KVCO/wn^2;
Tau2_lag= 2*d /wn -1/(KPhi * KVCO);

Tau1_pi = KPhi*KVCO/wn^2;
Tau2_pi = 2*d /wn;

nkamm = fs / fref;

fs = fs/10;
