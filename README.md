# I) THANH GHI

    1) THANH GHI DỮ LIỆU(DATA REGISTERS)
        Thanh ghi 32 bit: EAX, EBX, ECX, EDX 
        Thanh ghi 16 bit: AX, BX, CX, DX
        Thanh ghi 8 bit : AL,BL, CL, DL
        
        AX(accumulator register) được sử dụng trong đầu vào để lưu trữ các phép toán và AND/OR/XOR được lưu trữ trong thanh ghi EAX, AX, AL tùy theo kích thước của toán hạng.
        BX(base register) có thể được sử dụng trong địa chỉ được lập chỉ mục.
        CX( count register) được sử dụng để lưu trữ số lượng lặp lại cho các vòng lặp.
        DX(data register) được sử dụng trong đầu ra để lưu trữ các giá trị trung gian và kết quả của các phép toán số học.
    
    2) THANH GHI CON TRỎ (POINTER REGISTERS)
        Thanh ghi 32 bit: ESI, ESP, EBP
        Thanh ghi 16 bit: SI, SP, BP 
        
        IP(Instruction Pointer) IP kết hợp với thanh ghi CS (dưới dạng CS:IP) được sử dụng để lưu trữ địa chỉ của lệnh tiếp theo được thực thi trong chương trình.
        SP(Stack Pointer) SP kết hợp với thanh ghi SS (SS:SP) sử dụng để lưu trữ địa chỉ của đỉnh của ngăn xếp.
        BP(base pointer register) được sử dụng để lưu trữ địa chỉ của một vùng dữ liệu trên ngăn xếp.Địa chỉ trong thanh ghi SS được kết hợp với phần bù trong BP để lấy vị trí của tham số.BP cũng có thể được kết hợp với DI và SI làm thanh ghi cơ sở cho địa chỉ đặc biệt.

    3) THANH GHI CHỈ SỐ (INDEX REGISTERS)
        Thanh ghi 32 bit: ESI, EDI, 
        Thanh ghi 16 bit: SI, DI

        SI(source index register) được sử dụng để lưu trữ con trỏ đến dữ liệu nguồn trong bộ nhớ.
        DI( destination index register) được dử dụng để lưu trữ con trỏ đến dữ liệu đích trong bộ nhớ.
    
    4) Thanh ghi phân đoạn()
        CS(Code segment register) chứa địa chỉ của phân đoạn mã (code segment) được thực thi. Thanh ghi này chỉ định vị trí của mã chương trình trong bộ nhớ.
        DS(Data segment register) chứa địa chỉ của phân đoạn dữ liệu (data segment) được sử dụng bởi chương trình. Thanh ghi này chỉ định vị trí của dữ liệu trong bộ nhớ
        SS(Stack segment register) chứa địa chỉ của phân đoạn ngăn xếp (stack segment) được sử dụng để lưu trữ các biến cục bộ và thông tin địa chỉ trở về của các hàm.
        ES(Extra segment register) chứa địa chỉ của một phân đoạn dữ liệu (extra segment) được sử dụng bởi các lệnh MOV.

    5) Thanh ghi điều khiển( control register)  
    * Có 4 thanh ghi điều khiển chính:
        CR0(control register 0) chứa các cờ điều kiển trạng thái hệ thống như chế độ bảo vệ, cấp độ ưu tiên ngắt, bật/tắt phần trang, bật/tắt cache,.. Nó cũng chứa các cờ điều kiển bảo mật như cho phép hoặc cấm việc thực hiện ma ở mức đặc quyền cao hơn.
        CR1(control register1) chứa địa chỉ trang gây lỗi trong chính quá trình phan trang(paying) của hệ thống. Khi xảy ra lỗi phân trang, bộ vi xử lý sẽ lưu địa chỉ của trang gây lỗi vào CR2 để có thể xác định nguyên nhân lỗi
        CR2(control register2) chứa địa chỉ của thư mục của trang (page directory) được sử dụng trong quá trình phân trang
    * Các loại Flags:
        Carry flag(CF) được sử dụng để xác định có xảy ra tràn số trong quá trình thực hiện phép tính hay không
        Zero flag(ZL) được thiết lập khi kết quả của phép tính bằng 0
        Sign flag(SL) chứa bit cao nhất của kết quả phép tính. Nó được sử dụng để xác định đấu của số kết quả
        Overflow flag(OF) được sử dụng để xác định tràn số đối với phép tính nhị phấn có dấu
        Interrupt flag(IF) xác định xe ngắt (interrupt) có bật hay tắt
        Derection flag(DF) xác định hướng đi của chuỗi trong các lệnh chuỗi
        Auxiliary carry flag(AF) được sử dụng để xác định tràn số ở các bit thấp hơn trong phép tính nhịn phân không dấu
II) DWORD (DOUBLE WORD) & BWORD( BYTE WORD)
    1) DWORD 
        Dword là từ viết tắt của Doubleword, là một loại kiểu dữ liệu trong kiến trúc máy tính x86 được sử dụng trong lập trình assembly và các ngôn ngữ lập trình khác. Dword có kích thước 32 bit (tức là 4 byte), được lưu trữ trên bộ nhớ theo thứ tự little-endian, 
        nghĩa là byte thấp nhất của từ được lưu trữ trước, byte cao nhất được lưu trữ cuối cùng. Trong ASM khai báo dword dùng từ khóa "dd"
   
   2) BWORD
        Bword là từ viết tắt của Byte word, là một kiểu dữ liệu trong lập trình assembly và kiến trúc máy tính x86. Bword có kích thước là 16 bit (2 byte) và được lưu trữ theo thứ tự little-endian.
        Trong ASM khai báo dùng từ khóa "dw".
