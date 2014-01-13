/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.action;

import com.hp.common.ConfigFile;
import com.hp.dao.CustomerDAO;
import com.hp.dao.CustomerDAOImpl;
import com.hp.excelhandle.Customer;
import com.opensymphony.xwork2.ActionSupport;
import java.io.FileInputStream;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author HP
 */
public class CustomerAction extends ActionSupport{
    //Init Customer
    //private Customer customer = new Customer();
    
    //Init customerDAO
    private CustomerDAO customerDAO = new CustomerDAOImpl();
    
//    public Customer getCustomer() {
//        return customer;
//    }
//
//    public void setCustomer(Customer customer) {
//        this.customer = customer;
//    }
    
    //access Excel files and import them into database
    public String addCustomerFromExcelFile(){
        
        
        try {
            String fileInput = ServletActionContext.getServletContext().getRealPath("/database/customer.xls");
            POIFSFileSystem fs = new POIFSFileSystem(new FileInputStream(fileInput));
            HSSFWorkbook wb = new HSSFWorkbook(fs);
            HSSFSheet sheet = wb.getSheetAt(0);
            HSSFRow row;
            HSSFCell cell;

            int rows; // No of rows
            rows = sheet.getLastRowNum() + 1; //getPhysicalNumberOfRows();
            System.out.println("ROWs number" + rows);
            System.out.println("Cell value: " + sheet.getRow(rows-1).getCell(0).getNumericCellValue());
            
            int cols = 0; // No of columns (max)
            int temp = 0;

            // This trick ensures that we get the data properly even if it doesn't start from first few rows
            for(int i = 0; i < 10 || i < rows; i++) {
                row = sheet.getRow(i);
                if(row != null) {
                    temp = sheet.getRow(i).getPhysicalNumberOfCells();
                    if(temp > cols) 
                        cols = temp;
                }
            }

            for(int i = 0; i < rows; i++){
                
                row = sheet.getRow(i);
                if(row != null){
                    
                    //If the customer id null
                    if(row.getCell(ConfigFile.MA_DOI_TUONG_COL) == null ||
                            row.getCell(ConfigFile.X_COORDINATES_COL) == null ||
                            row.getCell(ConfigFile.Y_COORDINATES_COL) == null ||
                            row.getCell(ConfigFile.X_COORDINATES_COL).getCellType() == HSSFCell.CELL_TYPE_STRING ||
                            row.getCell(ConfigFile.Y_COORDINATES_COL).getCellType() == HSSFCell.CELL_TYPE_STRING
                            ){
                        continue;   
                    }
                    
                    //Init Customer Object
                    System.out.println("CELL STT" + row.getCell(0).getNumericCellValue());
                    int tmp = 0;
                    Customer customer = new Customer();
//                    customer.setmStt((int)row.getCell(tmp++).getNumericCellValue());
                    tmp++;
                    customer.setmTinhThanh(row.getCell(tmp++).getStringCellValue());
                    customer.setmTuyenBanHangThu(row.getCell(tmp++).getStringCellValue());
                    customer.setmMaNhanVien(row.getCell(tmp++).getStringCellValue());
                    
                    customer.setmX(row.getCell(tmp++).getStringCellValue());
                    customer.setmMaDoiTuong(row.getCell(tmp++).getStringCellValue());
                    customer.setmDoiTuong(row.getCell(tmp++).getStringCellValue());
                    customer.setmNoDKy(row.getCell(tmp++).getNumericCellValue());
                    
                    customer.setmCoDKy(row.getCell(tmp++).getNumericCellValue());
                    customer.setmNoTKy(row.getCell(tmp++).getNumericCellValue());
                    customer.setmTienBan(row.getCell(tmp++).getNumericCellValue());
                    
                    customer.setmCoTKy(row.getCell(tmp++).getNumericCellValue());
                    customer.setmCKGG(row.getCell(tmp++).getNumericCellValue());
                    customer.setmNhapLai(row.getCell(tmp++).getNumericCellValue());
                    
                    customer.setmNoCKy(row.getCell(tmp++).getNumericCellValue());
                    customer.setmCoCKy(row.getCell(tmp++).getNumericCellValue());
                    customer.setmDoanhThu(row.getCell(tmp++).getNumericCellValue());
                    
                    customer.setmPhanTramNoChiaThu(row.getCell(tmp++).getNumericCellValue());
                    customer.setmNoToiDa(row.getCell(tmp++).getNumericCellValue());
                    customer.setmDaiDien(row.getCell(tmp++).getStringCellValue());
                    
                    customer.setmDiaChi(row.getCell(tmp++).getStringCellValue());
                    customer.setmDienThoai(row.getCell(tmp++).getStringCellValue());
                    customer.setmFax(row.getCell(tmp++).getStringCellValue());
                    
                    customer.setmGhiChu(row.getCell(tmp++).getStringCellValue());
                    customer.setmXCoordinates(row.getCell(tmp++).getNumericCellValue());
                    customer.setmYCoordinates(row.getCell(tmp++).getNumericCellValue());
                    
                    
                    //Add to database
                    if(customerDAO.saveOrUpdate(customer))
                        System.out.println("Add Object " + i);
                }
            }
            
        } catch(Exception ioe) {
            ioe.printStackTrace();
            return "fail";
        }
        return SUCCESS;
    }
    
}
