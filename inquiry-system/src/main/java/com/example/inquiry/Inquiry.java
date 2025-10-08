package com.example.inquiry;

import jakarta.servlet.http.Part;

public class Inquiry { 
    private String name; 
    private String email; 
    private String content; 
    private String attachmentFileName; 
    private String status; 
    private int qqakey;
    private Part filenamePart;
    private String aaa;
    public Inquiry() { 
        this.status = "新規"; 
    } 
 
    public String getName() { 
        return name; 
    } 
 
    public void setName(String name) { 
        this.name = name; 
    } 
 
    public String getEmail() { 
        return email; 
    } 
 
    public void setEmail(String email) { 
        this.email = email; 
    } 
 
    public String getContent() { 
        return content; 
    } 
 
    public void setContent(String content) { 
        this.content = content; 
    } 
 
    public String getAttachmentFileName() { 
        return attachmentFileName; 
    } 
 
    public void setAttachmentFileName(String attachmentFileName) { 
        this.attachmentFileName = attachmentFileName;
    }
    public String getStatus() { 
        return status; 
    } 
    
    public void setStatus(String status) { 
        this.status = status; 
    } 
    public int getQqaKey() { 
        return qqakey; 
    } 
 
    public void setQqaKey(int qqakey) { 
        this.qqakey = qqakey; 
    } 
    public void setFileNamePart(Part filenamePart) {
    	this.filenamePart = filenamePart;
    }
    public Part getFileNamePart(){
    	return filenamePart;
    }
    public void setAaa(String aaa) {
    	this.aaa = aaa;
    }
    public String getAaa(){
    	return aaa;
    }
}