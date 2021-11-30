package com.upc.sshnews.util;


import java.rmi.Remote;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.rmi.server.UnicastRemoteObject;

public class Main {
    public static void main(String [] args) throws RemoteException {
        NewsAbstractImp newsAbstractImp = new NewsAbstractImp();

        /*使用特定端口导出远程对象，以便能够接受传入的调用*/
        NewsAbstract newsAbstract = (NewsAbstract) UnicastRemoteObject.exportObject((Remote) newsAbstractImp,0);

        /*创建并导出接受指定端口请求的本地主机上的Registry实例*/
        /*Register是简单远程注册表的一个远程接口*/
        Registry registry = LocateRegistry.createRegistry(2018);
        registry.rebind("NewsAbstract",newsAbstract);
        System.out.println("新闻摘要服务启动");
    }
}
