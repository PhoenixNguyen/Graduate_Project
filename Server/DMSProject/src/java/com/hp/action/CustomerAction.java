/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.action;

import com.hp.common.ConfigFile;
import com.hp.dao.CustomerDAO;
import com.hp.dao.CustomerDAOImpl;
import com.hp.dao.StaffDAO;
import com.hp.dao.StaffDAOImpl;
import com.hp.domain.Customer;
import com.hp.domain.Demo;
import com.hp.domain.Demo2;
import com.hp.domain.Document;
import com.hp.domain.Staff;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.FileUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.struts2.ServletActionContext;
import org.hibernate.validator.Valid;

/**
 *
 * @author HP
 */
public class CustomerAction extends ActionSupport implements ModelDriven{
    
    
    //Init Customer
    //private Customer customer = new Customer();
    
    //Init customerDAO
    private CustomerDAO customerDAO = new CustomerDAOImpl();
    private StaffDAO staffDAO = new StaffDAOImpl();
        
    private String customerID = new String();
    private int customerSTT;
    public Demo demo = new Demo();
    
    @Valid
    public Customer customer = new Customer();
    public Customer customer2 = new Customer();
    public Staff st = new Staff();
//    public Customer getCustomer() {
//        return customer;
//    }
//
//    public void setCustomer(Customer customer) {
//        this.customer = customer;
//    }
    
    @Valid
    private Document document = new Document();
    private List<Customer> customersList = new ArrayList<Customer>();

    private int customersTotal;

    private List<String> staffsList = new ArrayList<String>();

    public List<String> getStaffsList() {
        return staffsList;
    }

    public void setStaffsList(List<String> staffsList) {
        this.staffsList = staffsList;
    }
    
    public int getCustomersTotal() {
        return customersTotal;
    }

    public void setCustomersTotal(int customersTotal) {
        this.customersTotal = customersTotal;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
    
    public List<Customer> getCustomersList() {
        return customersList;
    }

    public void setCustomersList(List<Customer> customersList) {
        this.customersList = customersList;
    }
    
    public Document getDocument() {
        return document;
    }

    public void setDocument(Document document) {
        this.document = document;
    }
    
    @Override
    public Object getModel() {
        return customer;
    }
    
    public String saveFile(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        staffsList = staffDAO.getListUser(null);
        
        String saveName = document.getFileFileName();
        try {
            
            System.out.println(document.getFileContentType());
            String filePath = ServletActionContext.getServletContext().getRealPath("/database/");
            System.out.println("Server path:" + filePath);
            
            File fileToCreate = new File(filePath, saveName);
            FileUtils.copyFile(document.getFile(), fileToCreate);
            
            //set name file
            session.setAttribute("upload-name-file", saveName);
            
        } catch (IOException ex) {
            Logger.getLogger(CustomerAction.class.getName()).log(Level.SEVERE, null, ex);
            return INPUT;
        }
        return SUCCESS;
    }
    //access Excel files and import them into database
    public String addCustomerFromExcelFile(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        String saveName = (String)session.getAttribute("upload-name-file");
        System.out.println("Get Attribute file name: "+saveName);
        if(saveName == null)
            return SUCCESS;
        
        int total = 0;
        //Import data
        try {
            String fileInput = ServletActionContext.getServletContext().getRealPath("/database/"+saveName+"/");
            POIFSFileSystem fs = new POIFSFileSystem(new FileInputStream(fileInput));
            HSSFWorkbook wb = new HSSFWorkbook(fs);
            HSSFSheet sheet = wb.getSheetAt(0);
            HSSFRow row;
            HSSFCell cell;

            int rows; // No of rows
            rows = sheet.getLastRowNum() + 1; //getPhysicalNumberOfRows();
            System.out.println("ROWs number" + rows);
            
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
                System.out.println("__ Rows: " +(i+1));
                if(row != null){
                    
                    System.out.println("__ Row: " +(i+1)+" ,Cell number: " + row.getPhysicalNumberOfCells());
                    //If the customer id null
                    if(row.getCell(ConfigFile.MA_DOI_TUONG_COL) == null ||
                            row.getCell(ConfigFile.MA_DOI_TUONG_COL+1) == null ||
                            row.getCell(0).getCellType() == HSSFCell.CELL_TYPE_STRING
//                            row.getCell(ConfigFile.X_COORDINATES_COL) == null ||
//                            row.getCell(ConfigFile.Y_COORDINATES_COL) == null ||
//                            row.getCell(ConfigFile.X_COORDINATES_COL).getCellType() == HSSFCell.CELL_TYPE_STRING ||
//                            row.getCell(ConfigFile.Y_COORDINATES_COL).getCellType() == HSSFCell.CELL_TYPE_STRING
                            ){
                        continue;   
                    }
                    
                    //Init Customer Object
                    int tmp = 0;
                    Customer customer = new Customer();
//                    customer.setmStt((int)row.getCell(tmp++).getNumericCellValue());
                    tmp++;
                    if(row.getCell(1) != null)
                        customer.setmTinhThanh(row.getCell(1).getStringCellValue());
                    if(row.getCell(2) != null)
                        customer.setmTuyenBanHangThu(row.getCell(2).getStringCellValue());
                    if(row.getCell(3) != null)
                        customer.setmMaNhanVien(row.getCell(3).getStringCellValue());
                    if(row.getCell(4) != null)
                        customer.setmX(row.getCell(4).getStringCellValue());
                    if(row.getCell(5) != null)
                    customer.setmMaDoiTuong(row.getCell(5).getStringCellValue());
                    if(row.getCell(6) != null)
                    customer.setmDoiTuong(row.getCell(6).getStringCellValue());
                    if(row.getCell(7) != null)
                    customer.setmNoDKy(row.getCell(7).getNumericCellValue());
                    if(row.getCell(8) != null)
                    
                    customer.setmCoDKy(row.getCell(8).getNumericCellValue());
                    if(row.getCell(9) != null)
                    customer.setmNoTKy(row.getCell(9).getNumericCellValue());
                    if(row.getCell(10) != null)
                    customer.setmTienBan(row.getCell(10).getNumericCellValue());
                    
                    if(row.getCell(11) != null)
                    customer.setmCoTKy(row.getCell(11).getNumericCellValue());
                    if(row.getCell(12) != null)
                    customer.setmCKGG(row.getCell(12).getNumericCellValue());
                    if(row.getCell(13) != null)
                    customer.setmNhapLai(row.getCell(13).getNumericCellValue());
                    if(row.getCell(14) != null)
                    
                    customer.setmNoCKy(row.getCell(14).getNumericCellValue());
                    if(row.getCell(15) != null)
                    customer.setmCoCKy(row.getCell(15).getNumericCellValue());
                    if(row.getCell(16) != null)
                    customer.setmDoanhThu(row.getCell(16).getNumericCellValue());
                    
                    if(row.getCell(17) != null)
                    customer.setmPhanTramNoChiaThu(row.getCell(17).getNumericCellValue());
                    if(row.getCell(18) != null)
                    customer.setmNoToiDa(row.getCell(18).getNumericCellValue());
                    if(row.getCell(19) != null)
                    customer.setmDaiDien(row.getCell(19).getStringCellValue());
                    if(row.getCell(20) != null)
                    customer.setmDiaChi(row.getCell(20).getStringCellValue());
                    if(row.getCell(21) != null)
                    customer.setmDienThoai(row.getCell(21).getStringCellValue());
                    if(row.getCell(22) != null)
                    customer.setmFax(row.getCell(22).getStringCellValue());
                    
                    if(row.getCell(23) != null)
                    customer.setmGhiChu(row.getCell(23).getStringCellValue());
                    if(row.getCell(24) != null)
                    customer.setmXCoordinates(row.getCell(24).getNumericCellValue());
                    if(row.getCell(25) != null)
                    customer.setmYCoordinates(row.getCell(25).getNumericCellValue());
                    
                    
                    //Add to database
                    if(customerDAO.saveOrUpdate(customer)){
                        System.out.println("Add Object " + i);
                        total++;
                    }
                }
            }
            
        } catch(Exception ioe) {
            ioe.printStackTrace();
            return SUCCESS;
        }
        customersTotal = total;
        return SUCCESS;
    }
    
