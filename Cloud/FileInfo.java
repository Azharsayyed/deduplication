package com;
import java.util.Comparator;
public class FileInfo implements Comparator<FileInfo>{
	String filename;
	String file_id;
	String sha;
	String refrence_id;
	String start_chunk_id;
	int num_chunk;
	long file_size;
	int status;
	Object row[][];
	int read,write;
public FileInfo(){
}
public FileInfo(String filename,String file_id,String sha,String refrence_id,String start_chunk_id,int num_chunk,long file_size,int status,Object row[][]){
	this.filename = filename;
	this.file_id = file_id;
	this.sha = sha;
	this.refrence_id = refrence_id;
	this.start_chunk_id = start_chunk_id;
	this.num_chunk = num_chunk;
	this.file_size = file_size;
	this.status = status;
	this.row = row;
}
public int compare(FileInfo p1,FileInfo p2){
	int s1 = p1.read;
    int s2 = p2.read;
	if (s1 == s2)
		return 0;
    else if (s1 > s2)
    	return 1;
    else
		return -1;
}
}