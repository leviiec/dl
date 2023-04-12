HƯỚNG DẪN SỬ DỤNG OLLYDBG CHO NGƯỜI MỚI BẮT ĐẦU
1) Cài đặt 	
	- OllyDBG hay gọi tắt là Olly là công cụ debug phổ biến nhờ giao diện trực quan và dễ dụng nên Olly phù hợp với người dùng ở mọi trình độ
	- Mọi người có thể download tại: http://www.ollydbg.de
	- Việc sử dụng OllyDBG cũng khá dễ, sau khi tải xong thì giải nén và chạy chương trình OLLYDBG.EXE mà không cần phải cài đặt
2) Giải một bài đơn giản RE
*Giới thiệu sơ về Olly
	- Vào trang http://reversing.kr/challenge.php - chọn bài Easy Crack để làm
	- Đầu tiên mở file Easy_CrakMe lên
	![image](https://user-images.githubusercontent.com/128345171/230576180-4da81c1c-35fa-4855-97f6-fe42a8f145ac.png)
	
	- Ta sẽ thấy cửa sổ OllyDBG được chia làm 5 cửa sổ con:
	+ Disassembler window: các đoạn mã của chương trình dưới dạng code asm và các dạng comment tại các dòng code đó
	+ Regiter window: các thanh ghi và giá trị của chúng
	+ Tip window: các thông tin bổ sung cho 1 dòng code. Các thông tin này khá hữu ích cho quá trình debug
	+ Dump window: cho phép người sử dụng xem và chỉnh sửa được các giá trị trong bộ nhớ của chương trình đang được debug
	+ Stack window: thông tin về stack của chương trình 
	
	- Ngoài 5 cửa sổ trên thì Olly còn một số cửa sổ khác. Để ý trên thanh menu các các chức năng
	![image](https://user-images.githubusercontent.com/128345171/230585815-2afa8dee-0185-464f-8aa8-c8f0c087b320.png)
	
	+ L là cửa sổ Log data chứa các thông tin về các module, các import library và các plugins được load vào Olly
	+ E là cửa sổ Executable modules là danh sách các file thực thi được chương trình sử dụng
	+ M là cửa sổ Memory Map chứa các thông tin về bộ nhớ được chương trình của ta sử dụng
	+ T là cửa sổ Threads sẽ liệt kê các thread của chương trình
	+ W là Window
	+ H là của sổ Handles
	+ / là Patches cửa sổ chứa các thông tin về câu lệnh ta đã sửa ở trong chương trình
	+ K là sửa sổ Call Stack
	+ B là cửa số Breakpoints hiển thị các breakpoint ta đặt trong chương trình
	+ R là cửa sổ References chứa thông tin về kết quả cho chức năng tìm kiếm trong Olly
	
	- Những chức năng không thế thiếu đó :
	![image](https://user-images.githubusercontent.com/128345171/230589235-44d58579-c26a-482a-85ed-d8cb728893cb.png)
	+ F9 là run
	+ F2 là breakpoint
	+ F7 là step into
	+ F8 là step over
	+ Ctrl +F2 là restart
Tiến hành giải
	- Bên trên là thông tin cơ bản về các chức năng của Olly. Bây giờ sẽ bắt tay vào giải
	- Để chạy chương trình ta bấm F9 
	![image](https://user-images.githubusercontent.com/128345171/230590450-c6054c1d-ea0a-4b17-84e3-8839bfdde1f0.png)
	
	- Tiếp theo nhập bừa một kí tự vào như tôi sẽ nhập tên tôi vào
	![image](https://user-images.githubusercontent.com/128345171/230591002-46309ce5-99a2-4f69-b4c5-4dae09569e3e.png)
	
	- Tất nhiên đó ko phải là password.Nhưng vẫn thu được một thông tin.Sẽ có thông báo là " Incorrect Password" 
	- Sau đó sử dụng chức năng tìm kiếm của OllyDBG để tìm tất cả các chuỗi trong chương trình
	
	![image](https://user-images.githubusercontent.com/128345171/230591563-d6c34289-285e-4448-8d37-47c2c17cb1f4.png)
	
	- Được kết quả như sau 
	
	![image](https://user-images.githubusercontent.com/128345171/230592859-5fa172f4-80c1-431c-b499-eae7a7dfd694.png)
	
	- Sau đố click double vào chuỗi" Incorrect Password" ta đến được đoạn code này
	
	![image](https://user-images.githubusercontent.com/128345171/230593043-1103277e-5962-447a-86d9-953ce7829b1b.png)
	
	- Ta sẽ thấy được 2 trường hợp đó là: "Incorrect Password" ta vừa gặp và "Congratulation!!"
	- Câu lệnh đầu tiên của đoạn code in ra thông báo "Incorrect Password" tại địa chỉ 0x0040113c và t thấy tại địa chỉ 0x0041135 có dấu mũi tên đến câu lệnh tại địa chỉ0x0040113c. Ta thấy có 4 lệnh JNZ đến địa chir0x0040113c và chọn lệnh đầu tiên
	
	![image](https://user-images.githubusercontent.com/128345171/230600130-34a24169-3d4e-4ff9-97f3-46e06446c73a.png)
	
	- Để ý đến câu lệnh tại địa chỉ 0x004010AA có comment : GetDlgItemTextA – lấy 1 đoạn dữ liệu từ 1 dialog box. => có thể đây chính là câu lệnh thực hiện nhiệm vụ đọc password ta nhập vào
	- Tiếp theo nhấn F2 để đặt đánh dấu tại đây. Và chạy lại chương trình tại chỗ đánh dấu 
	
	![image](https://user-images.githubusercontent.com/128345171/230600410-df8d1d53-d1fb-4e21-926a-fc050372ea2e.png)
	
	- Sau đó nhấm F8 để chạy qua hàm GetDlgItemTextA. Ta có kết quả như sau:
	![image](https://user-images.githubusercontent.com/128345171/230600645-d77989c1-49c0-4a25-9177-b71a73efc159.png)
	
	- Nhìn vào Stack, password ta nhập vào là "lephuocanh" đã được ghi vào trong stack bắt đầu tại địa chỉ 0x0012FA18
	
	![image](https://user-images.githubusercontent.com/128345171/230600842-431836fe-14ca-46c8-8314-5adb0c0c180e.png)
	
	- Thực hiện câu lệnh so sánh giá trị tại địa chỉ ESP+5 và 0x61 
	- Địa chỉ ESP+5 là ký tự thứ 2 trong password ta vừa nhập vào( vì "e" trong "lephuocanh" ở vị trí thứ 2)
	- Câu lệnh tiếp theo:
	
	![image](https://user-images.githubusercontent.com/128345171/230601137-66662c53-e5d9-4386-8498-55c2620d1a04.png)
	
	- Sau câu lệnh CMP, nếu 2 giá trị được mang ra so sánh mà khác nhau, thì cờ ZF vẫn mang giá trọ 0 và lệnh JNZ được thực hiện và sẽ thông báo "Incorrect Password" sẽ được thực hiện và bật ra thông báo
	- Như vậy bước kiểm tra đầu tiên để password được chấp nhận thì ký tự thứ 2 của password là ký tự có mã ASCII là 0x61 => là kí tự "a"
	- Ta có thể sửa password, restart lại chương trình và run lại, nhưng ta có thể sử dụng cách bớt phức tạp hơn là ghi nhớ kí tự thứ 2 của password là "a" rồi sửa cờ ZF để tiếp tực thực hiện chương trình
	- Ta clik double vào giá trị 0 ở cờ ZF, giá trị ZF được set lại giá trị =1
	
	![image](https://user-images.githubusercontent.com/128345171/230601629-709796e9-7d8d-4117-aa05-9e887a5279a7.png)
	
	- Nhìn vào tip window ở bên dưới Assembler window sẽ thấy thông tin:
	
	![image](https://user-images.githubusercontent.com/128345171/230601830-e8b6dc53-515b-436c-b915-c847460caadf.png)
	
	- Nhấn F8 để tiếp tục thực hiện chương trình, đến câu lệnh:
	
	![image](https://user-images.githubusercontent.com/128345171/230627072-4612bf05-04ea-4963-ba59-8ed155b2cf4d.png)
	
	- Thì quan sát stack
	
	![image](https://user-images.githubusercontent.com/128345171/230627537-4a9d5417-2420-472f-ba6d-24e1144539a7.png)
	
	- 2 chuỗi "phuocanh" và "5y" và giá trị 0x02 được đẩy vào  stack trước khi thực hiện Call 0x00401150
	- Nhấn F8 để thực hiện hàm tại địa chỉ 0x00401150
	- Đoạn chương trình thực hiện công việc so sánh 2 ký tự thứ 3,4 của password với chuỗi "5y"
	- Như vậy ta đã có 3 ký tự 2,3,4 của password là "a5y"
	- Tiếp tục sửa cờ ZF để vượt qua câu lệnh
	
	![image](https://user-images.githubusercontent.com/128345171/230631655-32d0cb5d-f2e2-4757-b468-a925da8dcd4d.png)
	
	- Tiếp tục so sách các ký tự từ thứ 5 trở đi đến hết password với chuỗi "R3versing"
	- Từ đó suy ra được password là " .a5yR3versing"
	- Nhấn F9 để chạy lại chương trình và nhập password là ".a5R3versing"
	
	![image](https://user-images.githubusercontent.com/128345171/230632642-5887ae8f-d9ec-44b2-8f8d-e58755cd3165.png)
	
	- Nhấn F8 để tiếp tục thực hiện chương trình cho đến câu lệnh:
	
	![image](https://user-images.githubusercontent.com/128345171/230633029-7a793fdf-1524-4c1f-8a01-9baa17d96c8d.png)
	
	- Đến đây tiếp tục sửa cờ ZF
	
	![image](https://user-images.githubusercontent.com/128345171/230633112-62bd56ab-8560-480d-8c2e-37cecd86f6b6.png)
	
	- Nhấn F8 để tiếp tục thực hiện chương trình cho đến câu lệnh:
	
	![image](https://user-images.githubusercontent.com/128345171/230633244-6c671f6a-939d-4a4a-b526-4435bb8205b6.png)
	
	- Nhìn vào stack ta thấy:
	
	![image](https://user-images.githubusercontent.com/128345171/230633327-69538d9b-a72d-476a-9abf-c33704dcb899.png)
	
	- So sánh giá trị tại ESP+4 là 0x45
	- 0x45 trong bảng mã ASCII => ký tự "E"
	- Tiếp tục nhấn F8 đến câu lệnh
	
	![image](https://user-images.githubusercontent.com/128345171/230633962-5c2faaa9-02eb-4598-bdea-f2851bf3e159.png)
	
	- Đến đây tiếp tục sửa cờ ZF
	- Tiếp tục nhấp F8 và thấy 
	
	![image](https://user-images.githubusercontent.com/128345171/230634168-cc46e906-ce68-4a34-809c-dfe570f1b2af.png)
	
	- Đến đây ta đã tìm được password là "Ea5yR3versing"
	- Nhấn F9 để chạy chương trình và nhập password là "Ea5yR3versing"
	
	![image](https://user-images.githubusercontent.com/128345171/230634471-5fda89cd-22d6-490c-9617-0ea253df9eae.png)
	
	- Đến đây đã giải xong bài Easy_CrackMe, hy vọng thông tin này hữu ích cho mọi người
	

	
	
	

	
	
