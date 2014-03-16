USE [DMSServer]
GO
/****** Object:  Table [dbo].[tb_chitietdontrahang]    Script Date: 3/17/2014 1:19:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_chitietdontrahang](
	[chitietdontrahang_stt] [int] IDENTITY(1,1) NOT NULL,
	[chitietdontrahang_ma_hoa_don] [varchar](100) NULL,
	[chitietdontrahang_dong] [int] NULL,
	[chitietdontrahang_ma_hang] [varchar](100) NULL,
	[chitietdontrahang_ma_vach] [varchar](100) NULL,
	[chitietdontrahang_ten_san_pham] [nvarchar](200) NULL,
	[chitietdontrahang_don_gia_sau_thue] [float] NULL,
	[chitietdontrahang_don_gia_truoc_thue] [float] NULL,
	[chitietdontrahang_thue] [float] NULL,
	[chitietdontrahang_giam_gia] [float] NULL,
	[chitietdontrahang_thanh_tien] [float] NULL,
	[chitietdontrahang_ma_kho] [varchar](100) NULL,
	[chitietdontrahang_so_luong] [int] NULL,
	[chitietdontrahang_don_vi_tinh] [nvarchar](100) NULL,
	[chitietdontrahang_ty_gia] [float] NULL,
 CONSTRAINT [PK_tb_chitietdontrahang_1] PRIMARY KEY CLUSTERED 
(
	[chitietdontrahang_stt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_hoadontrahang]    Script Date: 3/17/2014 1:19:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_hoadontrahang](
	[hoadontrahang_stt] [int] IDENTITY(1,1) NOT NULL,
	[hoadontrahang_ma_hoa_don] [varchar](100) NOT NULL,
	[hoadontrahang_ngay_tra_hang] [datetime] NULL,
	[hoadontrahang_ngay_giao_hang_du_kien] [datetime] NULL,
	[hoadontrahang_ma_khach_hang] [varchar](100) NOT NULL,
	[hoadontrahang_ten_khach_hang] [nvarchar](100) NULL,
	[hoadontrahang_dia_chi] [nvarchar](100) NULL,
	[hoadontrahang_so_dien_thoai] [nvarchar](50) NULL,
	[hoadontrahang_dia_chi_giao_hang] [nvarchar](100) NULL,
	[hoadontrahang_hinh_thuc_van_chuyen] [nvarchar](100) NULL,
	[hoadontrahang_thue] [float] NULL,
	[hoadontrahang_tien_truoc_thue] [float] NULL,
	[hoadontrahang_tien_sau_thue] [float] NULL,
	[hoadontrahang_giam_gia] [float] NULL,
	[hoadontrahang_trang_thai_don_hang] [int] NOT NULL,
	[hoadontrahang_ngay_tao_hoa_don] [datetime] NULL,
	[hoadontrahang_ngay_sua_hoa_don] [datetime] NULL,
	[hoadontrahang_nguoi_tao] [varchar](100) NOT NULL,
	[hoadontrahang_nguoi_sua] [varchar](100) NULL,
 CONSTRAINT [PK_tb_hoadontrahang] PRIMARY KEY CLUSTERED 
(
	[hoadontrahang_ma_hoa_don] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tb_chitietdontrahang] ADD  CONSTRAINT [DF_tb_chitietdontrahang_chitietdontrahang_don_gia_sau_thue]  DEFAULT (NULL) FOR [chitietdontrahang_don_gia_sau_thue]
GO
ALTER TABLE [dbo].[tb_chitietdontrahang] ADD  CONSTRAINT [DF_tb_chitietdontrahang_chitietdontrahang_don_gia_truoc_thue]  DEFAULT (NULL) FOR [chitietdontrahang_don_gia_truoc_thue]
GO
ALTER TABLE [dbo].[tb_chitietdontrahang] ADD  CONSTRAINT [DF_tb_chitietdontrahang_chitietdontrahang_thue]  DEFAULT (NULL) FOR [chitietdontrahang_thue]
GO
ALTER TABLE [dbo].[tb_chitietdontrahang] ADD  CONSTRAINT [DF_tb_chitietdontrahang_chitietdontrahang_giam_gia]  DEFAULT (NULL) FOR [chitietdontrahang_giam_gia]
GO
ALTER TABLE [dbo].[tb_chitietdontrahang] ADD  CONSTRAINT [DF_tb_chitietdontrahang_chitietdontrahang_thanh_tien]  DEFAULT (NULL) FOR [chitietdontrahang_thanh_tien]
GO
ALTER TABLE [dbo].[tb_chitietdontrahang] ADD  CONSTRAINT [DF_tb_chitietdontrahang_chitietdontrahang_ty_gia]  DEFAULT (NULL) FOR [chitietdontrahang_ty_gia]
GO
ALTER TABLE [dbo].[tb_hoadontrahang] ADD  CONSTRAINT [DF_tb_hoadontrahang_hoadontrahang_thue]  DEFAULT (NULL) FOR [hoadontrahang_thue]
GO
ALTER TABLE [dbo].[tb_hoadontrahang] ADD  CONSTRAINT [DF_tb_hoadontrahang_hoadontrahang_tien_truoc_thue]  DEFAULT (NULL) FOR [hoadontrahang_tien_truoc_thue]
GO
ALTER TABLE [dbo].[tb_hoadontrahang] ADD  CONSTRAINT [DF_tb_hoadontrahang_hoadontrahang_tien_sau_thue]  DEFAULT (NULL) FOR [hoadontrahang_tien_sau_thue]
GO
ALTER TABLE [dbo].[tb_hoadontrahang] ADD  CONSTRAINT [DF_tb_hoadontrahang_hoadontrahang_giam_gia]  DEFAULT (NULL) FOR [hoadontrahang_giam_gia]
GO
ALTER TABLE [dbo].[tb_hoadontrahang] ADD  CONSTRAINT [DF_tb_hoadontrahang_hoadontrahang_trang_thai_don_hang]  DEFAULT (NULL) FOR [hoadontrahang_trang_thai_don_hang]
GO
ALTER TABLE [dbo].[tb_chitietdontrahang]  WITH CHECK ADD  CONSTRAINT [FK_tb_chitietdontrahang_tb_hoadontrahang] FOREIGN KEY([chitietdontrahang_ma_hoa_don])
REFERENCES [dbo].[tb_hoadontrahang] ([hoadontrahang_ma_hoa_don])
GO
ALTER TABLE [dbo].[tb_chitietdontrahang] CHECK CONSTRAINT [FK_tb_chitietdontrahang_tb_hoadontrahang]
GO
ALTER TABLE [dbo].[tb_chitietdontrahang]  WITH CHECK ADD  CONSTRAINT [FK_tb_chitietdontrahang_tb_sanpham] FOREIGN KEY([chitietdontrahang_ma_vach])
REFERENCES [dbo].[tb_sanpham] ([sanpham_ma_vach])
GO
ALTER TABLE [dbo].[tb_chitietdontrahang] CHECK CONSTRAINT [FK_tb_chitietdontrahang_tb_sanpham]
GO
ALTER TABLE [dbo].[tb_hoadontrahang]  WITH CHECK ADD  CONSTRAINT [FK_tb_hoadontrahang_tb_khachhang_id_kh] FOREIGN KEY([hoadontrahang_ma_khach_hang])
REFERENCES [dbo].[tb_khachhang] ([khachhang_ma_dt])
GO
ALTER TABLE [dbo].[tb_hoadontrahang] CHECK CONSTRAINT [FK_tb_hoadontrahang_tb_khachhang_id_kh]
GO
ALTER TABLE [dbo].[tb_hoadontrahang]  WITH CHECK ADD  CONSTRAINT [FK_tb_hoadontrahang_tb_nhanvien] FOREIGN KEY([hoadontrahang_nguoi_tao])
REFERENCES [dbo].[tb_nhanvien] ([nhanvien_ma_nhan_vien])
GO
ALTER TABLE [dbo].[tb_hoadontrahang] CHECK CONSTRAINT [FK_tb_hoadontrahang_tb_nhanvien]
GO
ALTER TABLE [dbo].[tb_hoadontrahang]  WITH CHECK ADD  CONSTRAINT [FK_tb_hoadontrahang_tb_nhanvien1] FOREIGN KEY([hoadontrahang_nguoi_sua])
REFERENCES [dbo].[tb_nhanvien] ([nhanvien_ma_nhan_vien])
GO
ALTER TABLE [dbo].[tb_hoadontrahang] CHECK CONSTRAINT [FK_tb_hoadontrahang_tb_nhanvien1]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'dang tra hang, da duyet, hoan thanh, huy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_hoadontrahang', @level2type=N'COLUMN',@level2name=N'hoadontrahang_trang_thai_don_hang'
GO
