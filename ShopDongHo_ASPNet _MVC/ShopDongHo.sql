USE [master]
GO
/****** Object:  Database [ShopDongHo]    Script Date: 6/10/2023 11:23:24 PM ******/
CREATE DATABASE [ShopDongHo]
GO
ALTER DATABASE [ShopDongHo] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopDongHo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopDongHo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopDongHo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopDongHo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopDongHo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopDongHo] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopDongHo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ShopDongHo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopDongHo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopDongHo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopDongHo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopDongHo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopDongHo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopDongHo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopDongHo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopDongHo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShopDongHo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopDongHo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopDongHo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopDongHo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopDongHo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopDongHo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopDongHo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopDongHo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopDongHo] SET  MULTI_USER 
GO
ALTER DATABASE [ShopDongHo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopDongHo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopDongHo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopDongHo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopDongHo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopDongHo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ShopDongHo] SET QUERY_STORE = ON
GO
ALTER DATABASE [ShopDongHo] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ShopDongHo]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 6/10/2023 11:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenChatLieu] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatHang]    Script Date: 6/10/2023 11:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NhanVien_ID] [int] NULL,
	[KhachHang_ID] [int] NULL,
	[DienThoaiGiaoHang] [nvarchar](20) NULL,
	[DiaChiGiaoHang] [nvarchar](255) NULL,
	[NgayDatHang] [datetime] NULL,
	[TinhTrang] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatHang_ChiTiet]    Script Date: 6/10/2023 11:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatHang_ChiTiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DatHang_ID] [int] NULL,
	[DongHo_ID] [int] NULL,
	[SoLuong] [smallint] NULL,
	[DonGia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongHo]    Script Date: 6/10/2023 11:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongHo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ThuongHieu_ID] [int] NULL,
	[TenLoai_ID] [int] NULL,
	[ChatLieu_ID] [int] NULL,
	[XuatXu_ID] [int] NULL,
	[TenDongHo] [nvarchar](255) NULL,
	[MauSac] [nvarchar](255) NULL,
	[HanBaoHanh] [int] NULL,
	[DonGia] [int] NULL,
	[SoLuong] [int] NULL,
	[HinhAnhDH] [nvarchar](255) NULL,
	[MoTa] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/10/2023 11:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoVaten] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiDH]    Script Date: 6/10/2023 11:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDH](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/10/2023 11:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoVaTen] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](255) NULL,
	[Quyen] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 6/10/2023 11:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenThuongHieu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XuatXu]    Script Date: 6/10/2023 11:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XuatXu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenQG] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChatLieu] ON 

INSERT [dbo].[ChatLieu] ([ID], [TenChatLieu]) VALUES (1, N'Nhựa')
INSERT [dbo].[ChatLieu] ([ID], [TenChatLieu]) VALUES (2, N'Thép')
INSERT [dbo].[ChatLieu] ([ID], [TenChatLieu]) VALUES (4, N'Titanium')
INSERT [dbo].[ChatLieu] ([ID], [TenChatLieu]) VALUES (5, N'Bạch kim')
INSERT [dbo].[ChatLieu] ([ID], [TenChatLieu]) VALUES (8, N'Sợi Carbon')
SET IDENTITY_INSERT [dbo].[ChatLieu] OFF
GO
SET IDENTITY_INSERT [dbo].[DongHo] ON 

INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (16, 11, 1, 5, 2, N'Đồng Hồ ORIENT Star 41 mm RE-AV0120L00B', N'Bạch Kim', 12, 7505000, 15, N'Storage/133295756995342376_orient-1.jpg', N'<p>•&nbsp;Với hơn 50 năm kinh nghiệm trong ngành đồng hồ, thương hiệu Orient của Nhật Bản đã xây dựng được sự uy tín và chất lượng đáng tin cậy. Đó là một trong những lý do giúp cho những chiếc đồng hồ của hãng trở nên nổi tiếng và được yêu thích trên toàn thế giới nói chung và Việt Nam nói riêng.&nbsp;</p><p>•&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay/orient-star-re-av0120l00b-nam">Đồng hồ Orient Star 41 mm Nam RE-AV0120L00B</a> mang phong cách Classic cổ điển, ấn tượng đầu tiên bạn cảm nhận thấy sẽ là kiểu dáng khoẻ khoắn và vô cùng mạnh mẽ, ấn tượng với những chi tiết được gia công đầy tỉ mỉ. Đặc biệt, mặt đồng hồ được thiết kế lộ cơ, giúp bạn có thể chiêm ngưỡng toàn bộ quá trình hoạt động của bộ máy bên trong.&nbsp;</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/305852/orient-star-re-av0120l00b-nam-22.jpg" alt="Chất liệu mặt kính và khung viền của mẫu đồng hồ"></figure><p>•&nbsp;Hãng đã trang bị dạ quang cho <a href="https://www.thegioididong.com/dong-ho-deo-tay-nam">đồng hồ nam</a> này giúp cho người dùng có thể dễ dàng xem giờ vào ban đêm hay trong điều kiện thiếu sáng. Ngoài ra, tính năng kim đo thời gian tích cót cho phép người dùng đo thời gian được tích lũy trong một khoảng thời gian nhất định, tính năng này có nhiều ứng dụng trong các hoạt động đo thời gian, chẳng hạn như đua xe, đua thuyền, hay các hoạt động thể thao khác. Kim đo thời gian tích cót cũng là một công cụ hữu ích cho những người yêu thích đồng hồ và muốn sử dụng thời gian một cách chính xác.&nbsp;</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/305852/orient-star-re-av0120l00b-nam-24.jpg" alt="Khả năng kháng nước của mẫu đồng hồ"></figure><p>•&nbsp;Đặc biệt, <a href="https://www.thegioididong.com/dong-ho-deo-tay-orient">đồng hồ Orient</a>&nbsp;gần như phù hợp với mọi kích cỡ cổ tay của người Châu Á nói chung và Việt Nam nói riêng, từ nhỏ đến trung bình với đường kính mặt là <strong>41 mm</strong>. Ngoài ra, mặt kính của sản phẩm là kính Sapphire, có khả năng chống trầy và độ trong suốt tốt giúp bạn an tâm khi sử dụng.&nbsp;</p><p>•&nbsp;Khung viền được chế tạo từ thép không gỉ sáng bóng cùng khả năng chống chịu va đập đồng thời hạn chế ăn mòn khá tốt giúp người dùng có thể yên tâm khi sử dụng. Đặc biệt, dây đeo của sản phẩm được sử dụng công nghệ mạ PVD tiên tiến kết hợp với chất liệu là thép không gỉ giúp tăng độ bóng bẩy so với các mẫu <a href="https://www.thegioididong.com/dong-ho-deo-tay">đồng hồ</a> thông thường.</p>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (17, 11, 1, 2, 1, N'Đồng Hồ ORIENT 43.5 mm Nam RA-BA0003L10B 8̶,̶1̶4̶0̶,̶0̶0̶0̶ VND -50%', N'Bạch Kim', 24, 4080000, 30, N'Storage/133296030455468371_orient-2.jpg', N'<p>•&nbsp;Orient - thương hiệu lâu đời của Nhật Bản với hơn 100 năm kinh nghiệm trong lĩnh vực đồng hồ, sự uy tín và chất lượng của hãng đã góp phần lớn làm nên tên tuổi cho những chiếc đồng hồ của xứ sở hoa anh đào này.&nbsp;</p><p>•&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay/orient-ra-ba0003l10b-nam">Đồng hồ Orient 43.5 mm Nam RA-BA0003L10B</a> có thiết kế nổi bật với phần dây đeo kim loại màu bạc sang trọng cùng điểm nhấn màu xanh trẻ trung trên mặt đồng hồ. Sản phẩm sẽ là món phụ kiện phù hợp với các quý ông sang trọng, theo đuổi phong cách lịch lãm và muốn tạo sự ấn tượng tốt với đối phương khi gặp mặt.&nbsp;</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/299802/orient-ra-ba0003l10b-nam-fix-21.jpg" alt="Chất liệu mặt kính và khung viền của mẫu đồng hồ"></figure><p>•&nbsp;Sản phẩm có đường kính mặt là <strong>43.5 mm</strong>, phù hợp với nam giới có cổ tay trung bình. Ngoài ra, kính khoáng (Mineral) là chất liệu mà thương hiệu lựa chọn nhờ đặc tính cứng cáp, bền bỉ trước các va quẹt không quá mạnh, luôn đồng hành cùng bạn theo năm tháng.</p><p>•&nbsp;Hãng <a href="https://www.thegioididong.com/dong-ho-deo-tay-orient-nam#c=7264&amp;m=18197&amp;o=16&amp;pi=0">đồng hồ Orient</a> đã tin tưởng trang bị thép không gỉ làm vật liệu cho cả khung viền lẫn dây đeo giúp mẫu mã vừa bền bỉ, lại vừa hạn chế ăn mòn cao trước tác động từ môi trường.&nbsp;</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/299802/orient-ra-ba0003l10b-nam-fix-22.jpg" alt="Chất liệu dây đeo của mẫu đồng hồ "></figure><p>•&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay">Đồng hồ</a>&nbsp;này cũng có tính năng kháng nước <strong>5 ATM</strong> vì thế có thể yên tâm khi rửa tay, đi mưa nhỏ hay thậm chí đi tắm mà không cần tháo sản phẩm ra. <strong>Lưu ý</strong>: không đeo khi đi lặn.&nbsp;</p><p>•&nbsp;Mẫu <a href="https://www.thegioididong.com/dong-ho-deo-tay-nam">đồng hồ nam</a> này được hãng hỗ trợ tính năng lịch đồng hồ vạn niên. Chức năng này chỉ có trên đồng hồ cao cấp, giúp bạn xem được lịch thứ, ngày, tháng, năm một cách chính xác và thuận tiện.&nbsp;</p>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (18, 11, 1, 5, 2, N'Đồng Hồ ORIENT 41.8 mm Nam RA-AA0810N19B 1̶1̶,̶2̶2̶0̶,̶0̶0̶0̶ VND -30%', N'Bạch Kim', 12, 7854000, 20, N'Storage/133296052137170856_orient-3.jpg', N'<p>•&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay/orient-ra-aa0810n19b-nam#top-color-images-gallery-5">Đồng hồ Orient 41.8 mm Nam RA-AA0810N19B</a> đến từ thương hiệu Orient nổi tiếng của Nhật Bản. Được xem là phiên bản gây tiếng vang lớn trong phân khúc đồng hồ lặn, sản phẩm này mang hơi hướng cá tính phù hợp cho những chàng trai theo đuổi phong cách hiện đại nhưng không kém phần thanh lịch.&nbsp;</p><p>•&nbsp;Sở hữu thiết kế ấn tượng với cọc số được thiết kế hình học tối giản phù hợp với các quý ông yêu thích hiện đại và phóng khoáng, <a href="https://www.thegioididong.com/dong-ho-deo-tay-orient">đồng hồ Orient</a> là món phụ kiện phù hợp cho các chàng trai yêu thích thể thao có thể diện trong các hoạt động hàng ngày hay các dịp đặc biệt.&nbsp;</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/304004/orient-ra-aa0810n19b-nam-fix-21.jpg" alt="Chất liệu mặt kính và khung viền của mẫu đồng hồ"></figure><p>•&nbsp;Đặc biệt, chiếc đồng hồ sở hữu thiết kế vòng bezel với khả năng chống nước là <strong>20 ATM</strong>, hỗ trợ bạn trong quá trình bơi, lặn hay các hoạt động dưới nước. <strong>Lưu ý</strong>: không vặn bấm các nút trong quá trình bơi hoặc lặn.&nbsp;</p><p>•&nbsp;Orient đã trang bị thép không gỉ cho phần dây đeo và khung viền, chất liệu này bền bỉ, hạn chế ăn mòn trước tác động từ môi trường vì vậy các bạn có thể yên tâm sử dụng lâu dài.</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/304004/orient-ra-aa0810n19b-nam-fix-22.jpg" alt="Chất liệu dây đeo của mẫu đồng hồ "></figure><p>•&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-nam">Đồng hồ nam</a> có kích thước mặt <strong>41.8 mm</strong> phù hợp với các chàng trai có cổ tay vừa. Điểm nổi bật của sản phẩm này là mặt kính được làm từ kính Sapphire, chất liệu có độ cứng tốt, khả năng chống trầy xước giúp cho những va đập thông thường không còn là vấn đề. Vì thế chiếc phụ kiện này sẽ thích hợp để đeo mọi lúc mọi nơi.</p><p>•&nbsp;Chiếc <a href="https://www.thegioididong.com/dong-ho-deo-tay">đồng hồ</a> này còn được hãng hỗ trợ những tính năng như lịch thứ - ngày giúp bạn kiểm soát tốt được thời gian. Ngoài ra, mẫu thiết kế còn được phủ một lớp dạ quang trên kim chỉ giờ giúp bạn sử dụng ngay cả trong điều kiện thiếu sáng.</p>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (19, 11, 1, 4, 7, N'Đồng Hồ ORIENT 41.7 mm Nam RA-AA0B05R19B 8̶,̶0̶0̶0̶,̶0̶0̶0̶  VND -30%', N'Bạch Kim', 24, 5600000, 45, N'Storage/133296061691188755_orient-4.jpg', N'<h3>Mẫu đồng hồ này đến từ hãng&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-orient">đồng hồ Orient</a>&nbsp;- Nhật Bản, thiết kế riêng cho Việt Nam&nbsp;</h3><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/275058/orient-ra-aa0b05r19b-10.jpg" alt="SK Việt Nam"></figure><h3>Đây là một phiên bản đặc biệt được thiết kế với, sự xuất hiện của quốc kỳ Việt Nam gắn chặt với sản phẩm này của Orient</h3><p>Thông qua sản phẩm này Orient muốn tạo nên một gạch nối, để lưu giữ những ký ức của thế hệ đi trước, và truyền lại cho một thế hệ mới, trẻ trung hơn, hiện đại hơn, giống như cách mà các ông, các bác, các bố kể lại cho con cháu những câu chuyện về một quá khứ gian khổ nhưng hào hùng và vẻ vang.</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/275058/orient-ra-aa0b05r19b-11.jpg" alt="Thiết kế"></figure><h3>Mẫu đồng hồ Orient mặt lửa này là&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-co-tu-dong">đồng hồ cơ (máy Automatic)</a>&nbsp;hoạt động ổn định cho độ sai số thấp và thời gian trữ cót khoảng 40 tiếng</h3><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/275058/orient-ra-aa0b05r19b-12.jpg" alt="Đồng hồ cơ"></figure><h3>Đồng hồ Orient SK Việt Nam RA-AA0B05R19B sở hữu đường kính mặt 41.7 mm. Mặt kính của&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay">đồng hồ</a>&nbsp;được làm từ kính cứng, có độ cứng cáp, độ trong suốt cao, chống trầy xước nứt vỡ cực tốt</h3><p>&nbsp;</p>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (20, 11, 1, 2, 3, N'Đồng Hồ ORIENT 41 mm Nam RE-AV0B02Y00B 2̶5̶,̶7̶5̶0̶,̶0̶0̶0̶ VND -15%', N'Bạch Kim', 24, 21877000, 10, N'Storage/133296066270869215_orient-5.jpg', N'<p>- Thương hiệu <a href="https://www.thegioididong.com/dong-ho-deo-tay-orient">đồng hồ Orient</a> mang thiết kế nam tính và thời thượng đến từ Nhật Bản, thích hợp dành cho các quý ông lịch lãm</p><p>- Chiếc <a href="https://www.thegioididong.com/dong-ho-deo-tay-co-tu-dong">đồng hồ cơ (máy Automatic)</a> có bộ máy hoạt động ổn định và chính xác, cho thời gian trữ cót khoảng 50 tiếng</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/238566/orient-star-re-av0b02y00b-nam.jpg" alt="Tổng quan về đồng hồ Nam Orient Star RE-AV0B02Y00B"></figure><p>- Sở hữu mặt đồng hồ có đường kính 41 mm</p><p>- <a href="https://www.thegioididong.com/dong-ho-deo-tay-nam">Đồng hồ nam</a> có khung viền và dây đeo được làm từ thép không gỉ chắc chắn, chống va đập tốt giúp bảo vệ những linh kiện bên trong</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/238566/orient-star-re-av0b02y00b-nam-8.jpg" alt="Đồng hồ Nam Orient Star RE-AV0B02Y00B có khung viền thép không gỉ"></figure><p>- Hệ số chống nước 10 ATM, bạn có thể an tâm đeo chiếc <a href="https://www.thegioididong.com/dong-ho-deo-tay">đồng hồ</a> này khi bơi và đi tắm. Lưu ý, bạn không nên mang khi lặn</p>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (21, 11, 1, 4, 11, N'Đồng Hồ ORIENT 42.9 mm FAL00004W0 6̶,̶7̶9̶0̶,̶0̶0̶0̶ VND -50%', N'Bạch Kim', 6, 3395000, 50, N'Storage/133296069159738881_orient-6.jpg', N'<h3>Mẫu&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-co-tu-dong">đồng hồ Automatic</a>&nbsp;này mang kiểu dáng thời trang, hiện đại, phù hợp cho quý ông lịch lãm, nam tính</h3><p><a href="https://www.thegioididong.com/dong-ho-deo-tay/orient-fal00004w0-nam-co-tu-dong">Đồng hồ nam Orient FAL00004W0</a>&nbsp;là chiếc đồng hồ đến từ thương hiệu Orient&nbsp;uy tín và lâu đời của&nbsp;Nhật Bản.</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/202663/orient-fal00004w0-nam-co-tu-dong1.jpg" alt="Đồng hồ Nam Orient FAL00004W0 - Cơ tự động có thiết kế thời trang"></figure><h3><a href="https://www.thegioididong.com/dong-ho-deo-tay">Đồng hồ</a>&nbsp;cơ tự động (máy Automatic), có tuổi thọ cao, không cần lên dây cót thường xuyên</h3><p>Xem thêm:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/hoi-dap-dong-ho-automatic-la-gi-1167202-1167202">Đồng hồ cơ tự động (máy Automatic) là gì?</a></p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/202663/orient-fal00004w0-nam-co-tu-dong2.jpg" alt="Đồng hồ Nam Orient FAL00004W0 - Cơ tự động không cần thay pin"></figure><h3>Khung viền của&nbsp;chiếc&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-kim">đồng hồ kim</a>&nbsp;này cứng cáp, bền bỉ, chống ăn mòn, luôn sáng bóng</h3><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/202663/orient-fal00004w0-nam-co-tu-dong4.jpg" alt="Đồng hồ Nam Orient FAL00004W0 - Cơ tự động với khung viền cứng cáp"></figure><h3>Mặt kính của mẫu&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-nam">đồng hồ nam</a>&nbsp;này&nbsp;có độ cứng khá, sáng bóng, trong suốt,&nbsp;chịu lực tốt</h3>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (22, 11, 1, 4, 2, N'Đồng Hồ ORIENT 40.5 mm RA-AG0013S10B 9̶,̶1̶6̶0̶,̶0̶0̶0̶ VND -30%', N'Nâu đậm', 6, 6412000, 65, N'Storage/133296114194190433_orient-7.jpg', N'<p>Đến từ thương hiệu&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-orient">đồng hồ Orient</a> nổi tiếng Nhật Bản, <a href="https://www.thegioididong.com/dong-ho-deo-tay/orient-ra-ag0013s10b-nam">đồng hồ nam Orient RA-AG0013S10B</a> luôn khiến bạn yên tâm về chất lượng của nó.</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/204509/orient-ra-ag0013s10b-nam1.jpg" alt="Đồng hồ nam Orient RA-AG0013S10B mang nét thanh lịch"></figure><h3><a href="https://www.thegioididong.com/dong-ho-deo-tay">Đồng hồ</a>&nbsp;cơ tự động (máy Automatic) có tuổi thọ cao, hoạt động nhờ chuyển động của cổ tay.</h3><p>Xem thêm:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/hoi-dap-dong-ho-automatic-la-gi-1167202-1167202">Đồng hồ cơ tự động (máy Automatic) là gì?</a></p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/204509/orient-ra-ag0013s10b-nam2.jpg" alt="Đồng hồ nam Orient RA-AG0013S10B có bộ máy Automatic có tuổi thọ cao"></figure><h3>Bộ khung bền bỉ, cứng cáp, bảo vệ an toàn các chi tiết bên trong.</h3><p>- Mặt kính chiếc <a href="https://www.thegioididong.com/dong-ho-deo-tay-kim">đồng hồ kim</a>&nbsp;này có độ trong suốt cao, độ cứng khá, ít nứt vỡ khi bị va đập vừa phải.</p><p>- Khung viền của dòng&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-co-tu-dong">đồng hồ cơ</a>&nbsp;này có khả năng&nbsp;chống ăn mòn, chống oxi hóa, chịu được mọi thời tiết khắc nghiệt.</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/204509/orient-ra-ag0013s10b-nam3.jpg" alt="Đồng hồ nam Orient RA-AG0013S10B có mặt kính bền chắc, khung viền chống ăn mòn"></figure><h3>Yên tâm đeo khi rửa tay, đi mưa vì chiếc&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-orient-nam">đồng hồ Orient nam</a>&nbsp;này có hệ số chống nước 30m, không mang khi tắm, bơi, lặn.</h3><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/204509/orient-ra-ag0013s10b-nam4-1.jpg" alt="Đồng hồ nam Orient RA-AG0013S10B có hệ số chống nước 3 ATM"></figure><h3>Dây đeo của dòng&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-nam">đồng hồ nam</a>&nbsp;này&nbsp;mềm mại, nhẹ nhàng, thiết kế đục lỗ phù hợp với nhiều kích cỡ cổ tay.</h3>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (23, 11, 1, 2, 2, N'Đồng Hồ ORIENT 42 mm RA-AA0C03S19B 6̶,̶0̶6̶0̶,̶0̶0̶0̶ VND -30%', N'Bạc', 6, 4242000, 30, N'Storage/133296117301767430_orient-8.jpg', N'<h3>Sở hữu thiết kế trẻ trung, thanh lịch, sản phẩm này dành riêng cho các bạn nam tinh tế, hiện đại</h3><p><a href="https://www.thegioididong.com/dong-ho-deo-tay/orient-ra-aa0c03s19b-nam">Đồng hồ nam Orient RA-AA0C03S19B</a> đến từ thương hiệu&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-orient">đồng hồ Orient</a> nổi tiếng và chất lượng của Nhật Bản.</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/209123/orient-ra-aa0c03s19b-nam-1-2.jpg" alt="Đồng hồ nam Orient RA-AA0C03S19B có thiết kế trẻ trung và nam tính"></figure><h3>Đồng hồ cơ tự động (máy Automatic) có tuổi thọ cao, hoạt động nhờ chuyển động của cổ tay</h3><p>Xem thêm:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/hoi-dap-dong-ho-automatic-la-gi-1167202-1167202">Đồng hồ cơ tự động (máy Automatic) là gì?</a></p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/209123/orient-ra-aa0c03s19b-nam-11.jpg" alt="Đồng hồ nam Orient RA-AA0C03S19B có máy cơ tự động bền bỉ"></figure><h3>Bảo vệ an toàn các chi tiết bên trong nhờ bộ khung bền bỉ, cứng cáp</h3><p>- Mặt kính của&nbsp;mẫu&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-co-tu-dong">đồng hồ Automatic</a>&nbsp;này có độ trong suốt cao, chịu lực tốt, không lóa mắt khi xem giờ dưới nắng.</p><p>- Khung viền chiếc&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-nam">đồng hồ nam</a>&nbsp;này&nbsp;chống ăn mòn, dễ dàng lau chùi, vệ sinh khi bị bám bụi bẩn.</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/209123/orient-ra-aa0c03s19b-nam-2.jpg" alt="Đồng hồ nam Orient RA-AA0C03S19B có lớp vỏ ngoài bền bỉ, chắc chắn"></figure>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (24, 11, 1, 4, 1, N'Đồng Hồ ORIENT 40.5 mm RA-AG0026E10B 1̶0̶,̶1̶0̶0̶,̶0̶0̶0̶ VND -30%', N'Bạc Sẫm', 24, 7070000, 5, N'Storage/133296119563194803_orient-9.jpg', N'<h3>Sở hữu nét sang trọng và tinh tế,&nbsp;mẫu&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-co-lo-may">đồng hồ cơ lộ máy</a>&nbsp;này là phụ kiện lý tưởng để các quý ông thể hiện đẳng cấp của mình</h3><p>Đến từ thương hiệu&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-orient">đồng hồ Orient</a> uy tín Nhật Bản, <a href="https://www.thegioididong.com/dong-ho-deo-tay/orient-ra-ag0026e10b-nam">đồng hồ nam Orient RA-AG0026E10B</a> luôn khiến bạn hài lòng về chất lượng của nó.</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/204523/orient-ra-ag0026e10b-nam1.jpg" alt="Đồng hồ nam Orient RA-AG0026E10B mang nét sang trọng"></figure><h3><a href="https://www.thegioididong.com/dong-ho-deo-tay">Đồng hồ</a>&nbsp;cơ tự động (máy Automatic) có tuổi thọ cao, không cần lên dây cót thường xuyên</h3><p>Xem thêm:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/hoi-dap-dong-ho-automatic-la-gi-1167202-1167202">Đồng hồ cơ tự động (máy Automatic) là gì?</a></p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/204523/orient-ra-ag0026e10b-nam2.jpg" alt="Đồng hồ nam Orient RA-AG0026E10B có bộ máy Automatic có tuổi thọ cao"></figure><h3>Bộ khung bền bỉ, chịu va đập hiệu quả.</h3><p>- Mặt kính mẫu&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-co-tu-dong">đồng hồ cơ</a>&nbsp;này&nbsp;có độ cứng khá, độ trong suốt cao, hạn chế trầy xước khi có va chạm vừa phải.</p><p>- Khung viền của chiếc&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-orient-nam">đồng hồ Orient nam</a>&nbsp;này&nbsp;bền chắc, chống ăn mòn, chống oxi hóa hiệu quả.</p>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (25, 11, 1, 4, 3, N'Đồng Hồ ORIENT 41.2 mm RA-AA0004E19B 1̶0̶,̶7̶7̶0̶,̶0̶0̶0̶ VND -30%', N'Bạch Kim', 24, 7539000, 10, N'Storage/133296121425400946_orient-10.jpg', N'<h3>Thiết kế tinh tế trong từng chi tiết, mẫu&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-co-tu-dong">đồng hồ Automatic</a>&nbsp;này&nbsp;thích hợp với phái nam mạnh mẽ và sang trọng</h3><p>Mang thương hiệu Orient - Nhật Bản, <a href="https://www.thegioididong.com/dong-ho-deo-tay/orient-ra-aa0004e19b-nam">đồng hồ Orient RA-AA0004E19B</a> giúp bạn khẳng định đẳng cấp thời trang của mình.</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/204520/orient-ra-aa0004e19b-nam-11.jpg" alt="Đồng hồ Nam Orient RA-AA0004E19B thiết kế sang trọng và thời thượng"></figure><h3><a href="https://www.thegioididong.com/dong-ho-deo-tay">Đồng hồ</a> cơ tự động (máy Automatic) có tuổi thọ cao, hoạt động nhờ chuyển động cổ tay, không cần lên dây cót thường xuyên</h3><p>Xem thêm:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/hoi-dap-dong-ho-automatic-la-gi-1167202-1167202">Đồng hồ cơ tự động (máy Automatic) là gì?</a></p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/204520/orient-ra-aa0004e19b-nam-22.jpg" alt="Đồng hồ Nam Orient RA-AA0004E19B hoạt động nhờ chuyển động của cổ tay"></figure><h3>Bền bỉ theo thời gian nhờ khả năng chống va đập tốt</h3><p>- Mặt kính trong suốt, độ cứng cao, hầu như không bị phá vỡ, chống trầy xước hiệu quả.</p><p>- Khung viền của chiếc&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-kim">đồng hồ kim</a>&nbsp;này&nbsp;sáng bóng, cứng cáp, bảo vệ tốt các chi tiết bên trong khi va chạm.</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/204520/orient-ra-aa0004e19b-nam-33.jpg" alt="Đồng hồ Nam Orient RA-AA0004E19B có khả năng chống va đập tốt"></figure><h3>Chịu áp lực nước ở độ sâu 200 m thoải mái đeo <a href="https://www.thegioididong.com/dong-ho-deo-tay-nam">đồng hồ nam</a>&nbsp;khi tham gia các hoạt động thể thao dưới nước như bơi lội, lặn,...</h3><p>Lưu ý: Không bấm các nút điều khiển khi đang bơi hoặc lặn dưới nước.</p>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (26, 11, 1, 5, 7, N'Đồng Hồ ORIENT 39.8 mm RA-KV03045Y10B 5̶,̶2̶5̶0̶,̶0̶0̶0̶  VND    -30%', N'Nâu Nhạt', 12, 3675000, 35, N'Storage/133296126388580831_orient-11.jpg', N'<h3>Với kiểu dáng sang trọng, lịch lãm, chiếc <a href="https://www.thegioididong.com/dong-ho-deo-tay-kim">đồng hồ kim</a>&nbsp;này dành riêng cho các quý ông hiện đại, tinh tế</h3><p><a href="https://www.thegioididong.com/dong-ho-deo-tay/orient-ra-kv0304y10b-nam">Đồng hồ nam Orient RA-KV0304Y10B</a> mang thương hiệu đồng hồ Orient nổi tiếng và chất lượng của Nhật Bản.</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/204529/orient-ra-kv0304y10b-nam-1.jpg" alt="Đồng hồ nam Orient RA-KV0304Y10B có kiểu dáng sang trọng"></figure><h3>Hạn chế hư hỏng khi va chạm ở mức độ vừa phải</h3><p>- Mặt kính có độ cứng cực cao, có khả năng chống trầy xước tối ưu, không bị phá vỡ trước va chạm thường ngày.</p><p>- Khung viền chống ăn mòn, dễ lau chùi, vệ sinh, bảo vệ tốt bộ máy bên trong.</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/204529/orient-ra-kv0304y10b-nam-2-as.jpg" alt="Đồng hồ nam Orient RA-KV0304Y10B có mặt kính cao cấp, khung viền cứng cáp"></figure><h3>Hệ số chống nước 5 ATM, đeo được khi tắm, đi mưa mà không lo vào nước, không mang mẫu&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-orient">đồng hồ Orient</a>&nbsp;này khi bơi, lặn</h3><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/204529/orient-ra-kv0304y10b-nam-4.jpg" alt="Đồng hồ nam Orient RA-KV0304Y10B có hệ số chống nước 5 ATM"></figure><h3>Chiếc&nbsp;<a href="https://www.thegioididong.com/dong-ho-deo-tay-orient-nam">đồng hồ Orient nam</a> được trang bị lịch ngày và đồng hồ định dạng 24 giờ rất tiện ích</h3>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (27, 11, 1, 8, 7, N'Đồng Hồ ORIENT 39 mm RA-SP0003BA10B 5̶,̶5̶2̶0̶,̶0̶0̶0̶ VND -50%', N'Nâu Đồng', 6, 2760000, 55, N'Storage/133296130196063748_orient-12.jpg', N'<p><a href="https://www.thegioididong.com/dong-ho-deo-tay/orient-ra-sp0003b10b-nam">Orient RA-SP0003B10B</a> thuộc hãng <a href="https://www.thegioididong.com/dong-ho-deo-tay-orient">đồng hồ Orient</a> mang thương hiệu nổi tiếng Nhật Bản.</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/203385/orient-ra-sp0003b10b-nam-1-1.jpg" alt="Đồng hồ nam Orient RA-SP0003B10B có thiết kế sang trọng"></figure><h3>Khung viền chắc chắn, chống oxi hóa, chống ăn mòn hiệu quả, mặt kính chịu lực tốt, độ cứng khá, ít trầy xước khi bị va chạm vừa phải</h3><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/203385/orient-ra-sp0003b10b-nam-2-1.jpg" alt="Đồng hồ nam Orient RA-SP0003B10B có mặt kính bền chắc, khung viền chống oxi hóa"></figure><h3><a href="https://www.thegioididong.com/dong-ho-deo-tay">Đồng hồ</a> có hệ số chống nước 5 ATM, thoải mái đi mưa, đi tắm mà không sợ vào nước, không đeo khi đi bơi, đi lặn</h3><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/203385/orient-ra-sp0003b10b-nam-4-1.jpg" alt="Đồng hồ nam Orient RA-SP0003B10B có khả năng chống nước khá tốt"></figure><h3><a href="https://www.thegioididong.com/dong-ho-deo-tay-orient-nam">Đồng hồ Orient nam</a> được trang bị lịch ngày và mặt phụ kim giây tiện dụng giúp bạn làm chủ thời gian của mình</h3><p>&nbsp;</p>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (28, 4, 4, 5, 7, N'Đồng Hồ CITIZEN C7 40 mm Nam NH08032002-11X 8̶,̶1̶7̶7̶,̶0̶0̶0̶ VND -40%', N'Nâu Nhạt', 12, 4906000, 58, N'Storage/133301094283802782_citizen-1.jpg', N'<figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/234649/citizen-nh8390-11x-nam-hbv-1-fix.jpg" alt="Đồng hồ Nam Citizen C7 NH8390-11X sở hữu phong cách lịch lãm"></figure><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/234649/citizen-nh8390-11x-nam-hbv-5.jpg" alt="Đồng hồ Nam Citizen C7 NH8390-11X có dây đeo da tổng hợp mềm mại"></figure><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/234649/citizen-nh8390-11x-nam-hbv-6.jpg" alt="Đồng hồ Nam Citizen C7 NH8390-11X có độ dày mặt 13 mm "></figure><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/234649/citizen-nh8390-11x-nam-hbv-7.jpg" alt="Đồng hồ Nam Citizen C7 NH8390-11X đi kèm hệ số chống nước 5 ATM"></figure><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/234649/citizen-nh8390-11x-nam-hbv-8.jpg" alt="Đồng hồ Nam Citizen C7 NH8390-11X hỗ trợ nhiều tiện ích "></figure><p><strong>- Mang thương hiệu&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay-citizen"><strong>đồng hồ Citizen</strong></a><strong>, thương hiệu nổi tiếng đến từ Nhật Bản.</strong></p><p><strong>- Thuộc BST&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay-citizen-c7"><strong>Citizen C7</strong></a><strong>&nbsp;mới, là bản nâng cấp về thiết kế của bản Crystal Seven ra mắt năm 1965.</strong></p><p><strong>-&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay-co-tu-dong"><strong>Đồng hồ cơ tự động</strong></a><strong>&nbsp;bền bỉ, không cần dùng pin giúp vảo vệ môi trường tốt hơn.</strong></p><p><strong>- Với đường kính mặt 40 mm, và dây đeo rộng 20 mm dành cho bạn nam có cổ tay với chu vi từ 18 - 19 cm.</strong></p><p><strong>- Chiếc&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay-nam"><strong>đồng hồ nam</strong></a><strong>&nbsp;có khung viền được làm từ thép không gỉ bền bỉ, hạn chế hư hỏng, dây đeo bằng da mang đến cảm giác êm tay khi đeo.</strong></p><p><strong>- Người dùng yên tâm đeo&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay"><strong>đồng hồ</strong></a><strong>&nbsp;khi tắm rửa, đi mưa, rửa tay nhờ hệ số chống nước 5 ATM, không nên đeo đồng hồ khi đi bơi hay lặn.</strong></p><p><strong>- Lịch thứ, lịch ngày hỗ trợ người dùng quản lý thời gian tốt hơn.</strong></p>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (29, 4, 4, 5, 7, N'Đồng Hồ CITIZEN C7 40 mm Nam NH83222090-03X 8̶,̶1̶7̶7̶,̶0̶0̶0̶ VND -40%', N'Xanh Lá', 7, 4906000, 23, N'Storage/133301112958130682_citizen-2.jpg', N'<figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/234648/citizen-nh8390-03x-nam-hbv-1.jpg" alt="Đồng hồ Nam Citizen C7 NH8390-03X có thiết kế hiện đại, sang trọng"></figure><p>&nbsp;</p><p>&nbsp;</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/234648/citizen-nh8390-03x-nam-hbv-4.jpg" alt="Đồng hồ Nam Citizen C7 NH8390-03X có khung viền thép không gỉ chống oxy hóa"></figure><p>&nbsp;</p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/234648/citizen-nh8390-03x-nam-hbv-6.jpg" alt="Đồng hồ Nam Citizen C7 NH8390-03X sở hữu hệ số chống nước 5 ATM"></figure><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/234648/citizen-nh8390-03x-nam-hbv-7.jpg" alt="Đồng hồ Nam Citizen C7 NH8390-03X có độ dày mặt 13 mm "></figure><p><strong>- Là một sản phẩm của hãng&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay-citizen"><strong>đồng hồ Citizen</strong></a><strong>&nbsp;của Nhật Bản, nổi tiếng với nhiều chiếc đồng sang trọng</strong></p><p><strong>- Thuộc BST </strong><a href="https://www.thegioididong.com/dong-ho-deo-tay-citizen-c7"><strong>Citizen C7</strong></a><strong> mới, là bản nâng cấp về thiết kế của bản Crystal Seven ra mắt năm 1965</strong></p><p><strong>-&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay-co-tu-dong"><strong>Đồng hồ cơ tự động</strong></a><strong>&nbsp;bền bỉ, lên dây cót tự động, bảo vệ môi trường</strong></p><p><strong>- Với đường kính mặt 40 mm, và dây đeo rộng 20 mm,&nbsp;chiếc&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay-nam"><strong>đồng hồ nam</strong></a><strong> dành cho bạn nam có cổ tay với chu vi từ 18 - 19 cm</strong></p><p><strong>- Có khung viền được làm từ thép không gỉ bền bỉ, bảo vệ tốt lõi đồng hồ, dây đeo bằng da mang đến cảm giác êm tay khi đeo</strong></p><p><strong>- Người dùng yên tâm đeo&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay"><strong>đồng hồ</strong></a><strong>&nbsp;khi tắm rửa, đi mưa, rửa tay nhờ hệ số chống nước 5 ATM, không nên đeo đồng hồ khi đi bơi hay lặn</strong></p><p><strong>- Với lịch thứ và lịch ngày được đặt tách biệt và rõ ràng cho người dùng dễ dàng theo dõi khi cần</strong></p>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (30, 4, 4, 2, 7, N'Đồng Hồ CITIZEN 42 mm Nam CA70620030-88E 8̶,̶9̶8̶5̶,̶0̶0̶0̶ VND -40%', N'Bạch Kim', 14, 5391000, 26, N'Storage/133301115135033395_citizen-3.jpg', N'<p><strong>• Mẫu đồng hồ đến từ&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay-citizen"><strong>đồng hồ Citizen</strong></a><strong>&nbsp;- một trong những thương hiệu nổi tiếng và uy tín đến từ Nhật Bản. Sản phẩm với thiết kế vô cùng tinh tế và thanh lịch.</strong></p><p><strong>• Đường kính mặt của mẫu </strong><a href="https://www.thegioididong.com/dong-ho-deo-tay/citizen-ca7060-88e-nam"><strong>đồng hồ CITIZEN 42 mm Nam CA7060-88E</strong></a><strong>&nbsp;này là&nbsp;42 mm, độ rộng dây là&nbsp;20 mm.</strong></p><p><strong>• Khung viền&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay"><strong>đồng hồ</strong></a><strong>&nbsp;thép không gỉ 316L cứng cáp, bền bỉ và có khả năng chống chịu mọi thời tiết, chống oxi hoá. Dây đeo thép không gỉ vô cùng hợp thời trang.</strong></p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/286989/citizen-ca7060-88e-nam-010623-035732.jpg" alt="Tổng quan đồng hồ"></figure><p><strong>•&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay-nam"><strong>Đồng hồ nam</strong></a><strong>&nbsp;sở hữu độ chống nước&nbsp;5 ATM: An toàn khi đeo đi mưa, đi tắm, không mang khi đi bơi hay lặn.</strong></p><p><strong>• Lịch ngày được tích hợp ngay trên mặt đồng hồ khiến người dùng nắm bắt thời gian một cách thuận tiện.</strong></p>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (31, 4, 4, 2, 7, N'Đồng Hồ CITIZEN 42 mm Nam AG83203540-58L 4̶,̶5̶8̶0̶,̶0̶0̶0̶ VND -40%', N'Bạc Sẫm', 9, 2748000, 48, N'Storage/133301120344286557_citizen-4.jpg', N'<p><strong>- Đến từ thương hiệu&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay-citizen"><strong>đồng hồ Citizen</strong></a><strong>&nbsp;uy tín và chất lượng của Nhật Bản, được nhiều người Việt Nam tin dùng</strong></p><p><strong>- Chiếc&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay-nam"><strong>đồng hồ nam</strong></a><strong>&nbsp;này sở hữu đường kính mặt 42 mm</strong></p><p><strong>- Khung viền và dây đeo được làm từ thép không gỉ bền bỉ, chống ăn mòn, chống oxi hóa hiệu quả</strong></p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/237967/citizen-ag8340-58l-nam-010623-032552.jpg" alt="Tổng quan đồng hồ"></figure><p><strong>- Chống nước 10 ATM: Yên tâm đeo khi tắm, bơi mà không lo vào nước, không mang&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay"><strong>đồng hồ</strong></a><strong>&nbsp;khi lặn</strong></p><p><strong>Lưu ý: Không vặn núm điều khiển khi bơi.</strong></p><p><strong>- Được trang bị lịch thứ, lịch ngày, đồng hồ định dạng 24 giờ và kim dạ quang rất hữu dụng</strong></p>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (32, 4, 4, 5, 7, N'Đồng Hồ CITIZEN 42 mm Nam BI12545033-04E 3̶,̶8̶8̶5̶,̶0̶0̶0̶ VND -40%', N'Nâu đậm', 10, 2331000, 24, N'Storage/133301124014682085_citizen-5.jpg', N'<p><strong>- Thương hiệu&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay-citizen"><strong>đồng hồ Citizen</strong></a><strong>&nbsp;hàng đầu Nhật Bản, uy tín và chất lượng nổi tiếng thế giới.</strong></p><p><strong>- Đường kính mặt của đồng hồ là 42 mm, độ rộng dây 20 mm.</strong></p><p><strong>- Khung viền bằng thép không gỉ chắc chắn, dây đeo da êm nhẹ, thoáng khí mang lại cảm giác thoải mái khi đeo.</strong></p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/237976/citizen-bi1033-04e-nam-010623-034107.jpg" alt="Tổng quan đồng hồ"></figure><p><strong>- Thoải mái đeo </strong><a href="https://www.thegioididong.com/dong-ho-deo-tay"><strong>đồng hồ</strong></a><strong>&nbsp;khi tắm hay bơi lội nhờ độ chống nước tới 10 ATM, không mang khi lặn.</strong></p><p><strong>- Chiếc&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay-nam"><strong>đồng hồ nam</strong></a><strong>&nbsp;này còn có mặt lịch ngày và kim dạ quang tiện lợi.</strong></p>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (33, 4, 4, 4, 7, N'Đồng Hồ CITIZEN 44 mm Nam AO32002032-02A 5̶,̶6̶0̶0̶,̶0̶0̶0̶ VND -40%', N'Vàng đồng', 12, 3360000, 38, N'Storage/133301125688480660_citizen-6.jpg', N'<p><strong>Kiểu dáng hiện dại với mặt đồng hồ được thiết kế đặc biệt, là một phụ kiện thời trang dành cho các chàng trai thanh lịch và mạnh mẽ.</strong></p><p><a href="https://www.thegioididong.com/dong-ho-deo-tay/citizen-ao3032-02a-nam"><strong>Đồng hồ Citizen AO3032-02A</strong></a><strong>&nbsp;là chiếc&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay-nam"><strong>đồng hồ nam</strong></a><strong>&nbsp;có thương hiệu Citizen, một trong những hãng đồng hồ nổi tiếng của Nhật Bản.</strong></p><p><strong>Cứng cáp và bền bỉ hơn nhờ có lớp vỏ bên ngoài chắc chắn.</strong></p><p><strong>-&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay"><strong>Đồng hồ</strong></a><strong>&nbsp;được trang bị mặt kính có độ cứng và độ trong suốt cao, khó nứt vỡ và trầy xước khi va chạm nhẹ.</strong></p><p><strong>- </strong><a href="https://www.thegioididong.com/dong-ho-deo-tay-citizen"><strong>Đồng hồ Citizen</strong></a><strong>&nbsp;có khung viền bền bỉ, chống ăn mòn, chống va đập, bảo vệ tốt các chi tiết máy bên trong.</strong></p><figure class="image"><img src="https://cdn.tgdd.vn/Products/Images/7264/209950/citizen-ao3032-02a-nam-010623-042626.jpg" alt="Tổng quan đồng hồ"></figure><p><strong>Với mặt phụ hiển thị múi giờ thứ 2 giúp người dùng nắm bắt thời gian ở 2 nơi một cách dễ dàng.</strong></p><p><strong>Chống nước 3 ATM, người dùng có thể yên tâm đeo đồng hồ khi đi mưa, rửa tay. Tuy nhiên không nên đeo đồng hồ khi tắm và bơi, lặn.</strong></p><p><strong>Dây đeo chiếc&nbsp;</strong><a href="https://www.thegioididong.com/dong-ho-deo-tay-citizen-nam"><strong>đồng hồ Citizen nam</strong></a><strong>&nbsp;bền bỉ, có trọng lượng nhẹ, ôm lấy cổ tay và cho cảm giác thoải mái khi đeo.</strong></p>')
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (34, 4, 3, 2, 3, N'aaaa', N'Bạc Sẫm', 222, 22222, 1, N'Storage/133305204266432157_132675087110014639_iphone.jpg', NULL)
INSERT [dbo].[DongHo] ([ID], [ThuongHieu_ID], [TenLoai_ID], [ChatLieu_ID], [XuatXu_ID], [TenDongHo], [MauSac], [HanBaoHanh], [DonGia], [SoLuong], [HinhAnhDH], [MoTa]) VALUES (35, 16, 1, 4, 1, N'Đồng Hồ Rolex 18238 Day Date President cọc kim cương vàng khối 18k 3̶7̶0̶,̶0̶0̶0̶,̶0̶0̶0̶ ̶V̶N̶D̶  -10%', N'Vàng đồng', 24, 362000000, 8, N'Storage/133308075615148363_rolex_1.png', N'<p>&nbsp;</p><figure class="image"><img src="https://www.euluxury.vn/images/logo_EuLuxury_top.png" alt="Đồng Hồ Rolex 18238 Day Date President cọc kim cương vàng khối 18k | Day Date"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><figure class="image"><img src="https://www.euluxury.vn/data/product/dong-ho-rolex-18238-day-date-president-coc-kim-cuong-vang-khoi-18k.png"></figure><figure class="image"><img src="https://www.euluxury.vn/data/product/dong-ho-rolex-18238-day-date-president-coc-kim-cuong-vang-khoi-18k.png"></figure><figure class="image"><img src="https://www.euluxury.vn/data/product/gzd1596186020.jpg"></figure><figure class="image"><img src="https://www.euluxury.vn/data/product/jem1596186028.jpg"></figure><figure class="image"><img src="https://www.euluxury.vn/data/product/dyi1596186035.jpg"></figure><figure class="image"><img src="https://www.euluxury.vn/data/product/noz1596186039.jpg"></figure><h2><strong>Đồng Hồ Rolex 18238 Day Date President cọc kim cương vàng khối 18k</strong></h2><p><strong>TÌNH TRẠNG : FULLSET CÒN MỚI 95%</strong></p>')
SET IDENTITY_INSERT [dbo].[DongHo] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiDH] ON 

INSERT [dbo].[LoaiDH] ([ID], [TenLoai]) VALUES (1, N'Đồng hồ cơ')
INSERT [dbo].[LoaiDH] ([ID], [TenLoai]) VALUES (3, N'Đồng hồ thông minh')
INSERT [dbo].[LoaiDH] ([ID], [TenLoai]) VALUES (4, N'Đồng hồ pin')
SET IDENTITY_INSERT [dbo].[LoaiDH] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([ID], [HoVaTen], [DienThoai], [DiaChi], [TenDangNhap], [MatKhau], [Quyen]) VALUES (1, N'Trần Hải Đăng', N'0359258471', N'Kon Tum', N'DangHandsome', N'7c4a8d09ca3762af61e59520943dc26494f8941b', 1)
INSERT [dbo].[NhanVien] ([ID], [HoVaTen], [DienThoai], [DiaChi], [TenDangNhap], [MatKhau], [Quyen]) VALUES (4, N'Thanh Phú', N'0985320136', N'Phú Yên', N'NhanVien01', N'f0d3f3a1fed87bc1f3d007dbf5cee34b146b4f07', 0)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[ThuongHieu] ON 

INSERT [dbo].[ThuongHieu] ([ID], [TenThuongHieu]) VALUES (4, N'CITIZEN')
INSERT [dbo].[ThuongHieu] ([ID], [TenThuongHieu]) VALUES (9, N'Apple')
INSERT [dbo].[ThuongHieu] ([ID], [TenThuongHieu]) VALUES (10, N'Samsung')
INSERT [dbo].[ThuongHieu] ([ID], [TenThuongHieu]) VALUES (11, N'ORIENT')
INSERT [dbo].[ThuongHieu] ([ID], [TenThuongHieu]) VALUES (13, N'Xiaomi')
INSERT [dbo].[ThuongHieu] ([ID], [TenThuongHieu]) VALUES (16, N'ROLEX')
SET IDENTITY_INSERT [dbo].[ThuongHieu] OFF
GO
SET IDENTITY_INSERT [dbo].[XuatXu] ON 

INSERT [dbo].[XuatXu] ([ID], [TenQG]) VALUES (1, N'Mỹ')
INSERT [dbo].[XuatXu] ([ID], [TenQG]) VALUES (2, N'Anh')
INSERT [dbo].[XuatXu] ([ID], [TenQG]) VALUES (3, N'Pháp')
INSERT [dbo].[XuatXu] ([ID], [TenQG]) VALUES (7, N'Việt Nam')
INSERT [dbo].[XuatXu] ([ID], [TenQG]) VALUES (11, N'Hàn Quốc')
SET IDENTITY_INSERT [dbo].[XuatXu] OFF
GO
ALTER TABLE [dbo].[DatHang]  WITH CHECK ADD FOREIGN KEY([KhachHang_ID])
REFERENCES [dbo].[KhachHang] ([ID])
GO
ALTER TABLE [dbo].[DatHang]  WITH CHECK ADD FOREIGN KEY([NhanVien_ID])
REFERENCES [dbo].[NhanVien] ([ID])
GO
ALTER TABLE [dbo].[DatHang_ChiTiet]  WITH CHECK ADD FOREIGN KEY([DatHang_ID])
REFERENCES [dbo].[DatHang] ([ID])
GO
ALTER TABLE [dbo].[DatHang_ChiTiet]  WITH CHECK ADD FOREIGN KEY([DongHo_ID])
REFERENCES [dbo].[DongHo] ([ID])
GO
ALTER TABLE [dbo].[DongHo]  WITH CHECK ADD FOREIGN KEY([ChatLieu_ID])
REFERENCES [dbo].[ChatLieu] ([ID])
GO
ALTER TABLE [dbo].[DongHo]  WITH CHECK ADD FOREIGN KEY([TenLoai_ID])
REFERENCES [dbo].[LoaiDH] ([ID])
GO
ALTER TABLE [dbo].[DongHo]  WITH CHECK ADD FOREIGN KEY([ThuongHieu_ID])
REFERENCES [dbo].[ThuongHieu] ([ID])
GO
ALTER TABLE [dbo].[DongHo]  WITH CHECK ADD FOREIGN KEY([XuatXu_ID])
REFERENCES [dbo].[XuatXu] ([ID])
GO
USE [master]
GO
ALTER DATABASE [ShopDongHo] SET  READ_WRITE 
GO
