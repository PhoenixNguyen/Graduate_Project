/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.action;

import com.hp.dao.ProductDAO;
import com.hp.dao.ProductDAOImpl;
import com.hp.dao.StaffDAO;
import com.hp.dao.StaffDAOImpl;
import com.hp.dao.TakeOrderDAO;
import com.hp.dao.TakeOrderDAOImpl;
import com.hp.dao.TakeOrderDetailDAO;
import com.hp.dao.TakeOrderDetailDAOImpl;
import com.hp.domain.Document;
import com.hp.domain.Product;
import com.hp.domain.Staff;
import com.hp.domain.TakeOrder;
import com.hp.domain.TakeOrder2;
import com.hp.domain.TakeOrderDetail;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author HP
 */
public class TakeOrderAction extends ActionSupport implements ModelDriven{
    private TakeOrderDAO takeOrderDAO = new TakeOrderDAOImpl();
    private TakeOrderDetailDAO takeOrderDetailDAO = new TakeOrderDetailDAOImpl();
    
    private List<TakeOrder> takeOrdersList = new ArrayList<TakeOrder>();
    private List<TakeOrderDetail> detailTakeOrdersList = new ArrayList<TakeOrderDetail>();

    private TakeOrder takeOrder = new TakeOrder();

    public List<String> staffList = new ArrayList<String>();
    private StaffDAO staffDAO = new StaffDAOImpl();
    
    public String fromDate;
    public String toDate;
    public String staff;

    public FileInputStream orderFile;

    Document doc = new Document();
    private TakeOrder2 takeOrder2 = new TakeOrder2();

    public TakeOrder2 getTakeOrder2() {
        return takeOrder2;
    }

    public void setTakeOrder2(TakeOrder2 takeOrder2) {
        this.takeOrder2 = takeOrder2;
    }
    
    public Document getDoc() {
        return doc;
    }

    public void setDoc(Document doc) {
        this.doc = doc;
    }
    
    public FileInputStream getOrderFile() {
        return orderFile;
    }

    public void setOrderFile(FileInputStream orderFile) {
        this.orderFile = orderFile;
    }
    
    public String getStaff() {
        return staff;
    }

    public void setStaff(String staff) {
        this.staff = staff;
    }
    
    public String getFromDate() {
        return fromDate;
    }

    public void setFromDate(String fromDate) {
        this.fromDate = fromDate;
    }

    public String getToDate() {
        return toDate;
    }

    public void setToDate(String toDate) {
        this.toDate = toDate;
    }
    
    public List<String> getStaffList() {
        return staffList;
    }

    public void setStaffList(List<String> staffList) {
        this.staffList = staffList;
    }
    
    @Override
    public Object getModel() {
        return takeOrder;
    }
    public TakeOrder getTakeOrder() {
        return takeOrder;
    }

    public void setTakeOrder(TakeOrder takeOrder) {
        this.takeOrder = takeOrder;
    }
    
    public List<TakeOrder> getTakeOrdersList() {
        return takeOrdersList;
    }

    public void setTakeOrdersList(List<TakeOrder> takeOrdersList) {
        this.takeOrdersList = takeOrdersList;
    }

    public List<TakeOrderDetail> getDetailTakeOrdersList() {
        return detailTakeOrdersList;
    }

    public void setDetailTakeOrdersList(List<TakeOrderDetail> detailTakeOrdersList) {
        this.detailTakeOrdersList = detailTakeOrdersList;
    }
    
    public String loadTakeOrders(){
        takeOrdersList = takeOrderDAO.getTakeOrdersList();
        return SUCCESS;
    }
    
    public String loadTakeOrdersDetail(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        String order_id = request.getParameter("id_tod");
        System.out.println(order_id);
        
        if(order_id == null)
            return INPUT;
        
        takeOrder = takeOrderDAO.getTakeOrder(order_id);
        detailTakeOrdersList = takeOrderDetailDAO.getDetailTakeOrdersList(order_id);
        takeOrdersList = takeOrderDAO.getTakeOrdersList();
        return SUCCESS;
    }
    
    public String editTakeOrder(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        String order_id = request.getParameter("id_take_order");
        int st;
        if(order_id ==null){
            return INPUT;
        }
        st = Integer.parseInt(order_id);
        takeOrder = takeOrderDAO.getTakeOrder(st);
        
        return SUCCESS;
    }
    
    public String updateTakeOrder() throws UnsupportedEncodingException{
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF8");
        
        System.out.println("OKto " + takeOrder.getMID() +" : " +takeOrder.getMCustomerAddress() + " " + doc.getNumber());//doc.getFileFileName()
        //takeOrder.setmEditer("0");
//        takeOrder.setMDeliveryDate(null);
//        takeOrder.setMOrderEditDate(null);
//        takeOrder.setMOrderEstablishDate(null);
//        takeOrder.setMTakeOrderDate(null);
        
//        Product product = new Product();
////                    product.setmStt((int)row.getCell(tmp++).getNumericCellValue());
//            product.setmBarcode("000122");
//            product.setmProductID("000122");
//            product.setmBrand("");
//            product.setmOrigin("");
//            product.setmPackingSpecifications("");
//            product.setmQuantification("");
//            product.setmExportPrices(0f);
//            product.setmProvider("nhacungcap1");
//        //Add to database
//        ProductDAO productDAO = new ProductDAOImpl();
//        
//        if(productDAO.saveOrUpdate(product)){
//            System.out.println("Add Object " );
//            return SUCCESS;
//        }
        
        
        
//        TakeOrder t = new TakeOrder();
//        t.setMID("t1233imjtt");
//        t.setMCustomerID(null);
//        t.setMCreater(null);
//        t.setMEditer(null);
        takeOrder.setMAfterPrivate(takeOrder.getMBeforePrice() - takeOrder.getMBeforePrice() * takeOrder.getMDiscount()/100);
        boolean status = takeOrderDAO.update(takeOrder);// update(takeOrder);
        System.out.println(status+" ________________________");
        if(status){
            return SUCCESS;
        }
        System.out.println(status+" ________________________");
        takeOrdersList = takeOrderDAO.getTakeOrdersList();
        
        return INPUT;
    }
    
