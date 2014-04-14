/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.action;

import com.hp.common.ConfigFile;
import com.hp.common.ValidateHandle;
import com.hp.dao.ProductDAO;
import com.hp.dao.ProductDAOImpl;
import com.hp.dao.ProductDAO;
import com.hp.dao.ProductDAOImpl;
import com.hp.dao.ProviderDAO;
import com.hp.dao.ProviderDAOImpl;
import com.hp.domain.Product;
import com.hp.domain.Demo;
import com.hp.domain.Demo2;
import com.hp.domain.Document;
import com.hp.domain.Product;
import static com.opensymphony.xwork2.Action.INPUT;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
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
public class ProductsAction extends ActionSupport implements ModelDriven{
    
    
    //Init Products
    //private Products Product = new Products();
    
    //Init ProductDAO
    private ProductDAO productDAO = new ProductDAOImpl();
    private ProviderDAO providerDAO = new ProviderDAOImpl();
        
    private String productID = new String();
    
    @Valid
    public Product product = new Product();

    @Valid
    private Document document = new Document();
    
    @Valid
    private Document document2 = new Document();

    private List<String> providerIDList = new ArrayList<String>();

    public List<String> getProviderIDList() {
        return providerIDList;
    }

    public void setProviderIDList(List<String> providerIDList) {
        this.providerIDList = providerIDList;
    }
    
    public Document getDocument2() {
        return document2;
    }

    public void setDocument2(Document document2) {
        this.document2 = document2;
    }
    
    private List<Product> productsList = new ArrayList<Product>();

    private int productsTotal;

    private int id_product;

    public int getId_product() {
        return id_product;
    }

    public void setId_product(int id_product) {
        this.id_product = id_product;
    }
    
    public int getProductsTotal() {
        return productsTotal;
    }