    public String displayCustomers(){
        customersList = customerDAO.getListCustomer();
        staffsList = staffDAO.getListUser(null);
        return SUCCESS;
    }


    public Demo getDemo() {
        return demo;
    }

    public void setDemo(Demo demo) {
        this.demo = demo;
    }
    
    public int getCustomerSTT() {
        return customerSTT;
    }

    public void setCustomerSTT(int customerSTT) {
        this.customerSTT = customerSTT;
    }
    
    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }
    
    public String editCustomer() throws UnsupportedEncodingException{
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        //request.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF8");
        staffsList = staffDAO.getListUser(null);
        
        String stt = request.getParameter("id_cus");
        int st;
        if(stt ==null){
            return INPUT;
        }
        st = Integer.parseInt(stt);
        
        customersList = customerDAO.getListCustomer();
        customer = customerDAO.loadCustomer(st);
            
        return SUCCESS;
    }
    
    public String updateCustomer() throws UnsupportedEncodingException{
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        //request.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF8");
        staffsList = staffDAO.getListUser(null);
        
        String test = request.getParameter("mTinhThanh");
        
        String name  = customer.getmDienThoai();
        
        String pw = demo.getmDienThoai();
        Float y = demo.getmYCoordinates();
        
//        int stt = demo2.getStt();
//        Float point = demo2.getPoint();
//        System.out.println("__" + stt + "__ " +point);
        
        System.out.println("__" + pw + "__ " +y +" PARA: " + test);
        System.out.println("__" + name);
        
        if(customerSTT <= 0){
//            Customer cu1 = new Customer();
//            cu1.setmMaNhanVien("0");
//            cu1.setmMaDoiTuong("111");
//            cu1.setmNoDKy(0.0);
//            
            boolean status = customerDAO.saveOrUpdate(customer);
            customersList = customerDAO.getListCustomer();
            return SUCCESS;
        }     
        boolean status = customerDAO.update(customer);
        customersList = customerDAO.getListCustomer();
        
        return SUCCESS;
    }
    
    Demo2 demo2 = new Demo2();

    public Demo2 getDemo2() {
        return demo2;
    }

    public void setDemo2(Demo2 demo2) {
        this.demo2 = demo2;
    }
    
}