    public String exportOrders(){
        staffList = staffDAO.getListUser(null);
        
        String fileInput = ServletActionContext.getServletContext().getRealPath("/database/");
        System.out.println("Result: " +staff +" from date: "+  fromDate +" , to date: "+ toDate);
        
        takeOrdersList = takeOrderDAO.getTakeOrdersList(staff, fromDate, toDate);
        if(takeOrdersList.isEmpty())
            return INPUT;
        
        Map<String, List<TakeOrderDetail>> data = new HashMap<String, List<TakeOrderDetail>>();
        
        for(int i= 0; i < takeOrdersList.size(); i++){
            data.put(i+"", takeOrderDetailDAO.getDetailTakeOrdersList(takeOrdersList.get(i).getMID()));
            
        }
        
        int line = 0;
        Set<String> keyset = data.keySet();
        
        for(String key : keyset){
            line += data.get(key).size();
        }
        
        line += keyset.size();
        
        //Write
        HSSFWorkbook workBook = new HSSFWorkbook();
        HSSFSheet sheet = workBook.createSheet("Order");
        
        //TakeOrder title
        for(int i = 0; i < 1; i++){
            Row row = sheet.createRow(i);
            int cellnum = 0;
            
            for(Object obj : takeOrdersList.get(i).toTitleArray()){
                Cell cell = row.createCell(cellnum++);
                
                if(obj instanceof Timestamp) 
                    cell.setCellValue((Timestamp)obj);
                else if(obj instanceof Boolean)
                    cell.setCellValue((Boolean)obj);
                else if(obj instanceof String)
                    cell.setCellValue((String)obj);
                else if(obj instanceof Float)
                    cell.setCellValue((Float)obj);
            }
        }
        //Write TakeOrder
        for(int i = 0; i < takeOrdersList.size(); i++){
            Row row = sheet.createRow(i+1);
            int cellnum = 0;
            
            for(Object obj : takeOrdersList.get(i).toArray()){
                Cell cell = row.createCell(cellnum++);
                
                if(obj instanceof Timestamp) 
                    cell.setCellValue((Timestamp)obj);
                else if(obj instanceof Boolean)
                    cell.setCellValue((Boolean)obj);
                else if(obj instanceof String)
                    cell.setCellValue((String)obj);
                else if(obj instanceof Float)
                    cell.setCellValue((Float)obj);
            }
        }
        
        //Write TakeOrderDetail title
        for(String key : keyset){
            for(int i =0; i < 1; i++){
                Row row = sheet.createRow(i + takeOrdersList.size() + 3);
                int cellnum = 0;
                for(Object obj : data.get(key).get(i).toTitleArray()){
                    Cell cell = row.createCell(cellnum++);
                
                    if(obj instanceof Timestamp) 
                        cell.setCellValue((Timestamp)obj);
                    else if(obj instanceof Boolean)
                        cell.setCellValue((Boolean)obj);
                    else if(obj instanceof String)
                        cell.setCellValue((String)obj);
                    else if(obj instanceof Float)
                        cell.setCellValue((Float)obj);
                    else if(obj instanceof Integer)
                        cell.setCellValue((Integer)obj);
                    
                }
                
            }
        }
        
        //Write TakeOrderDetail
        for(String key : keyset){
            for(int i =0; i < data.get(key).size(); i++){
                Row row = sheet.createRow(i + takeOrdersList.size() + 4);
                int cellnum = 0;
                for(Object obj : data.get(key).get(i).toArray()){
                    Cell cell = row.createCell(cellnum++);
                
                    if(obj instanceof Timestamp) 
                        cell.setCellValue((Timestamp)obj);
                    else if(obj instanceof Boolean)
                        cell.setCellValue((Boolean)obj);
                    else if(obj instanceof String)
                        cell.setCellValue((String)obj);
                    else if(obj instanceof Float)
                        cell.setCellValue((Float)obj);
                    else if(obj instanceof Integer)
                        cell.setCellValue((Integer)obj);
                    
                }
                
            }
        }
        
        //Write to xls
        try{
            FileOutputStream output = new FileOutputStream(new File(fileInput +"\\test.xls"));
            
            
            workBook.write(output);
            output.close();
            System.out.println("Excel written successfully..");
            orderFile = new FileInputStream(new File(fileInput +"\\test.xls"));
            
        }catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }
    
    public String getStaffsList(){
        
        staffList = staffDAO.getListUser(null);
        
        return SUCCESS;
    }
}
