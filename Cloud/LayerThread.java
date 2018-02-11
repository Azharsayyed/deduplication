package com;
public class LayerThread extends Thread
{
	POD server;
public LayerThread(POD server){
	this.server=server;
	start();
}
public void run(){
	server.start();
}
}