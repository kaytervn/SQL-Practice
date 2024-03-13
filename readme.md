Ngôn ngữ SQL
ALter Table: Chỉnh sửa bảng
UNION, INTERSECT và EXCEPT cho hợp, giao và trừ
varchar: có thể thay đổi độ dài
char: 

Phép chiếu:
Select <Tên cột 1>, <Tên cột 2>, ...
From <Tên quan hệ>

VD:
//KQ trùng nhau
Select MaMH
From KQTHI

//KQ KHÔNG trùng nhau
Select distinct MaMH
From KQTHI

Phép chọn:
Select <tên cột 1>, <tên cột 2>, ...
From <tên quan hệ>
Where <biểu thức điều kiện>

VD: Tìm những SV thi môn học có mã 'M01' và đạt điểm trên 7
Select *
From KQTHI
Where MaMH = 'M01' and Diem >7

Like và Not like:
'%' đại diện một nhóm ký tự bất kỳ
'_' đại diện một ký tự bất kỳ

VD:
NV(maNV char(5), Hoten nvarchar(20), MaPB char(5), Luong real)
Liệt kê các nhân viên họ Nguyễn
Select Hoten
From NV
Where Hoten like N'Nguyễn%'
//Tìm tất cả những nhóm chuỗi ký tự bắt đầu bằng 'Nguyễn' và ko quan tâm phía sau.
'nvarchar': Kiểu chuỗi ký tự dùng bộ mã Unicode (Gõ TV) nên khi so sánh phải có chữ N trước chuỗi ký tự.

(NOT) BETWEEN min_value AND max_value

Where: đk không lq đến hàm gộp
Having: đk liên quan đến HÀM GỘP

Đổi tên: không có KHOẢNG TRẮNG và DẤU -> as TenMoi
có KHOẢNG TRẮNG và DẤU -> as [Tên Mới]

Sắp xếp: Order by Hoten, NgSinh Desc
Asc (Mặc định tăng dần), Desc (Giảm dần)

=: So sánh số
Like/Not like/In/Not In: So Sánh chuỗi

---------------------------------------

Kí hiệu thuộc tính lược đồ ERD:

Đường đơn: min = 0
Đường đôi: min = 1
Mũi tên hướng vào thuộc tính đó: max = 1
Mũi tên KHÔNG hướng vào thuộc tính đó: max = n

Hình tròn: min = 0
Đường gạch: min = 1
Đường KHÔNG có dấu chân chim: max = 1
Đường có dấu chân chim: max = n

---------------------------------------

Ánh xạ ERD -> LDQH

Tập thực thể -> CSDL(Tên) [Kiểu thực thể -> quan hệ]
Khóa chính: Một trong các khóa ứng viên của tập thực thể
Thuộc tính đơn -> thuộc tính của quan hệ
Thuộc tính phức hợp -> chỉ lấy các thuộc tính thành phần

Tập thực thể yếu:
Thực thể yếu -> quan hệ
Khóa chính: Khóa chính tập thực thể mạnh + thuộc tính NHẬN DIỆN của tập thực thể yếu
Các thuộc tính của tập thực thể yếu -> Thuộc tính của quan hệ

Thuộc tính đa trị:
Mỗi thuộc tính đa trị của tập thực thể -> quan hệ
Khóa chính: Khóa chính của tập thực thể + Thuộc tính đa trị
Nếu thuộc tính đa trị là thuộc tính phức hợp:
-> Các thuộc tính thành phần và khóa chính của tập thực thể -> thuộc tính của quan hệ

Ánh xạ nhiều - nhiều:
Mối quan hệ nhiều - nhiều -> quan hệ
Khóa chính: Các khóa chính của các thực thể tham gia vào MQH
Thuộc tính của MQH -> thuộc tính của quan hệ

Ánh xạ một - nhiều:

Cách 1:
Mối quan hệ một - nhiều -> quan hệ
Khóa chính: Khóa chính của thực thể bên nhánh nhiều
Thuộc tính của MQH -> thuộc tính của quan hệ

Cách 2:
Tập thực thể bên nhánh nhiều -> quan hệ
Khóa chính: khóa chính của tập thực thể đó
Khóa ngoại: Khóa chính của tập thực thể bên một (Tham chiếu quan hệ tương ứng)
Thuộc tính của quan hệ: Thuộc tính của tập thực thể đó + thuộc tính của MQH (nếu có)