    public void setProductsTotal(int ProductsTotal) {
        this.productsTotal = ProductsTotal;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
    
    public List<Product> getProductsList() {
        return productsList;
    }

    public void setProductsList(List<Product> productsList) {
        this.productsList = productsList;
    }
    
    public Document getDocument() {
        return document;
    }

    public void setDocument(Document document) {
        this.document = document;
    }
    
    @Override
    public Object getModel() {
        return product;
    }
    
    public String saveFile(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        providerIDList = providerDAO.getProvidersIDList();
        
        String saveName = document.getFileFileName();
        try {
            
            System.out.println(document.getFileContentType());
            String filePath = ServletActionContext.getServletContext().getRealPath("/database/");
            System.out.println("Server path:" + filePath + "/"+saveName);
            
            File fileToCreate = new File(filePath, saveName);
            FileUtils.copyFile(document.getFile(), fileToCreate);
            
            //set name file
            session.setAttribute("upload-name-file-product", saveName);
            
        } catch (IOException ex) {
            Logger.getLogger(ProductsAction.class.getName()).log(Level.SEVERE, null, ex);
            return INPUT;
        }
        return SUCCESS;
    }
    //access Excel files and import them into database
    public String addProductFromExcelFile(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        String saveName = (String)session.getAttribute("upload-name-file-product");
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

            for(int i = 17; i < rows; i++){
                
                row = sheet.getRow(i);
                System.out.println("__ Rows: " +(i+1));
                if(row != null){
                    
                    System.out.println("__ Row: " +(i+1)+" ,Cell number: " + row.getPhysicalNumberOfCells());
                    //If the product id null
                    if(row.getCell(1) == null ||
                            row.getPhysicalNumberOfCells() < 8 ||
                            row.getCell(0).getCellType() == HSSFCell.CELL_TYPE_STRING ||
                            row.getCell(1).getCellType() == HSSFCell.CELL_TYPE_STRING
                            
//                            row.getCell(ConfigFile.MA_DOI_TUONG_COL+1) == null ||
//                            row.getCell(0).getCellType() == HSSFCell.CELL_TYPE_STRING
//                            row.getCell(ConfigFile.X_COORDINATES_COL) == null ||
//                            row.getCell(ConfigFile.Y_COORDINATES_COL) == null ||
//                            row.getCell(ConfigFile.X_COORDINATES_COL).getCellType() == HSSFCell.CELL_TYPE_STRING ||
//                            row.getCell(ConfigFile.Y_COORDINATES_COL).getCellType() == HSSFCell.CELL_TYPE_STRING
                            ){
                        continue;   
                    }
                    
                    //Init Product Object
                    int tmp = 0;
                    Product product = new Product();
//                    product.setmStt((int)row.getCell(tmp++).getNumericCellValue());
                    tmp++;
                    if(row.getCell(1) != null)
                        if(row.getCell(1).getCellType() != HSSFCell.CELL_TYPE_STRING)
                            product.setmBarcode((new BigDecimal(row.getCell(1).getNumericCellValue())).toString());
                        else
                            product.setmBarcode(row.getCell(1).getStringCellValue());
                    if(row.getCell(1) != null)
                        product.setmProductID((new BigDecimal(row.getCell(1).getNumericCellValue())).toString());
                    if(row.getCell(2) != null)
                        product.setmProductName(row.getCell(2).getStringCellValue());
                    if(row.getCell(3) != null)
                        product.setmBrand(row.getCell(3).getStringCellValue());
                    if(row.getCell(4) != null)
                        product.setmOrigin(row.getCell(4).getStringCellValue());
                    if(row.getCell(5) != null)
                        product.setmPackingSpecifications(row.getCell(5).getNumericCellValue()+"");
                    
                    if(row.getCell(6) != null){
                        
                        product.setmQuantification(row.getCell(6).getStringCellValue());
                    
                    }
                    if(row.getCell(7) != null)
                        product.setmExportPrices((float)row.getCell(7).getNumericCellValue());
                    
                    product.setmProvider("nhacungcap1");
                    //Add to database
                    if(productDAO.saveOrUpdate(product)){
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
        productsTotal = total;
        return SUCCESS;
    }
    
    public String displayProducts(){
        productsList = productDAO.getProductList();
        providerIDList = providerDAO.getProvidersIDList();
        
        return SUCCESS;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }
    
    public String editProduct() throws UnsupportedEncodingException{
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        //request.setCharacterEncoding("UTF-8");
        providerIDList = providerDAO.getProvidersIDList();
        
        request.setCharacterEncoding("UTF8");
        
        String stt = request.getParameter("id_product");
        int st;
        if(stt ==null){
            return INPUT;
        }
        st = Integer.parseInt(stt);
        
        productsList = productDAO.getProductList();
        product = productDAO.loadProduct(st);
            
        return SUCCESS;
    }
    
    public String removeProduct() throws UnsupportedEncodingException{
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        //request.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF8");
        providerIDList = providerDAO.getProvidersIDList();
        
//        String stt = request.getParameter("id_product");
//        int st;
//        if(stt ==null){
//            return INPUT;
//        }
//        st = Integer.parseInt(stt);
        
        productsList = productDAO.getProductList();
        //product = productDAO.loadProduct(st);
            
        return SUCCESS;
    }
    
    public String updateProduct() throws UnsupportedEncodingException{
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF8");
        providerIDList = providerDAO.getProvidersIDList();
        
        System.out.println("id_product: "+id_product);
        
        //new product
        if(product.getmSerial() <= 0){
            
            System.out.println("OKsave" + product.getmProductID());
            boolean status = productDAO.saveOrUpdate(product);
            productsList = productDAO.getProductList();
            
            if(status){
                return SUCCESS;
            }
            return INPUT;
        }
        
        System.out.println("OK" + product.getmProductID());
        boolean status = productDAO.update(product);
        productsList = productDAO.getProductList();
        
        if(status){
            
            return SUCCESS;
        }
        
        return INPUT;
    }
    
    public String uploadAnImage(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        providerIDList = providerDAO.getProvidersIDList();
        
        String stt = request.getParameter("id_product");
        int st;
        if(stt ==null){
            return INPUT;
        }
        st = Integer.parseInt(stt);
        
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        String saveName = df.format(date)+"-"+document2.getFileFileName() ;
        
        try {
            
            System.out.println(document2.getFileContentType());
            String filePath = ServletActionContext.getServletContext().getRealPath("/product/"+ st+"/");
            System.out.println("Server path:" + filePath + "\\"+saveName);
            
            File fileToCreate = new File(filePath, saveName);
            FileUtils.copyFile(document2.getFile(), fileToCreate);
            
            //update the name
            System.out.println("OK" + product.getmProductID());
            product = productDAO.loadProduct(st);
            product.setmProductImage(saveName);
            boolean status = productDAO.update(product);
            productsList = productDAO.getProductList();
            
            id_product = st;
            
        } catch (IOException ex) {
            Logger.getLogger(ProductsAction.class.getName()).log(Level.SEVERE, null, ex);
            return INPUT;
        }
        return SUCCESS;
    }
    
    public String displayProduct(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        String para =  request.getParameter("id_pdct");
        
        int id_pdct = ValidateHandle.getInteger(para);
        if(id_pdct > -1){
            product = productDAO.loadProduct(id_pdct);
            providerIDList = providerDAO.getProvidersIDList();
            return SUCCESS;
        }
        else
            return INPUT;
    }
    
    public String redirect(){
        providerIDList = providerDAO.getProvidersIDList();
        return SUCCESS;
    }
}
