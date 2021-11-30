package com.upc.sshnews.util;

import java.rmi.RemoteException;

public class NewsAbstractImp implements NewsAbstract{

    public NewsAbstractImp()throws RemoteException{}
    @Override
    public String getAbstract(String content) throws RemoteException {
        return content.substring(0,6);
    }
}
