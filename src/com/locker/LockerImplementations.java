package com.locker;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

public class LockerImplementations {

	   static final String FOLDERLOCATION = "C:\\Users\\JPANNERS\\FSD Course\\Phase 1 Project\\LockedMe Files Details";
	   String fileName;
	   int linesCount;	

		public static void main(String[] args) {
		
		 int proceed = 1;
		do {
			  int option =0;
		      Scanner scanner = new Scanner(System.in);
		    
		     // show menu options
			  menuOption();
			  
			  //Get option from the user
			  System.out.println("Enter your choice");
			  try {
				  option = Integer.parseInt(scanner.nextLine());
				   }
				   catch(Exception ex) {
					   System.out.print("Please enter number, ");
				   }
		      
			  //
			  switch(option){
			  case 1: 
				  getAllFileNames();
				  break;
			  case 2: 
				  createNewFile();
				  break;	
			  case 3: 
				  deleteFile();
				  break;
			  case 4: 
				  searchFile();
				  break;
			  case 5: 
				   System.out.println("Menu ended");
				   System.exit(0);
				   break;
			  default:
			      System.out.println("Invalid choice");
			      break;
			  }
			 
	      } while(proceed>0);
		
		}
		
		/**
		 * Display the menu option
		 */
		public static void menuOption() {
			  System.out.println("=============================================================");	  
			  System.out.println("\t\t Company Lockers Pvt. Ltd ");
			  System.out.println("\t\t\tLockedMe.com");
			  System.out.println("=============================================================");	  
			  System.out.println("MENU OPTIONS");
	          System.out.println("1. Show all files");
	          System.out.println("2. Create new file with content");
			  System.out.println("3. Delete a file");
			  System.out.println("4. Search a file");
			  System.out.println("5. Exit");
			  System.out.println("==============================================================");	  
		}
	
		/**
		 * Display all the files in the folder path
		 */
		public static void getAllFileNames() {
			 
			   // Store all the file names in a list
			   List<String> fileNameList = FileOperations.fetchAllFiles(FOLDERLOCATION);
			   Collections.sort(fileNameList);

			   //Display all filenames
			   fileNameList.forEach(name -> System.out.println(name));
		  }
		
		/**
		 * Create new file and add user entered contents
		 */
		public static void createNewFile() {
			   String fileName;
			   Scanner scanner = new Scanner(System.in);
			   int linesCount = 0;	
			   List<String> content = new ArrayList<String>();
	
			   // Get filename input from the user
			   System.out.println("Enter file name:");
			   fileName = scanner.nextLine();
			   
			  	   //Get the number of lines from the user
			   System.out.println("Enter how many lines do you want to add in the file:");
			   try {
			   linesCount = Integer.parseInt(scanner.nextLine());
			   }
			   catch(Exception ex) {
				   System.out.println("Invalid input");
			   }
			   
			   //Read lines from the user
			   for(int i=1; i<= linesCount; i++)
			   {
				   System.out.println("Enter lines "+i);
				   content.add(scanner.nextLine());
			   }
			   // Create new file and add content in that
			   String message = FileOperations.createNewFile(FOLDERLOCATION,fileName,content);	
			   System.out.println(message);
			
			}
		
		
		/**
		 * Delete the file from the folder
		 */

		public static void deleteFile() {
			   String fileName;
			   Scanner scanner = new Scanner(System.in);
			   
			   System.out.println("Enter file name to delete from the folder");
			   fileName =scanner.nextLine();
			   
			   //Delete file from the folder
			   String message = FileOperations.deleteFile(FOLDERLOCATION, fileName);
			   System.out.println(message); 

		}
	
		/**
		 * Search for the user entered file
		 */
		public static void searchFile() {
			   String fileName;
			   
			   //Read file name from the user
			   Scanner scanner = new Scanner(System.in);
			   System.out.println("Enter file name to search from the folder");
			   fileName =scanner.nextLine(); 
			   
			   //Delete file from the folder
			   String message = FileOperations.searchFile(FOLDERLOCATION, fileName);
			   System.out.println(message);
			   
		}
	
}
