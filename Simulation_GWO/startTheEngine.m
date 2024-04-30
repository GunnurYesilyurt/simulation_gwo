function DSSObj = startTheEngine()
DSSObj = actxserver('OpenDSSEngine.DSS');
if ~DSSObj.Start(0)
    Disp('Unable to start the opendss engine');
    return;
end
end