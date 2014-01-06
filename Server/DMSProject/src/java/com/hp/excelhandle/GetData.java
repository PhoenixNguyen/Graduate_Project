/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.excelhandle;

import java.io.FileInputStream;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFCell;


/**
 *
 * @author HP
 */
public class GetData {
    
    public GetData(){
        
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
//                for(int c = 0; c < cols; c++){
//                    cell = row.getCell((short)c);
//                    if(cell != null)
//                        System.out.println("Row: " + c + ", Data: " + cell.getStringCellValue());
//                }
                
                cell = row.getCell(1);
                    if(cell != null)
                        System.out.println("Row: " + 9 + ", Data: " + cell.getStringCellValue());
            }
            
            
        } catch(Exception ioe) {
            ioe.printStackTrace();
        }
    }
    
    public static void main(String [] arg){
        new GetData().readExcel();
    }
}
