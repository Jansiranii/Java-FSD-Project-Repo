package com.locker;

import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.List;

public class FileOperations {

	/**
	 * Method for get all filenames in the given folder
	 */
	public static List<String> fetchAllFiles(String folderPath){
		
		// Create new list to store filenames
		List<String> fileNames = new ArrayList<String>();
       
		//Create new file
		File file = new File(folderPath);
		
		File[] fileList = file.listFiles();
		
		
		for(File f: fileList) {
			fileNames.add(f.getName());
		}
		
		//Return the list
		return fileNames;
	}
	
	/**
	 * Create a new file and add content in that.
	 */
	public static String createNewFile(String folderPath, String fileName, List<String> content) {
		
		String message;
		try {
			File file = new File(folderPath, fileName);
			if(file.createNewFile()) {
				message ="File created in the folder";
				FileWriter fileWriter = new FileWriter(file);
				
				// Write data in file
				for (String data : content) {
					fileWriter.write(data+"\n");
				}
				fileWriter.close();
 			}
			else {
				message = "File already exist in the folder";
			}
			
		} 
		catch (Exception e) {
			message = "Error occured while creating the file";
		}
		return message;
   }
	
	/**
	 * Delete the file name
	 */
	public static String deleteFile(String folderpath, String fileName) {
		File file = new File(folderpath+"\\"+fileName);
		String message = null;
		try {
			//Check file exist or not
			if(file.exists()) {
				//Delete file
				if(file.delete()) 
					message ="File deleted successfully";
				}
				else {
					message = "File doesn't exist in the folder";
				}
		}
		catch(Exception ex) {
			message = "Error occured while deleting the file";
		}
		return message;
		
	}
	
	/**
	 * Search file from the folder
	 */
	public static String searchFile(String folderpath, String fileName) {
		File file = new File(folderpath+"\\"+fileName);
		String message = null;
		try {
			if(file.exists()) {
				message ="File exist in the folder";				
			}
			else {
				message = "File doesn't exist in the folder";
			}
		}
		catch(Exception ex) {
			message = "Error occured while searching for the file";
		}
		return message;
		
	}
	
}
