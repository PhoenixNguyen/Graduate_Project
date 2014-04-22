/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.action;

import com.hp.common.ConfigFile;
import com.hp.common.ValidateHandle;
import com.hp.dao.StaffDAO;
import com.hp.dao.StaffDAOImpl;
import com.hp.dao.StaffDAO;
import com.hp.dao.StaffDAOImpl;
import com.hp.dao.UserDAO;
import com.hp.dao.UserDAOImpl;
import com.hp.domain.Staff;
import com.hp.domain.Demo;
import com.hp.domain.Demo2;
import com.hp.domain.Document;
import com.hp.domain.Staff;
import static com.opensymphony.xwork2.Action.INPUT;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
public class StaffsAction extends ActionSupport implements ModelDriven{
    
    
    //Init Staffs
    //private Staffs Staff = new Staffs();
    
    //Init StaffDAO
    private StaffDAO staffDAO = new StaffDAOImpl();
    private UserDAO userDAO = new UserDAOImpl();
        
    private String staffID = new String();
    @Valid
    public Staff staff = new Staff();

    @Valid
    private Document document = new Document();
    private List<Staff> staffsList = new ArrayList<Staff>();

    private int staffsTotal;

    private List<String> usersList = new ArrayList<String>();

    private boolean deleteStatus;
    private boolean selected;
    
    private String date;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    public boolean isSelected() {
        return selected;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }
    
    public boolean isDeleteStatus() {
        return deleteStatus;
    }

    public void setDeleteStatus(boolean deleteStatus) {
        this.deleteStatus = deleteStatus;
    }
    
    public List<String> getUsersList() {
        return usersList;
    }

    public void setUsersList(List<String> usersList) {
        this.usersList = usersList;
    }
    
    public int getStaffsTotal() {
        return staffsTotal;
    }

    public void setStaffsTotal(int StaffsTotal) {
        this.staffsTotal = StaffsTotal;
    }

    public Staff getStaff() {
        return staff;
    }

    public void setStaff(Staff staff) {
        this.staff = staff;
    }
    
    public List<Staff> getStaffsList() {
        return staffsList;
    }

    public void setStaffsList(List<Staff> staffsList) {
        this.staffsList = staffsList;
    }
    
    public Document getDocument() {
        return document;
    }

    public void setDocument(Document document) {
        this.document = document;
    }
    
    @Override
    public Object getModel() {
        return staff;
    }
    
