/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import com.googlecode.s2hibernate.struts2.plugin.util.HibernateSessionFactory;
import static com.googlecode.s2hibernate.struts2.plugin.util.HibernateSessionFactory.getSessionFactory;
import com.hp.domain.ReportSaleWithProduct;
import com.hp.domain.SaleOrder;
import com.hp.domain.SaleOrderDetail;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author HP
 */
public class SaleOrderDetailDAOImpl implements SaleOrderDetailDAO{
    public boolean saveOrUpdate(SaleOrderDetail pSaleOrder){
        Session session = HibernateSessionFactory.getSessionFactory().openSession();
        Transaction transaction;
        
        transaction = session.beginTransaction();
        try{
            
            session.save(pSaleOrder);
            session.getTransaction().commit();
        }catch(HibernateException e){
            transaction.rollback();
            return false;
        }
        finally {
            session.close();
        }
        
        return true;
    }
    
    public List<SaleOrderDetail> getDetailSaleOrdersList(String pID){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<SaleOrderDetail> courses = null;
        try{
                courses = session.createQuery("from SaleOrderDetail where takeOrderID='"+pID+"'").list();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
    
     public SaleOrderDetail getSaleOrderDetail(int pSaleOrderDetail){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        SaleOrderDetail courses = null;
        try{
                courses = (SaleOrderDetail)session.get(SaleOrderDetail.class, pSaleOrderDetail);
            
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
     
     @Override
    public boolean update(SaleOrderDetail pSaleOrderDetail){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        try{
            
            session.update(pSaleOrderDetail);
            session.getTransaction().commit();
        }catch(HibernateException e){
            transaction.rollback();
            return false;
        }
        finally {
            session.close();
        }
        
        return true;
    }
    
    @Override
    public boolean delete(SaleOrderDetail pSaleOrderDetail){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        try{
            
            session.delete(pSaleOrderDetail);
            session.getTransaction().commit();
        }catch(HibernateException e){
            transaction.rollback();
            return false;
        }
        finally {
            session.close();
        }
        
        return true;
    }
    
    @Override
    public boolean delete(String pID){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        try{
            Query q = session.createQuery("delete SaleOrderDetail where takeOrderID='"+pID+"'");
            q.executeUpdate();
            session.getTransaction().commit();
        }catch(HibernateException e){
            transaction.rollback();
            return false;
        }
        finally {
            session.close();
        }
        
        return true;
    }
    
    //Get report Sale order with products
    public List<ReportSaleWithProduct> getProductReportList(String pManagerID, String pStaff, String pCustomer, String pDate, String pToDate){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<ReportSaleWithProduct> courses = null;
        try{
            String datefinal="";
            String toDateFinal = "";
            System.out.println(" DATE: " + pDate); 
            if(pDate != null && pDate.compareTo("")!= 0 && pToDate.compareTo("") != 0){
                SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
                SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
                
                Date date = sdf.parse(pDate);
                datefinal = sdf2.format(date);
                
                Date date2 = sdf.parse(pToDate);
                toDateFinal = sdf2.format(date2);
                
                System.out.println(" DATECONVERT: " + datefinal );
            }
            String sql = "";
            
            if(pCustomer != null){
                if(datefinal.compareTo("") == 0){
                    sql = "select ROW_NUMBER() OVER (ORDER BY chitiet.chitietdondathang_ma_hang) as serial, \n" +
                            "            chitiet.chitietdondathang_ma_hang as id, \n" +
                            "		 chitiet.chitietdondathang_ten_san_pham as name, \n" +
                            "            chitiet.chitietdondathang_don_vi_tinh as unit,\n" +
                            "            chitiet.chitietdondathang_don_gia_truoc_thue as preTax,\n" +
                            "            chitiet.chitietdondathang_thue as tax,\n" +
                            "            chitiet.chitietdondathang_don_gia_sau_thue as afterTax,\n" +
                            "            sum(chitiet.chitietdondathang_so_luong) as quantity,\n" +
                            "            sum(chitiet.chitietdondathang_don_gia_sau_thue * chitiet.chitietdondathang_so_luong) as amount,\n" +
                            "            sum(chitiet.chitietdondathang_don_gia_sau_thue * chitiet.chitietdondathang_giam_gia * chitiet.chitietdondathang_so_luong/100) as discount,\n" +
                            "            sum(chitiet.chitietdondathang_thanh_tien) as revenue \n" +
                            "        from tb_chitietdondathang as chitiet, tb_hoadondathang as dathang\n" +
                            "	     where dathang.hoadondathang_ma_hoa_don = chitiet.chitietdondathang_ma_hoa_don\n" +
                            "			and dathang.hoadondathang_ma_khach_hang = '"+pCustomer+"'\n" +
                            "        group by chitiet.chitietdondathang_ma_hang, chitiet.chitietdondathang_ten_san_pham, \n" +
                            "            chitiet.chitietdondathang_don_vi_tinh,chitiet.chitietdondathang_don_gia_sau_thue,\n" +
                            "            chitiet.chitietdondathang_don_gia_truoc_thue,\n" +
                            "            chitiet.chitietdondathang_thue\n" +
                            "                \n" +
                            "        order by chitiet.chitietdondathang_ma_hang";
                }
                else{
                    sql = "select ROW_NUMBER() OVER (ORDER BY chitiet.chitietdondathang_ma_hang) as serial, \n" +
                            "		 chitiet.chitietdondathang_ma_hang as id, \n" +
                            "		 chitiet.chitietdondathang_ten_san_pham as name, \n" +
                            "            chitiet.chitietdondathang_don_vi_tinh as unit,\n" +
                            "            chitiet.chitietdondathang_don_gia_truoc_thue as preTax,\n" +
                            "            chitiet.chitietdondathang_thue as tax,\n" +
                            "            chitiet.chitietdondathang_don_gia_sau_thue as afterTax,\n" +
                            "            sum(chitiet.chitietdondathang_so_luong) as quantity,\n" +
                            "            sum(chitiet.chitietdondathang_don_gia_sau_thue * chitiet.chitietdondathang_so_luong) as amount,\n" +
                            "            sum(chitiet.chitietdondathang_don_gia_sau_thue * chitiet.chitietdondathang_giam_gia * chitiet.chitietdondathang_so_luong/100) as discount,\n" +
                            "            sum(chitiet.chitietdondathang_thanh_tien) as revenue \n" +
                            "        from tb_chitietdondathang as chitiet, tb_hoadondathang as dathang\n" +
                            "	     where dathang.hoadondathang_ma_hoa_don = chitiet.chitietdondathang_ma_hoa_don\n" +
                            "			and dathang.hoadondathang_ma_khach_hang = '"+pCustomer+"'\n" +
                            "			and cast(dathang.hoadondathang_ngay_dat_hang as date) BETWEEN '"+datefinal+"' and '"+toDateFinal+"'\n" +
                            "        group by chitiet.chitietdondathang_ma_hang, chitiet.chitietdondathang_ten_san_pham, \n" +
                            "            chitiet.chitietdondathang_don_vi_tinh,chitiet.chitietdondathang_don_gia_sau_thue,\n" +
                            "            chitiet.chitietdondathang_don_gia_truoc_thue,\n" +
                            "            chitiet.chitietdondathang_thue\n" +
                            "                \n" +
                            "        order by chitiet.chitietdondathang_ma_hang";
                }
            }
            else
                
            if(pStaff != null)
            {
                if(datefinal.compareTo("") == 0){
                    sql = "select ROW_NUMBER() OVER (ORDER BY chitiet.chitietdondathang_ma_hang) as serial, \n" +
                            "            chitiet.chitietdondathang_ma_hang as id, \n" +
                            "		 chitiet.chitietdondathang_ten_san_pham as name, \n" +
                            "            chitiet.chitietdondathang_don_vi_tinh as unit,\n" +
                            "            chitiet.chitietdondathang_don_gia_truoc_thue as preTax,\n" +
                            "            chitiet.chitietdondathang_thue as tax,\n" +
                            "            chitiet.chitietdondathang_don_gia_sau_thue as afterTax,\n" +
                            "            sum(chitiet.chitietdondathang_so_luong) as quantity,\n" +
                            "            sum(chitiet.chitietdondathang_don_gia_sau_thue * chitiet.chitietdondathang_so_luong) as amount,\n" +
                            "            sum(chitiet.chitietdondathang_don_gia_sau_thue * chitiet.chitietdondathang_giam_gia * chitiet.chitietdondathang_so_luong/100) as discount,\n" +
                            "            sum(chitiet.chitietdondathang_thanh_tien) as revenue \n" +
                            "        from tb_chitietdondathang as chitiet, tb_hoadondathang as dathang\n" +
                            "	     where dathang.hoadondathang_ma_hoa_don = chitiet.chitietdondathang_ma_hoa_don\n" +
                            "			and dathang.hoadondathang_nguoi_tao = '"+pStaff+"'\n" +
                            "        group by chitiet.chitietdondathang_ma_hang, chitiet.chitietdondathang_ten_san_pham, \n" +
                            "            chitiet.chitietdondathang_don_vi_tinh,chitiet.chitietdondathang_don_gia_sau_thue,\n" +
                            "            chitiet.chitietdondathang_don_gia_truoc_thue,\n" +
                            "            chitiet.chitietdondathang_thue\n" +
                            "                \n" +
                            "        order by chitiet.chitietdondathang_ma_hang";
                }
                else{
                    sql = "select ROW_NUMBER() OVER (ORDER BY chitiet.chitietdondathang_ma_hang) as serial, \n" +
                        "	     chitiet.chitietdondathang_ma_hang as id, \n" +
                        "	     chitiet.chitietdondathang_ten_san_pham as name, \n" +
                        "            chitiet.chitietdondathang_don_vi_tinh as unit,\n" +
                        "            chitiet.chitietdondathang_don_gia_truoc_thue as preTax,\n" +
                        "            chitiet.chitietdondathang_thue as tax,\n" +
                        "            chitiet.chitietdondathang_don_gia_sau_thue as afterTax,\n" +
                        "            sum(chitiet.chitietdondathang_so_luong) as quantity,\n" +
                        "            sum(chitiet.chitietdondathang_don_gia_sau_thue * chitiet.chitietdondathang_so_luong) as amount,\n" +
                        "            sum(chitiet.chitietdondathang_don_gia_sau_thue * chitiet.chitietdondathang_giam_gia * chitiet.chitietdondathang_so_luong/100) as discount,\n" +
                        "            sum(chitiet.chitietdondathang_thanh_tien) as revenue \n" +
                        "        from tb_chitietdondathang as chitiet, tb_hoadondathang as dathang\n" +
                        "	 where dathang.hoadondathang_ma_hoa_don = chitiet.chitietdondathang_ma_hoa_don\n" +
                        "			and dathang.hoadondathang_nguoi_tao = '"+pStaff+"'\n" +
                        "			and cast(dathang.hoadondathang_ngay_dat_hang as date) BETWEEN '"+datefinal+"' and '"+toDateFinal+"'\n" +
                        "        group by chitiet.chitietdondathang_ma_hang, chitiet.chitietdondathang_ten_san_pham, \n" +
                        "            chitiet.chitietdondathang_don_vi_tinh,chitiet.chitietdondathang_don_gia_sau_thue,\n" +
                        "            chitiet.chitietdondathang_don_gia_truoc_thue,\n" +
                        "            chitiet.chitietdondathang_thue\n" +
                        "                \n" +
                        "        order by chitiet.chitietdondathang_ma_hang";
                }
            }
            else 
            if(pManagerID != null){
                if(datefinal.compareTo("") == 0){
                    sql = "select ROW_NUMBER() OVER (ORDER BY chitiet.chitietdondathang_ma_hang) as serial, \n" +
                    "		 chitiet.chitietdondathang_ma_hang as id, \n" +
                    "		 chitiet.chitietdondathang_ten_san_pham as name, \n" +
                    "            chitiet.chitietdondathang_don_vi_tinh as unit,\n" +
                    "            chitiet.chitietdondathang_don_gia_truoc_thue as preTax,\n" +
                    "            chitiet.chitietdondathang_thue as tax,\n" +
                    "            chitiet.chitietdondathang_don_gia_sau_thue as afterTax,\n" +
                    "            sum(chitiet.chitietdondathang_so_luong) as quantity,\n" +
                    "            sum(chitiet.chitietdondathang_don_gia_sau_thue * chitiet.chitietdondathang_so_luong) as amount,\n" +
                    "            sum(chitiet.chitietdondathang_don_gia_sau_thue * chitiet.chitietdondathang_giam_gia * chitiet.chitietdondathang_so_luong/100) as discount,\n" +
                    "            sum(chitiet.chitietdondathang_thanh_tien) as revenue \n" +
                    "        from tb_chitietdondathang as chitiet, tb_hoadondathang as dathang, tb_nhanvien as nv\n" +
                    "	     where dathang.hoadondathang_ma_hoa_don = chitiet.chitietdondathang_ma_hoa_don\n" +
                    "			and nv.nhanvien_ma_nhan_vien = dathang.hoadondathang_nguoi_tao\n" +
                    "			and nv.nhanvien_nguoi_quan_ly = '" +pManagerID +"'\n" +
                    "        group by chitiet.chitietdondathang_ma_hang, chitiet.chitietdondathang_ten_san_pham, \n" +
                    "            chitiet.chitietdondathang_don_vi_tinh,chitiet.chitietdondathang_don_gia_sau_thue,\n" +
                    "            chitiet.chitietdondathang_don_gia_truoc_thue,\n" +
                    "            chitiet.chitietdondathang_thue\n" +
                    "                \n" +
                    "        order by chitiet.chitietdondathang_ma_hang";
                }
                else{
                    sql = "select ROW_NUMBER() OVER (ORDER BY chitiet.chitietdondathang_ma_hang) as serial, \n" +
                    "		 chitiet.chitietdondathang_ma_hang as id, \n" +
                    "		 chitiet.chitietdondathang_ten_san_pham as name, \n" +
                    "            chitiet.chitietdondathang_don_vi_tinh as unit,\n" +
                    "            chitiet.chitietdondathang_don_gia_truoc_thue as preTax,\n" +
                    "            chitiet.chitietdondathang_thue as tax,\n" +
                    "            chitiet.chitietdondathang_don_gia_sau_thue as afterTax,\n" +
                    "            sum(chitiet.chitietdondathang_so_luong) as quantity,\n" +
                    "            sum(chitiet.chitietdondathang_don_gia_sau_thue * chitiet.chitietdondathang_so_luong) as amount,\n" +
                    "            sum(chitiet.chitietdondathang_don_gia_sau_thue * chitiet.chitietdondathang_giam_gia * chitiet.chitietdondathang_so_luong/100) as discount,\n" +
                    "            sum(chitiet.chitietdondathang_thanh_tien) as revenue \n" +
                    "        from tb_chitietdondathang as chitiet, tb_hoadondathang as dathang, tb_nhanvien as nv\n" +
                    "	     where dathang.hoadondathang_ma_hoa_don = chitiet.chitietdondathang_ma_hoa_don\n" +
                    "			and nv.nhanvien_ma_nhan_vien = dathang.hoadondathang_nguoi_tao\n" +
                    "			and nv.nhanvien_nguoi_quan_ly = '" +pManagerID +"'\n" +
                    "			and cast(dathang.hoadondathang_ngay_dat_hang as date) BETWEEN '"+datefinal+"' and '"+toDateFinal+"'\n" +
                    "        group by chitiet.chitietdondathang_ma_hang, chitiet.chitietdondathang_ten_san_pham, \n" +
                    "            chitiet.chitietdondathang_don_vi_tinh,chitiet.chitietdondathang_don_gia_sau_thue,\n" +
                    "            chitiet.chitietdondathang_don_gia_truoc_thue,\n" +
                    "            chitiet.chitietdondathang_thue\n" +
                    "                \n" +
                    "        order by chitiet.chitietdondathang_ma_hang";
                }
            }
            else{
                if(datefinal.compareTo("") == 0){
                    sql = "select  ROW_NUMBER() OVER (ORDER BY chitietdondathang_ma_hang) as serial,"+ 
                        "       chitietdondathang_ma_hang as id, chitietdondathang_ten_san_pham as name, \n" +
                        "	chitietdondathang_don_vi_tinh as unit,\n" +
                        "	chitietdondathang_don_gia_truoc_thue as preTax,\n" +
                        "	chitietdondathang_thue as tax,\n" +
                        "	chitietdondathang_don_gia_sau_thue as afterTax,\n" +
                        "	sum(chitietdondathang_so_luong) as quantity,\n" +
                        "	sum(chitietdondathang_don_gia_sau_thue * chitietdondathang_so_luong) as amount,\n" +
                        "	sum(chitietdondathang_don_gia_sau_thue * chitietdondathang_giam_gia * chitietdondathang_so_luong/100) as discount,\n" +
                        "	sum(chitietdondathang_thanh_tien) as revenue \n" +
                        "from tb_chitietdondathang \n" +
                        "group by chitietdondathang_ma_hang, chitietdondathang_ten_san_pham, \n" +
                        "	chitietdondathang_don_vi_tinh,chitietdondathang_don_gia_sau_thue,\n" +
                        "	chitietdondathang_don_gia_truoc_thue,\n" +
                        "	chitietdondathang_thue\n" +
                        " \n" +
                        "order by chitietdondathang_ma_hang";
                }
                else
                    sql = "select ROW_NUMBER() OVER (ORDER BY chitiet.chitietdondathang_ma_hang) as serial, \n" +
                        "	     chitiet.chitietdondathang_ma_hang as id, \n" +
                        "	     chitiet.chitietdondathang_ten_san_pham as name, \n" +
                        "            chitiet.chitietdondathang_don_vi_tinh as unit,\n" +
                        "            chitiet.chitietdondathang_don_gia_truoc_thue as preTax,\n" +
                        "            chitiet.chitietdondathang_thue as tax,\n" +
                        "            chitiet.chitietdondathang_don_gia_sau_thue as afterTax,\n" +
                        "            sum(chitiet.chitietdondathang_so_luong) as quantity,\n" +
                        "            sum(chitiet.chitietdondathang_don_gia_sau_thue * chitiet.chitietdondathang_so_luong) as amount,\n" +
                        "            sum(chitiet.chitietdondathang_don_gia_sau_thue * chitiet.chitietdondathang_giam_gia * chitiet.chitietdondathang_so_luong/100) as discount,\n" +
                        "            sum(chitiet.chitietdondathang_thanh_tien) as revenue \n" +
                        "        from tb_chitietdondathang as chitiet, tb_hoadondathang as dathang\n" +
                        "        where dathang.hoadondathang_ma_hoa_don = chitiet.chitietdondathang_ma_hoa_don\n" +
                        "			\n" +
                        "			and cast(dathang.hoadondathang_ngay_dat_hang as date) BETWEEN '"+datefinal+"' and '"+toDateFinal+"'\n" +
                        "        group by chitiet.chitietdondathang_ma_hang, chitiet.chitietdondathang_ten_san_pham, \n" +
                        "            chitiet.chitietdondathang_don_vi_tinh,chitiet.chitietdondathang_don_gia_sau_thue,\n" +
                        "            chitiet.chitietdondathang_don_gia_truoc_thue,\n" +
                        "            chitiet.chitietdondathang_thue\n" +
                        "                \n" +
                        "        order by chitiet.chitietdondathang_ma_hang";
            }
            
            courses = session.createSQLQuery(sql).addEntity(ReportSaleWithProduct.class).list();
            
            //courses = (List<ReportSaleWithProduct>)query.list();
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
}
