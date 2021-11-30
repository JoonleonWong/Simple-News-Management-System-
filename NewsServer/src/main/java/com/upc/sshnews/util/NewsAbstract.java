package com.upc.sshnews.util;

import java.rmi.Remote;
import java.rmi.RemoteException;

public interface NewsAbstract extends Remote {
    public String getAbstract(String content) throws RemoteException;
}
