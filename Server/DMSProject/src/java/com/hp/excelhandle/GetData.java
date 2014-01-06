/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.excelhandle;

import java.io.FileInputStream;
import java.util.ArrayList;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFCell;

import com.hp.common.ConfigFile;

/**
 *
 * @author HP
 */
public class GetData {
        
    private String mFileInput;
    
    public GetData(){
        
    }
    
    public GetData(String pFileInput){
        this.mFileInput = pFileInput;
    }
    
    public void readExcel(){
        try {
            POIFSFileSystem fs = new POIFSFileSystem(new FileInputStream("database/customer.xls"));
            HSSFWorkbook wb = new HSSFWorkbook(fs);
            HSSFSheet sheet = wb.getSheetAt(0);
            HSSFRow row;
            HSSFCell cell;

            int rows; // No of rows
            rows = sheet.getPhysicalNumberOfRows();

            int cols = 0; // No of columns (max)
            int tmp = 0;

            // This trick ensures that we get the data properly even if it doesn't start from first few rows
            for(int i = 0; i < 10 || i < rows; i++) {
                row = sheet.getRow(i);
                if(row != null) {
                    tmp = sheet.getRow(i).getPhysicalNumberOfCells();
                    if(tmp > cols) 
                        cols = tmp;
                }
            }

//            for(int r = 0; r < rows; r++) {
//                row = sheet.getRow(r);
//                if(row != null) {
//                    for(int c = 0; c < cols; c++) {
//                        cell = row.getCell((short)c);
//                        if(cell != null) {
//                            // Your code here
//                        }
//                    }
//                }
//            }
            
            row = sheet.getRow(8);
            if(row != null){               
                cell = row.getCell(1);
                    if(cell != null)
                        System.out.println("Row: " + 9 + ", Data: " + cell.getStringCellValue());
            }
            
            
        } catch(Exception ioe) {
            ioe.printStackTrace();
        }
    }
    
    public ArrayList<Customer> loadCustomer(){
        ArrayList<Customer> listCustomer = new ArrayList();
        
        try {
            POIFSFileSystem fs = new POIFSFileSystem(new FileInputStream(mFileInput));
            HSSFWorkbook wb = new HSSFWorkbook(fs);
            HSSFSheet sheet = wb.getSheetAt(0);
            HSSFRow row;
            HSSFCell cell;

            int rows; // No of rows
            rows = sheet.getPhysicalNumberOfRows();

            int cols = 0; // No of columns (max)
            int tmp = 0;

            // This trick ensures that we get the data properly even if it doesn't start from first few rows
            for(int i = 0; i < 10 || i < rows; i++) {
                row = sheet.getRow(i);
                if(row != null) {
                    tmp = sheet.getRow(i).getPhysicalNumberOfCells();
                    if(tmp > cols) 
                        cols = tmp;
                }
            }

            for(int i = 8; i < rows; i++){
                
                row = sheet.getRow(i);
                if(row != null){
                    
                    //If the customer id null
                    if(row.getCell(ConfigFile.MA_DOI_TUONG_COL) == null ||
                            row.getCell(ConfigFile.X_COORDINATES_COL) == null ||
                            row.getCell(ConfigFile.Y_COORDINATES_COL) == null
                            ){
                        continue;   
                    }
                    
                    //Init Customer Object
                    Customer custumer = new Customer();
                    custumer.setmXCoordinates(row.getCell(ConfigFile.X_COORDINATES_COL).getNumericCellValue());
                    custumer.setmXCoordinates(row.getCell(ConfigFile.Y_COORDINATES_COL).getNumericCellValue());
                    
                    listCustomer.add(custumer);
                    System.out.println("Add Object " + i);
                }
            }
            
        } catch(Exception ioe) {
            ioe.printStackTrace();
            return null;
        }
        
        return listCustomer;
    }
    
    public static void main(String [] arg){
        GetData data= new GetData("database/customer.xls");
        Customer cus = data.loadCustomer().get(0);
        
        System.out.println("Customer 1: X:" + cus.getmXCoordinates() +", Y: "+ cus.getmYCoordinates());
    }
}
