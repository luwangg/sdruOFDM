function [ hPreambleDemod, hDataDemod ] = createOFDMDemods( tx )
% createOFDMDemods: Create demodulator blocks from transmitter input
% structure
    hDataDemod = OFDMDemodulator(...
        'CyclicPrefixLength',   tx.hDataDemod.CyclicPrefixLength,...
        'FFTLength' ,           tx.hDataDemod.FFTLength,...
        'NumGuardBandCarriers', tx.hDataDemod.NumGuardBandCarriers,...
        'NumSymbols',           tx.hDataDemod.NumSymbols,...
        'PilotOutputPort',      tx.hDataDemod.PilotOutputPort,...
        'PilotCarrierIndices',  tx.hDataDemod.PilotCarrierIndices,...
        'RemoveDCCarrier',      tx.hDataDemod.RemoveDCCarrier);
    hPreambleDemod = OFDMDemodulator(...
        'NumGuardBandCarriers', tx.hPreambleDemod.NumGuardBandCarriers,...
        'CyclicPrefixLength',   tx.hPreambleDemod.CyclicPrefixLength,...
        'FFTLength' ,           tx.hPreambleDemod.FFTLength,...
        'NumSymbols',           1);
end