    public String saveFile(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        usersList = userDAO.getListUser(2);
                
        String saveName = document.getFileFileName();
        if(saveName == null)
            return INPUT;
        try {
            
            System.out.println(document.getFileContentType());
            String filePath = ServletActionContext.getServletContext().getRealPath("/db_inputs/");
            System.out.println("Server path:" + filePath);
            
            File fileToCreate = new File(filePath, saveName);
            FileUtils.copyFile(document.getFile(), fileToCreate);
            
            //set name file
            session.setAttribute("upload-name-file-staff", saveName);
            
        } catch (IOException ex) {
            Logger.getLogger(StaffsAction.class.getName()).log(Level.SEVERE, null, ex);
            return INPUT;
        }
        return SUCCESS;
    }
    //access Excel files and import them into database
    public String addStaffFromExcelFile(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        String saveName = (String)session.getAttribute("upload-name-file-staff");
        System.out.println("Get Attribute file name: "+saveName);
        if(saveName == null)
            return SUCCESS;
        
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        
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

            for(int i = 1; i < rows; i++){
                
                row = sheet.getRow(i);
                System.out.println("__ Rows: " +(i+1));
                if(row != null){
                    
                    System.out.println("__ Row: " +(i+1)+" ,Cell number: " + row.getPhysicalNumberOfCells());
                    //If the staff id null
                    if(row.getCell(1) == null ||
                            row.getCell(1).getStringCellValue().compareTo("") == 0

                            ){
                        continue;   
                    }
                    
                    //Init Staff Object                   
                    Staff staff = new Staff();
                    try{
                        
                        if(row.getCell(1) != null)
                            staff.setMID(row.getCell(1).getStringCellValue());
                        if(row.getCell(2) != null)
                            staff.setMPW(row.getCell(2).getStringCellValue());
                        if(row.getCell(3) != null)
                            staff.setMName(row.getCell(3).getStringCellValue());
                        if(row.getCell(4) != null)
                            staff.setMAdress(row.getCell(4).getStringCellValue());
                        if(row.getCell(5) != null)
                        staff.setMJob(row.getCell(5).getStringCellValue());
                        if(row.getCell(6) != null)
                        staff.setMPhone(row.getCell(6).getStringCellValue());

                        if(row.getCell(7) != null){

                            staff.setMDate(df.parse(row.getCell(7).getStringCellValue()));

                        }
                        if(row.getCell(8) != null)
                            staff.setMManager(row.getCell(8).getStringCellValue());
                        if(row.getCell(9) != null)
                            staff.setMStatus(row.getCell(9).getNumericCellValue() == 1 ? true:false);
                        }
                    catch(Exception e){
                        e.printStackTrace();
                        continue;
                    }
                    //Add to database
                    if(staffDAO.saveOrUpdate(staff)){
                        System.out.println("Add Object " + (i+1));
                        total++;
                    }
                    else
                        continue;
                }
            }
            
        } catch(Exception ioe) {
            ioe.printStackTrace();
            return SUCCESS;
        }
        staffsTotal = total;
        return SUCCESS;
    }
    
    public String displayStaffs(){
        staffsList = staffDAO.getListStaff();
        
        usersList = userDAO.getListUser(2);
        return SUCCESS;
    }

    public String getStaffID() {
        return staffID;
    }

    public void setStaffID(String staffID) {
        this.staffID = staffID;
    }
    
    public String editStaff() throws UnsupportedEncodingException{
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        //request.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF8");
        usersList = userDAO.getListUser(2);
        
        String para =  request.getParameter("id_st");
        
        int id_st = ValidateHandle.getInteger(para);
        if(id_st > -1){
            staff = staffDAO.loadStaff(id_st);
            return SUCCESS;
        }
        else
            return INPUT;
        
//        String stt = request.getParameter("id_staff");
//        int st;
//        if(stt ==null){
//            return INPUT;
//        }
//        st = Integer.parseInt(stt);
//        
//        staffsList = staffDAO.getListStaff();
//        staff = staffDAO.loadStaff(st);
            
    }
    
    private int staff_serial;

    public int getStaff_serial() {
        return staff_serial;
    }

    public void setStaff_serial(int staff_serial) {
        this.staff_serial = staff_serial;
    }
    
    public String updateStaff() throws UnsupportedEncodingException{
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF8");
        usersList = userDAO.getListUser(2);
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat sdf2 = new SimpleDateFormat("dd-MM-yyyy");
        
        Date out = null;
        System.out.println("OK1" + staff.getMID());

        try{
            out = sdf2.parse(date);

        }catch(Exception e){
            e.printStackTrace();
        }

        staff.setMDate(out);
        
        //New
        if(staff.getMSTT() <= 0){
            
            boolean status = staffDAO.saveOrUpdate(staff);
            //staffsList = staffDAO.getListStaff();

            System.out.println("___ " + status);
            if(status)
                return SUCCESS;
            else
                return INPUT;
        }
        
        //UPdate
        System.out.println("OK" + staff.getMID());
        
        boolean status = staffDAO.update(staff);
        if(status)            
            return SUCCESS;
        else
            return INPUT;
    }
    
    public String showDetail(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        String para =  request.getParameter("id_st");
        
        int id_st = ValidateHandle.getInteger(para);
        if(id_st > -1){
            staff = staffDAO.loadStaff(id_st);
            return SUCCESS;
        }
        else
            return INPUT;
    }
    
    public String deleteStaff(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        selected = true;
        
        String para =  request.getParameter("id_st");
        
        int id_st = ValidateHandle.getInteger(para);
        if(id_st > -1){
            staff = staffDAO.loadStaff(id_st);
            
            deleteStatus = staffDAO.delete(staff);
            
            staffsList = staffDAO.getListStaff();
            
            System.out.println("_______ " +deleteStatus);
            if(deleteStatus)
                return SUCCESS;
            else
                return INPUT;
        }
        else
            return INPUT;
    }
    
    public String redirect(){
        //staffsList = staffDAO.getListUser(null);
        
        usersList = userDAO.getListUser(2);
        return SUCCESS;
    }
}
