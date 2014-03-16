USE [DMSServer]
GO
/****** Object:  Table [dbo].[tb_chitietdonbanhang]    Script Date: 3/17/2014 1:05:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_chitietdonbanhang](
	[chitietdonbanhang_stt] [int] IDENTITY(1,1) NOT NULL,
	[chitietdonbanhang_ma_hoa_don] [varchar](100) NULL,
	[chitietdonbanhang_dong] [int] NULL,
	[chitietdonbanhang_ma_hang] [varchar](100) NULL,
	[chitietdonbanhang_ma_vach] [varchar](100) NULL,
	[chitietdonbanhang_ten_san_pham] [nvarchar](200) NULL,
	[chitietdonbanhang_don_gia_sau_thue] [float] NULL,
	[chitietdonbanhang_don_gia_truoc_thue] [float] NULL,
	[chitietdonbanhang_thue] [float] NULL,
	[chitietdonbanhang_giam_gia] [float] NULL,
	[chitietdonbanhang_thanh_tien] [float] NULL,
	[chitietdonbanhang_ma_kho] [varchar](100) NULL,
	[chitietdonbanhang_so_luong] [int] NULL,
	[chitietdonbanhang_don_vi_tinh] [nvarchar](100) NULL,
	[chitietdonbanhang_ty_gia] [float] NULL,
 CONSTRAINT [PK_tb_chitietdonbanhang_1] PRIMARY KEY CLUSTERED 
(
	[chitietdonbanhang_stt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_hoadonbanhang]    Script Date: 3/17/2014 1:05:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_hoadonbanhang](
	[hoadonbanhang_stt] [int] IDENTITY(1,1) NOT NULL,
	[hoadonbanhang_ma_hoa_don] [varchar](100) NOT NULL,
	[hoadonbanhang_ngay_ban_hang] [datetime] NULL,
	[hoadonbanhang_ngay_giao_hang_du_kien] [datetime] NULL,
	[hoadonbanhang_ma_khach_hang] [varchar](100) NOT NULL,
	[hoadonbanhang_ten_khach_hang] [nvarchar](100) NULL,
	[hoadonbanhang_dia_chi] [nvarchar](100) NULL,
	[hoadonbanhang_so_dien_thoai] [nvarchar](50) NULL,
	[hoadonbanhang_dia_chi_giao_hang] [nvarchar](100) NULL,
	[hoadonbanhang_hinh_thuc_van_chuyen] [nvarchar](100) NULL,
	[hoadonbanhang_thue] [float] NULL,
	[hoadonbanhang_tien_truoc_thue] [float] NULL,
	[hoadonbanhang_tien_sau_thue] [float] NULL,
	[hoadonbanhang_giam_gia] [float] NULL,
	[hoadonbanhang_trang_thai_don_hang] [int] NOT NULL,
	[hoadonbanhang_ngay_tao_hoa_don] [datetime] NULL,
	[hoadonbanhang_ngay_sua_hoa_don] [datetime] NULL,
	[hoadonbanhang_nguoi_tao] [varchar](100) NOT NULL,
	[hoadonbanhang_nguoi_sua] [varchar](100) NULL,
 CONSTRAINT [PK_tb_hoadonbanhang] PRIMARY KEY CLUSTERED 
(
	[hoadonbanhang_ma_hoa_don] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tb_chitietdonbanhang] ADD  CONSTRAINT [DF_tb_chitietdonbanhang_chitietdonbanhang_don_gia_sau_thue]  DEFAULT (NULL) FOR [chitietdonbanhang_don_gia_sau_thue]
GO
ALTER TABLE [dbo].[tb_chitietdonbanhang] ADD  CONSTRAINT [DF_tb_chitietdonbanhang_chitietdonbanhang_don_gia_truoc_thue]  DEFAULT (NULL) FOR [chitietdonbanhang_don_gia_truoc_thue]
GO
ALTER TABLE [dbo].[tb_chitietdonbanhang] ADD  CONSTRAINT [DF_tb_chitietdonbanhang_chitietdonbanhang_thue]  DEFAULT (NULL) FOR [chitietdonbanhang_thue]
GO
ALTER TABLE [dbo].[tb_chitietdonbanhang] ADD  CONSTRAINT [DF_tb_chitietdonbanhang_chitietdonbanhang_giam_gia]  DEFAULT (NULL) FOR [chitietdonbanhang_giam_gia]
GO
ALTER TABLE [dbo].[tb_chitietdonbanhang] ADD  CONSTRAINT [DF_tb_chitietdonbanhang_chitietdonbanhang_thanh_tien]  DEFAULT (NULL) FOR [chitietdonbanhang_thanh_tien]
GO
ALTER TABLE [dbo].[tb_chitietdonbanhang] ADD  CONSTRAINT [DF_tb_chitietdonbanhang_chitietdonbanhang_ty_gia]  DEFAULT (NULL) FOR [chitietdonbanhang_ty_gia]
GO
ALTER TABLE [dbo].[tb_hoadonbanhang] ADD  CONSTRAINT [DF_tb_hoadonbanhang_hoadonbanhang_thue]  DEFAULT (NULL) FOR [hoadonbanhang_thue]
GO
ALTER TABLE [dbo].[tb_hoadonbanhang] ADD  CONSTRAINT [DF_tb_hoadonbanhang_hoadonbanhang_tien_truoc_thue]  DEFAULT (NULL) FOR [hoadonbanhang_tien_truoc_thue]
GO
ALTER TABLE [dbo].[tb_hoadonbanhang] ADD  CONSTRAINT [DF_tb_hoadonbanhang_hoadonbanhang_tien_sau_thue]  DEFAULT (NULL) FOR [hoadonbanhang_tien_sau_thue]
GO
ALTER TABLE [dbo].[tb_hoadonbanhang] ADD  CONSTRAINT [DF_tb_hoadonbanhang_hoadonbanhang_giam_gia]  DEFAULT (NULL) FOR [hoadonbanhang_giam_gia]
GO
ALTER TABLE [dbo].[tb_hoadonbanhang] ADD  CONSTRAINT [DF_tb_hoadonbanhang_hoadonbanhang_trang_thai_don_hang]  DEFAULT (NULL) FOR [hoadonbanhang_trang_thai_don_hang]
GO
ALTER TABLE [dbo].[tb_chitietdonbanhang]  WITH CHECK ADD  CONSTRAINT [FK_tb_chitietdonbanhang_tb_hoadonbanhang] FOREIGN KEY([chitietdonbanhang_ma_hoa_don])
REFERENCES [dbo].[tb_hoadonbanhang] ([hoadonbanhang_ma_hoa_don])
GO
ALTER TABLE [dbo].[tb_chitietdonbanhang] CHECK CONSTRAINT [FK_tb_chitietdonbanhang_tb_hoadonbanhang]
GO
ALTER TABLE [dbo].[tb_chitietdonbanhang]  WITH CHECK ADD  CONSTRAINT [FK_tb_chitietdonbanhang_tb_sanpham] FOREIGN KEY([chitietdonbanhang_ma_vach])
REFERENCES [dbo].[tb_sanpham] ([sanpham_ma_vach])
GO
ALTER TABLE [dbo].[tb_chitietdonbanhang] CHECK CONSTRAINT [FK_tb_chitietdonbanhang_tb_sanpham]
GO
ALTER TABLE [dbo].[tb_hoadonbanhang]  WITH CHECK ADD  CONSTRAINT [FK_tb_hoadonbanhang_tb_khachhang_id_kh] FOREIGN KEY([hoadonbanhang_ma_khach_hang])
REFERENCES [dbo].[tb_khachhang] ([khachhang_ma_dt])
GO
ALTER TABLE [dbo].[tb_hoadonbanhang] CHECK CONSTRAINT [FK_tb_hoadonbanhang_tb_khachhang_id_kh]
GO
ALTER TABLE [dbo].[tb_hoadonbanhang]  WITH CHECK ADD  CONSTRAINT [FK_tb_hoadonbanhang_tb_nhanvien] FOREIGN KEY([hoadonbanhang_nguoi_tao])
REFERENCES [dbo].[tb_nhanvien] ([nhanvien_ma_nhan_vien])
GO
ALTER TABLE [dbo].[tb_hoadonbanhang] CHECK CONSTRAINT [FK_tb_hoadonbanhang_tb_nhanvien]
GO
ALTER TABLE [dbo].[tb_hoadonbanhang]  WITH CHECK ADD  CONSTRAINT [FK_tb_hoadonbanhang_tb_nhanvien1] FOREIGN KEY([hoadonbanhang_nguoi_sua])
REFERENCES [dbo].[tb_nhanvien] ([nhanvien_ma_nhan_vien])
GO
ALTER TABLE [dbo].[tb_hoadonbanhang] CHECK CONSTRAINT [FK_tb_hoadonbanhang_tb_nhanvien1]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'dang ban hang, da duyet, hoan thanh, huy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_hoadonbanhang', @level2type=N'COLUMN',@level2name=N'hoadonbanhang_trang_thai_don_hang'
GO