Ánh xạ một - một:
Tập thực thể tham gia toàn bộ (Total: Ít nhất có một) -> quan hệ
Khóa chính: khóa chính của tập thực thể đó
Khóa ngoại: Khóa chính của tập thực thể bên nhánh tham gia một phần (Partial) tham chiếu quan hệ t/ứ
Thuộc tính của quan hệ: Thuộc tính của tập thực thể đó + thuộc tính của MQH (nếu có)

Mối quan hệ đa phân:
MQH -> quan hệ
Khóa chính: Khóa chính của các thực thể tham gia
Thuộc tính của MQH -> thuộc tính quan hệ

Ánh xạ lớp cha / lớp con:

Cách 1:
Thực thể cha -> quan hệ bình thường (thuộc tính, khóa chính...)
Thực thể con:
Khóa chính: Khóa chính của cha
Thuộc tính tương ứng -> thuộc tính quan hệ
	//Nhược: Truy cập nhiều bảng để lấy thông tin ở mức thấp

Cách 2:
Thực thể con:
Khóa chính: khóa chính của cha
Thuộc tính của cha + thuộc tính của con tương ứng -> thuộc tính quan hệ
	//Nhược: Dư thừa dữ liệu nếu một thực thể ở cha thuộc về nhiều hơn 1 lớp con

Cách 3:
Thực thể cha -> quan hệ
Thuộc tính quan hệ: Thuộc tính của cha tương ứng + các thuộc tính của con VÀ thêm một thuộc tính phân biệt từng bộ giá trị thuộc lớp con nào.
	//Nhược: Chỉ dùng cho disjoin và sẽ có nhiều NULL nếu các lớp con có nhiều thuộc tính
 
<h1>Kết nối CSDL với Project Winform C#</h1>

**I. Tạo CSDL**

1\. Kết nối SQL với server local “(localdb)\mssqllocaldb”

![](images/Aspose.Words.f0e5952f-f0aa-4c6d-9893-6d41311d8697.001.png)

Xây dựng trước CSDL tên SQL Server với database tên “QuanLyCuaHangTienLoi”

![](images/Aspose.Words.f0e5952f-f0aa-4c6d-9893-6d41311d8697.002.png)

**II. Kết nối CSDL**

Tạo Project Winform C# trên Visual Studio 2022. Vào tab View -> Sever Explorer, Mở bảng Server Explorer.

![](images/Aspose.Words.f0e5952f-f0aa-4c6d-9893-6d41311d8697.003.png)

Trong bảng Server Explorer: Right click -> Data Connection -> Add Connection

![](images/Aspose.Words.f0e5952f-f0aa-4c6d-9893-6d41311d8697.004.png)

Bảng Add Connection hiện ra, chọn Server name là server local “(localdb)\mssqllocaldb”. Sau đó nhập tên của CSDL đã được tạo từ trước là “QuanLyCuaHangTienLoi”. Chọn OK để thêm database.

![](images/Aspose.Words.f0e5952f-f0aa-4c6d-9893-6d41311d8697.005.png)

Mở Properties của database vừa mới được thêm vào, copy Connection String.

![](images/Aspose.Words.f0e5952f-f0aa-4c6d-9893-6d41311d8697.006.png)![](images/Aspose.Words.f0e5952f-f0aa-4c6d-9893-6d41311d8697.007.png)

Right click tên Project, chọn Properties. Sau đó vào mục Setting, nhập vào các ô tương ứng: Name: “cnnStr”, Type: “string”, Scope “Application” và Value là dòng địa chỉ Connection String vừa mới copy từ database. Đóng và lưu lại.

![](images/Aspose.Words.f0e5952f-f0aa-4c6d-9893-6d41311d8697.008.png)![](images/Aspose.Words.f0e5952f-f0aa-4c6d-9893-6d41311d8697.009.png)

Cuối cùng, vào code của Form. Thêm thư viện:

`using System.Data.SqlClient;`

Và tạo đối tượng “conn” bằng dòng lệnh:

`SqlConnection conn = new SqlConnection(Properties.Settings.Default.cnnStr)`

![](images/Aspose.Words.f0e5952f-f0aa-4c6d-9893-6d41311d8697.010.png)

Để mở kết nối, dùng câu lệnh “conn.Open()” và “conn.Close()” để đóng lại khi sử dụng truy vấn trong các hàm thực thi.
