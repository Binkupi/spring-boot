Cơ sở dữ liệu: Mysql
Cấu hình cơ sở dữ liệu
Tên DB: test
username: root
password:
(cấu hình DB có thể xem trong file src/main/resources/application.properties)
Sử dụng eclips để build source
Cài thư viện spring boot về eclips( Help-> Eclipse Marketplace->chọn spring boot->install)
Clone source git về, chọn file->import->Maven->Existing Maven Projects->CHọn đường dẫn source->finished
Chạy source: Chuột phải vào project->run as->spring boot app
Debuf source: Chuột phải vào project->debug as->spring boot app(Nhớ đặt breakpoint)
Đường dẫn test thử api http://localhost:8080/api/test/student2?age=5
Tài khoản admin: 18521312@gm.uit.edu.vn
Mật khẩu: 123456789