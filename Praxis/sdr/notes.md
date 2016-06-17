# Einführung Klasse E

* SDR:
    * Ant -> LP -> A/D -> DSP
    * DSP -> D/A -> LP -> Ant
* RTL2832U Chipsatz
    * 8-bit I/Q-samples
    * Sample Rate bis 3.2 MS/s -> bis 2.56 MS/s ohne Loss
        * wir verwenden 2.4MS/s - Ideen warum?
          -> 2.56/0.048 = 53.3
    * frequency range abhängig vom verwendeten Tuner, specs:
        * dmesg
        * http://sdr.osmocom.org/trac/wiki/rtl-sdr
* gqrx - Input Rate 600k oder 1200k

# Einführung Klasse A

* Wdh. Intro Klasse E
* GR vorführen
    * Aufbau gnuradio-companion
    * Help -> Types
    * QT
* TODO Signale mischen, verstärken, ansehen

# Modeling Klasse A

* TODO Converter
* AM-Beispiel
* FM-Beispiel

# Aufgaben Klasse A

* RTL-SDR Source -> QT GUI Waterfall Sink
    * samp_rate = 2.4M
    * qrg = 430M
* NBFM RX
    * qrg = 430.2M
    * RTL-SDR Source (2.4M)
      -> Rational Resampler (1/5)
      -> NBFM Receive (1/10)
      -> Audio Sink (48k)
* Umbau zu WBFM RX
