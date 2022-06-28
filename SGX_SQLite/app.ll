; ModuleID = 'app.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, [24 x i8*] }
%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_put"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %struct.ms_ecall_opendb_t, [8 x %struct.ms_ecall_opendb_t], i32, %struct.ms_ecall_opendb_t*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%struct.ms_ecall_opendb_t = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%struct._sgx_misc_attribute_t = type { %struct.timespec, i32 }

@ocall_table_Enclave = internal constant %struct.anon { i64 24, [24 x i8*] [i8* bitcast (i32 (i8*)* @Enclave_ocall_println_string to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_print_string to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_print_error to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_lstat to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_stat to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_fstat to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_ftruncate to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_getcwd to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_getpid to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_getuid to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_getenv to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_open64 to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_close to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_lseek64 to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_read to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_write to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_fsync to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_fcntl to i8*), i8* bitcast (i32 (i8*)* @Enclave_ocall_unlink to i8*), i8* bitcast (i32 (i8*)* @Enclave_sgx_oc_cpuidex to i8*), i8* bitcast (i32 (i8*)* @Enclave_sgx_thread_wait_untrusted_event_ocall to i8*), i8* bitcast (i32 (i8*)* @Enclave_sgx_thread_set_untrusted_event_ocall to i8*), i8* bitcast (i32 (i8*)* @Enclave_sgx_thread_setwait_untrusted_events_ocall to i8*), i8* bitcast (i32 (i8*)* @Enclave_sgx_thread_set_multiple_untrusted_events_ocall to i8*)] }, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_App.cpp, i8* null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [8 x i8] c"Usage: \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" <database>\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"enclave.signed.so\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Error: creating enclave\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Info: SQLite SGX enclave successfully created.\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Error: Making an ecall_open()\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Enter SQL statement to execute or 'quit' to exit: \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Error: Making an ecall_execute_sql()\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Error: Making an ecall_closedb()\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Info: SQLite SGX enclave successfully returned.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ecall_opendb(i64 %0, i8* %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ms_ecall_opendb_t, align 8
  %4 = bitcast %struct.ms_ecall_opendb_t* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #19
  %5 = getelementptr inbounds %struct.ms_ecall_opendb_t, %struct.ms_ecall_opendb_t* %3, i64 0, i32 0
  store i8* %1, i8** %5, align 8, !tbaa !4
  %6 = icmp eq i8* %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @strlen(i8* noundef nonnull %1) #20
  %9 = add i64 %8, 1
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i64 [ %9, %7 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.ms_ecall_opendb_t, %struct.ms_ecall_opendb_t* %3, i64 0, i32 1
  store i64 %11, i64* %12, align 8, !tbaa !10
  %13 = call i32 @sgx_ecall(i64 %0, i32 0, i8* bitcast (%struct.anon* @ocall_table_Enclave to i8*), i8* nonnull %4) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #19
  ret i32 %13
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #2

declare i32 @sgx_ecall(i64, i32, i8*, i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_println_string(i8* nocapture readonly %0) #0 {
  %2 = bitcast i8* %0 to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !11
  tail call void @ocall_println_string(i8* %3) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_print_string(i8* nocapture readonly %0) #0 {
  %2 = bitcast i8* %0 to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !13
  tail call void @ocall_print_string(i8* %3) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_print_error(i8* nocapture readonly %0) #0 {
  %2 = bitcast i8* %0 to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !15
  tail call void @ocall_print_error(i8* %3) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_lstat(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8
  %3 = bitcast i8* %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !17
  %5 = getelementptr inbounds i8, i8* %0, i64 16
  %6 = bitcast i8* %5 to %struct.stat**
  %7 = load %struct.stat*, %struct.stat** %6, align 8, !tbaa !20
  %8 = getelementptr inbounds i8, i8* %0, i64 24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !21
  %11 = tail call i32 bitcast (i32 (i8*, %struct.stat*)* @ocall_lstat to i32 (i8*, %struct.stat*, i64)*)(i8* %4, %struct.stat* %7, i64 %10) #19
  %12 = bitcast i8* %0 to i32*
  store i32 %11, i32* %12, align 8, !tbaa !22
  %13 = tail call i32* @__errno_location() #21
  %14 = load i32, i32* %13, align 4, !tbaa !23
  %15 = getelementptr inbounds i8, i8* %0, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 4, !tbaa !24
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_stat(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8
  %3 = bitcast i8* %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !25
  %5 = getelementptr inbounds i8, i8* %0, i64 16
  %6 = bitcast i8* %5 to %struct.stat**
  %7 = load %struct.stat*, %struct.stat** %6, align 8, !tbaa !27
  %8 = getelementptr inbounds i8, i8* %0, i64 24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !28
  %11 = tail call i32 bitcast (i32 (i8*, %struct.stat*)* @ocall_stat to i32 (i8*, %struct.stat*, i64)*)(i8* %4, %struct.stat* %7, i64 %10) #19
  %12 = bitcast i8* %0 to i32*
  store i32 %11, i32* %12, align 8, !tbaa !29
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_fstat(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 4
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !30
  %5 = getelementptr inbounds i8, i8* %0, i64 8
  %6 = bitcast i8* %5 to %struct.stat**
  %7 = load %struct.stat*, %struct.stat** %6, align 8, !tbaa !32
  %8 = getelementptr inbounds i8, i8* %0, i64 16
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !33
  %11 = tail call i32 bitcast (i32 (i32, %struct.stat*)* @ocall_fstat to i32 (i32, %struct.stat*, i64)*)(i32 %4, %struct.stat* %7, i64 %10) #19
  %12 = bitcast i8* %0 to i32*
  store i32 %11, i32* %12, align 8, !tbaa !34
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_ftruncate(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 4
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !35
  %5 = getelementptr inbounds i8, i8* %0, i64 8
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !37
  %8 = tail call i32 @ocall_ftruncate(i32 %4, i64 %7) #19
  %9 = bitcast i8* %0 to i32*
  store i32 %8, i32* %9, align 8, !tbaa !38
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_getcwd(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 16
  %3 = bitcast i8* %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, i8* %0, i64 24
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !41
  %8 = tail call i8* @ocall_getcwd(i8* %4, i64 %7) #19
  %9 = bitcast i8* %0 to i8**
  store i8* %8, i8** %9, align 8, !tbaa !42
  %10 = tail call i32* @__errno_location() #21
  %11 = load i32, i32* %10, align 4, !tbaa !23
  %12 = getelementptr inbounds i8, i8* %0, i64 8
  %13 = bitcast i8* %12 to i32*
  store i32 %11, i32* %13, align 8, !tbaa !43
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_getpid(i8* nocapture %0) #0 {
  %2 = tail call i32 @ocall_getpid() #19
  %3 = bitcast i8* %0 to i32*
  store i32 %2, i32* %3, align 4, !tbaa !44
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_getuid(i8* nocapture %0) #0 {
  %2 = tail call i32 @ocall_getuid() #19
  %3 = bitcast i8* %0 to i32*
  store i32 %2, i32* %3, align 4, !tbaa !46
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_getenv(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8
  %3 = bitcast i8* %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !48
  %5 = tail call i8* @ocall_getenv(i8* %4) #19
  %6 = bitcast i8* %0 to i8**
  store i8* %5, i8** %6, align 8, !tbaa !50
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_open64(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8
  %3 = bitcast i8* %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !51
  %5 = getelementptr inbounds i8, i8* %0, i64 16
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !53
  %8 = getelementptr inbounds i8, i8* %0, i64 20
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !54
  %11 = tail call i32 @ocall_open64(i8* %4, i32 %7, i32 %10) #19
  %12 = bitcast i8* %0 to i32*
  store i32 %11, i32* %12, align 8, !tbaa !55
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_close(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 4
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !56
  %5 = tail call i32 @ocall_close(i32 %4) #19
  %6 = bitcast i8* %0 to i32*
  store i32 %5, i32* %6, align 4, !tbaa !58
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_lseek64(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 12
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !59
  %5 = getelementptr inbounds i8, i8* %0, i64 16
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !61
  %8 = getelementptr inbounds i8, i8* %0, i64 24
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 8, !tbaa !62
  %11 = tail call i64 @ocall_lseek64(i32 %4, i64 %7, i32 %10) #19
  %12 = bitcast i8* %0 to i64*
  store i64 %11, i64* %12, align 8, !tbaa !63
  %13 = tail call i32* @__errno_location() #21
  %14 = load i32, i32* %13, align 4, !tbaa !23
  %15 = getelementptr inbounds i8, i8* %0, i64 8
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 8, !tbaa !64
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_read(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !65
  %5 = getelementptr inbounds i8, i8* %0, i64 16
  %6 = bitcast i8* %5 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !67
  %8 = getelementptr inbounds i8, i8* %0, i64 24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !68
  %11 = tail call i32 @ocall_read(i32 %4, i8* %7, i64 %10) #19
  %12 = bitcast i8* %0 to i32*
  store i32 %11, i32* %12, align 8, !tbaa !69
  %13 = tail call i32* @__errno_location() #21
  %14 = load i32, i32* %13, align 4, !tbaa !23
  %15 = getelementptr inbounds i8, i8* %0, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 4, !tbaa !70
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_write(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !71
  %5 = getelementptr inbounds i8, i8* %0, i64 16
  %6 = bitcast i8* %5 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !73
  %8 = getelementptr inbounds i8, i8* %0, i64 24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !74
  %11 = tail call i32 @ocall_write(i32 %4, i8* %7, i64 %10) #19
  %12 = bitcast i8* %0 to i32*
  store i32 %11, i32* %12, align 8, !tbaa !75
  %13 = tail call i32* @__errno_location() #21
  %14 = load i32, i32* %13, align 4, !tbaa !23
  %15 = getelementptr inbounds i8, i8* %0, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 4, !tbaa !76
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_fsync(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 4
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !77
  %5 = tail call i32 @ocall_fsync(i32 %4) #19
  %6 = bitcast i8* %0 to i32*
  store i32 %5, i32* %6, align 4, !tbaa !79
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_fcntl(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !80
  %5 = getelementptr inbounds i8, i8* %0, i64 12
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !82
  %8 = getelementptr inbounds i8, i8* %0, i64 16
  %9 = bitcast i8* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !83
  %11 = getelementptr inbounds i8, i8* %0, i64 24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !84
  %14 = tail call i32 @ocall_fcntl(i32 %4, i32 %7, i8* %10, i64 %13) #19
  %15 = bitcast i8* %0 to i32*
  store i32 %14, i32* %15, align 8, !tbaa !85
  %16 = tail call i32* @__errno_location() #21
  %17 = load i32, i32* %16, align 4, !tbaa !23
  %18 = getelementptr inbounds i8, i8* %0, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 4, !tbaa !86
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_ocall_unlink(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8
  %3 = bitcast i8* %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !87
  %5 = tail call i32 @ocall_unlink(i8* %4) #19
  %6 = bitcast i8* %0 to i32*
  store i32 %5, i32* %6, align 8, !tbaa !89
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_sgx_oc_cpuidex(i8* nocapture readonly %0) #0 {
  %2 = bitcast i8* %0 to i32**
  %3 = load i32*, i32** %2, align 8, !tbaa !90
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to i32*
  %6 = load i32, i32* %5, align 8, !tbaa !92
  %7 = getelementptr inbounds i8, i8* %0, i64 12
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !93
  tail call void @sgx_oc_cpuidex(i32* %3, i32 %6, i32 %9) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_sgx_thread_wait_untrusted_event_ocall(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8
  %3 = bitcast i8* %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !94
  %5 = tail call i32 @sgx_thread_wait_untrusted_event_ocall(i8* %4) #19
  %6 = bitcast i8* %0 to i32*
  store i32 %5, i32* %6, align 8, !tbaa !96
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_sgx_thread_set_untrusted_event_ocall(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8
  %3 = bitcast i8* %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !97
  %5 = tail call i32 @sgx_thread_set_untrusted_event_ocall(i8* %4) #19
  %6 = bitcast i8* %0 to i32*
  store i32 %5, i32* %6, align 8, !tbaa !99
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_sgx_thread_setwait_untrusted_events_ocall(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8
  %3 = bitcast i8* %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !100
  %5 = getelementptr inbounds i8, i8* %0, i64 16
  %6 = bitcast i8* %5 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !102
  %8 = tail call i32 @sgx_thread_setwait_untrusted_events_ocall(i8* %4, i8* %7) #19
  %9 = bitcast i8* %0 to i32*
  store i32 %8, i32* %9, align 8, !tbaa !103
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Enclave_sgx_thread_set_multiple_untrusted_events_ocall(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8
  %3 = bitcast i8* %2 to i8***
  %4 = load i8**, i8*** %3, align 8, !tbaa !104
  %5 = getelementptr inbounds i8, i8* %0, i64 16
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !106
  %8 = tail call i32 @sgx_thread_set_multiple_untrusted_events_ocall(i8** %4, i64 %7) #19
  %9 = bitcast i8* %0 to i32*
  store i32 %8, i32* %9, align 8, !tbaa !107
  ret i32 0
}

declare i32 @sgx_thread_set_multiple_untrusted_events_ocall(i8**, i64) local_unnamed_addr #3

declare i32 @sgx_thread_setwait_untrusted_events_ocall(i8*, i8*) local_unnamed_addr #3

declare i32 @sgx_thread_set_untrusted_event_ocall(i8*) local_unnamed_addr #3

declare i32 @sgx_thread_wait_untrusted_event_ocall(i8*) local_unnamed_addr #3

declare void @sgx_oc_cpuidex(i32*, i32, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @ecall_execute_sql(i64 %0, i8* %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ms_ecall_opendb_t, align 8
  %4 = bitcast %struct.ms_ecall_opendb_t* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #19
  %5 = getelementptr inbounds %struct.ms_ecall_opendb_t, %struct.ms_ecall_opendb_t* %3, i64 0, i32 0
  store i8* %1, i8** %5, align 8, !tbaa !108
  %6 = icmp eq i8* %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @strlen(i8* noundef nonnull %1) #20
  %9 = add i64 %8, 1
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i64 [ %9, %7 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.ms_ecall_opendb_t, %struct.ms_ecall_opendb_t* %3, i64 0, i32 1
  store i64 %11, i64* %12, align 8, !tbaa !110
  %13 = call i32 @sgx_ecall(i64 %0, i32 1, i8* bitcast (%struct.anon* @ocall_table_Enclave to i8*), i8* nonnull %4) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #19
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @ecall_closedb(i64 %0) local_unnamed_addr #0 {
  %2 = tail call i32 @sgx_ecall(i64 %0, i32 2, i8* bitcast (%struct.anon* @ocall_table_Enclave to i8*), i8* null) #19
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @ocall_lstat(i8* %0, %struct.stat* %1) local_unnamed_addr #0 {
  %3 = tail call i32 @__lxstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %1) #19
  ret i32 %3
}

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @ocall_stat(i8* %0, %struct.stat* %1) local_unnamed_addr #0 {
  %3 = tail call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %1) #19
  ret i32 %3
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @ocall_fstat(i32 %0, %struct.stat* %1) local_unnamed_addr #0 {
  %3 = tail call i32 @__fxstat(i32 1, i32 %0, %struct.stat* nonnull %1) #19
  ret i32 %3
}

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @ocall_ftruncate(i32 %0, i64 %1) local_unnamed_addr #0 {
  %3 = tail call i32 @ftruncate(i32 %0, i64 %1) #19
  ret i32 %3
}

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i8* @ocall_getcwd(i8* %0, i64 %1) local_unnamed_addr #0 {
  %3 = tail call i8* @getcwd(i8* %0, i64 %1) #19
  ret i8* %3
}

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @ocall_getpid() local_unnamed_addr #0 {
  %1 = tail call i32 @getpid() #19
  ret i32 %1
}

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define i32 @ocall_open64(i8* nocapture readonly %0, i32 %1, i32 %2) local_unnamed_addr #6 {
  %4 = tail call i32 (i8*, i32, ...) @open(i8* %0, i32 %1, i32 %2) #19
  ret i32 %4
}

; Function Attrs: nofree
declare noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define i64 @ocall_lseek64(i32 %0, i64 %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call i64 @lseek(i32 %0, i64 %1, i32 %2) #19
  ret i64 %4
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define i32 @ocall_read(i32 %0, i8* nocapture %1, i64 %2) local_unnamed_addr #6 {
  %4 = tail call i64 @read(i32 %0, i8* %1, i64 %2) #19
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define i32 @ocall_write(i32 %0, i8* nocapture readonly %1, i64 %2) local_unnamed_addr #6 {
  %4 = tail call i64 @write(i32 %0, i8* %1, i64 %2) #19
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, i8* nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define i32 @ocall_fcntl(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #0 {
  %5 = tail call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %2) #19
  ret i32 %5
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @ocall_close(i32 %0) local_unnamed_addr #0 {
  %2 = tail call i32 @close(i32 %0) #19
  ret i32 %2
}

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define i32 @ocall_unlink(i8* nocapture readonly %0) local_unnamed_addr #6 {
  %2 = tail call i32 @unlink(i8* %0) #19
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(i8* nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define i32 @ocall_getuid() local_unnamed_addr #0 {
  %1 = tail call i32 @getuid() #19
  ret i32 %1
}

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #5

; Function Attrs: nofree nounwind readonly uwtable
define i8* @ocall_getenv(i8* nocapture readonly %0) local_unnamed_addr #9 {
  %2 = tail call i8* @getenv(i8* %0) #19
  ret i8* %2
}

; Function Attrs: nofree nounwind readonly
declare noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define i32 @ocall_fsync(i32 %0) local_unnamed_addr #0 {
  %2 = tail call i32 @fsync(i32 %0) #19
  ret i32 %2
}

declare i32 @fsync(i32) local_unnamed_addr #3

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_App.cpp() #11 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #19
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #5

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @ocall_print_error(i8* %0) local_unnamed_addr #13 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %14

3:                                                ; preds = %1
  %4 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8**), align 8, !tbaa !111
  %5 = getelementptr i8, i8* %4, i64 -24
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8*), i64 %7
  %9 = bitcast i8* %8 to %"class.std::basic_ios"*
  %10 = getelementptr inbounds i8, i8* %8, i64 32
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !114
  %13 = or i32 %12, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %9, i32 %13)
  br label %17

14:                                               ; preds = %1
  %15 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #19
  %16 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* nonnull %0, i64 %15)
  br label %17

17:                                               ; preds = %3, %14
  %18 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8**), align 8, !tbaa !111
  %19 = getelementptr i8, i8* %18, i64 -24
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 240
  %23 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8*), i64 %22
  %24 = bitcast i8* %23 to %"class.std::ctype"**
  %25 = load %"class.std::ctype"*, %"class.std::ctype"** %24, align 8, !tbaa !124
  %26 = icmp eq %"class.std::ctype"* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

28:                                               ; preds = %17
  %29 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %25, i64 0, i32 8
  %30 = load i8, i8* %29, align 8, !tbaa !127
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %25, i64 0, i32 9, i64 10
  %34 = load i8, i8* %33, align 1, !tbaa !129
  br label %41

35:                                               ; preds = %28
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %25)
  %36 = bitcast %"class.std::ctype"* %25 to i8 (%"class.std::ctype"*, i8)***
  %37 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %36, align 8, !tbaa !111
  %38 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %37, i64 6
  %39 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %38, align 8
  %40 = tail call signext i8 %39(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %25, i8 signext 10)
  br label %41

41:                                               ; preds = %32, %35
  %42 = phi i8 [ %34, %32 ], [ %40, %35 ]
  %43 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 signext %42)
  %44 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %43)
  ret void
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264), i32) local_unnamed_addr #3

declare nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #14

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

declare nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8 signext) local_unnamed_addr #3

declare nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @ocall_print_string(i8* %0) local_unnamed_addr #13 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %14

3:                                                ; preds = %1
  %4 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !111
  %5 = getelementptr i8, i8* %4, i64 -24
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %7
  %9 = bitcast i8* %8 to %"class.std::basic_ios"*
  %10 = getelementptr inbounds i8, i8* %8, i64 32
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !114
  %13 = or i32 %12, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %9, i32 %13)
  br label %17

14:                                               ; preds = %1
  %15 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #19
  %16 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %0, i64 %15)
  br label %17

17:                                               ; preds = %3, %14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ocall_println_string(i8* %0) local_unnamed_addr #13 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %14

3:                                                ; preds = %1
  %4 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !111
  %5 = getelementptr i8, i8* %4, i64 -24
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %7
  %9 = bitcast i8* %8 to %"class.std::basic_ios"*
  %10 = getelementptr inbounds i8, i8* %8, i64 32
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !114
  %13 = or i32 %12, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %9, i32 %13)
  br label %17

14:                                               ; preds = %1
  %15 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #19
  %16 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %0, i64 %15)
  br label %17

17:                                               ; preds = %3, %14
  %18 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !111
  %19 = getelementptr i8, i8* %18, i64 -24
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 240
  %23 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %22
  %24 = bitcast i8* %23 to %"class.std::ctype"**
  %25 = load %"class.std::ctype"*, %"class.std::ctype"** %24, align 8, !tbaa !124
  %26 = icmp eq %"class.std::ctype"* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

28:                                               ; preds = %17
  %29 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %25, i64 0, i32 8
  %30 = load i8, i8* %29, align 8, !tbaa !127
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %25, i64 0, i32 9, i64 10
  %34 = load i8, i8* %33, align 1, !tbaa !129
  br label %41

35:                                               ; preds = %28
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %25)
  %36 = bitcast %"class.std::ctype"* %25 to i8 (%"class.std::ctype"*, i8)***
  %37 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %36, align 8, !tbaa !111
  %38 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %37, i64 6
  %39 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %38, align 8
  %40 = tail call signext i8 %39(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %25, i8 signext 10)
  br label %41

41:                                               ; preds = %32, %35
  %42 = phi i8 [ %34, %32 ], [ %40, %35 ]
  %43 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %42)
  %44 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %43)
  ret void
}

; Function Attrs: norecurse uwtable
define i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #15 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i64, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %55, label %8

8:                                                ; preds = %2
  %9 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 7)
  %10 = load i8*, i8** %1, align 8, !tbaa !130
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !111
  %14 = getelementptr i8, i8* %13, i64 -24
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %16
  %18 = bitcast i8* %17 to %"class.std::basic_ios"*
  %19 = getelementptr inbounds i8, i8* %17, i64 32
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 8, !tbaa !114
  %22 = or i32 %21, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %18, i32 %22)
  br label %26

23:                                               ; preds = %8
  %24 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %10) #19
  %25 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %10, i64 %24)
  br label %26

26:                                               ; preds = %12, %23
  %27 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 11)
  %28 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !111
  %29 = getelementptr i8, i8* %28, i64 -24
  %30 = bitcast i8* %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 240
  %33 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %32
  %34 = bitcast i8* %33 to %"class.std::ctype"**
  %35 = load %"class.std::ctype"*, %"class.std::ctype"** %34, align 8, !tbaa !124
  %36 = icmp eq %"class.std::ctype"* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

38:                                               ; preds = %26
  %39 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %35, i64 0, i32 8
  %40 = load i8, i8* %39, align 8, !tbaa !127
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %35, i64 0, i32 9, i64 10
  %44 = load i8, i8* %43, align 1, !tbaa !129
  br label %51

45:                                               ; preds = %38
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %35)
  %46 = bitcast %"class.std::ctype"* %35 to i8 (%"class.std::ctype"*, i8)***
  %47 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %46, align 8, !tbaa !111
  %48 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %47, i64 6
  %49 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %48, align 8
  %50 = tail call signext i8 %49(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %35, i8 signext 10)
  br label %51

51:                                               ; preds = %42, %45
  %52 = phi i8 [ %44, %42 ], [ %50, %45 ]
  %53 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %52)
  %54 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %53)
  br label %344

55:                                               ; preds = %2
  %56 = getelementptr inbounds i8*, i8** %1, i64 1
  %57 = load i8*, i8** %56, align 8, !tbaa !130
  %58 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #19
  store i64 0, i64* %3, align 8, !tbaa !131
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %59) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(1024) %59, i8 0, i64 1024, i1 false)
  %60 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %60) #19
  store i32 0, i32* %5, align 4, !tbaa !132
  %61 = call i32 @sgx_create_enclave(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 0, [1024 x i8]* nonnull %4, i32* nonnull %5, i64* nonnull %3, %struct._sgx_misc_attribute_t* null)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %92, label %63

63:                                               ; preds = %55
  %64 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23)
  %65 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8**), align 8, !tbaa !111
  %66 = getelementptr i8, i8* %65, i64 -24
  %67 = bitcast i8* %66 to i64*
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 240
  %70 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8*), i64 %69
  %71 = bitcast i8* %70 to %"class.std::ctype"**
  %72 = load %"class.std::ctype"*, %"class.std::ctype"** %71, align 8, !tbaa !124
  %73 = icmp eq %"class.std::ctype"* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

75:                                               ; preds = %63
  %76 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %72, i64 0, i32 8
  %77 = load i8, i8* %76, align 8, !tbaa !127
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %72, i64 0, i32 9, i64 10
  %81 = load i8, i8* %80, align 1, !tbaa !129
  br label %88

82:                                               ; preds = %75
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %72)
  %83 = bitcast %"class.std::ctype"* %72 to i8 (%"class.std::ctype"*, i8)***
  %84 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %83, align 8, !tbaa !111
  %85 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %84, i64 6
  %86 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %85, align 8
  %87 = call signext i8 %86(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %72, i8 signext 10)
  br label %88

88:                                               ; preds = %79, %82
  %89 = phi i8 [ %81, %79 ], [ %87, %82 ]
  %90 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 signext %89)
  %91 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %90)
  br label %342

92:                                               ; preds = %55
  %93 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 46)
  %94 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !111
  %95 = getelementptr i8, i8* %94, i64 -24
  %96 = bitcast i8* %95 to i64*
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 240
  %99 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %98
  %100 = bitcast i8* %99 to %"class.std::ctype"**
  %101 = load %"class.std::ctype"*, %"class.std::ctype"** %100, align 8, !tbaa !124
  %102 = icmp eq %"class.std::ctype"* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

104:                                              ; preds = %92
  %105 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %101, i64 0, i32 8
  %106 = load i8, i8* %105, align 8, !tbaa !127
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %101, i64 0, i32 9, i64 10
  %110 = load i8, i8* %109, align 1, !tbaa !129
  br label %117

111:                                              ; preds = %104
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %101)
  %112 = bitcast %"class.std::ctype"* %101 to i8 (%"class.std::ctype"*, i8)***
  %113 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %112, align 8, !tbaa !111
  %114 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %113, i64 6
  %115 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %114, align 8
  %116 = call signext i8 %115(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %101, i8 signext 10)
  br label %117

117:                                              ; preds = %108, %111
  %118 = phi i8 [ %110, %108 ], [ %116, %111 ]
  %119 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %118)
  %120 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %119)
  %121 = load i64, i64* %3, align 8, !tbaa !131
  %122 = call i32 @ecall_opendb(i64 %121, i8* %57)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %153, label %124

124:                                              ; preds = %117
  %125 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 29)
  %126 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8**), align 8, !tbaa !111
  %127 = getelementptr i8, i8* %126, i64 -24
  %128 = bitcast i8* %127 to i64*
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 240
  %131 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8*), i64 %130
  %132 = bitcast i8* %131 to %"class.std::ctype"**
  %133 = load %"class.std::ctype"*, %"class.std::ctype"** %132, align 8, !tbaa !124
  %134 = icmp eq %"class.std::ctype"* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

136:                                              ; preds = %124
  %137 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %133, i64 0, i32 8
  %138 = load i8, i8* %137, align 8, !tbaa !127
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %133, i64 0, i32 9, i64 10
  %142 = load i8, i8* %141, align 1, !tbaa !129
  br label %149

143:                                              ; preds = %136
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %133)
  %144 = bitcast %"class.std::ctype"* %133 to i8 (%"class.std::ctype"*, i8)***
  %145 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %144, align 8, !tbaa !111
  %146 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %145, i64 6
  %147 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %146, align 8
  %148 = call signext i8 %147(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %133, i8 signext 10)
  br label %149

149:                                              ; preds = %140, %143
  %150 = phi i8 [ %142, %140 ], [ %148, %143 ]
  %151 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 signext %150)
  %152 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %151)
  br label %342

153:                                              ; preds = %117
  %154 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i64 50)
  %155 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !111
  %156 = getelementptr i8, i8* %155, i64 -24
  %157 = bitcast i8* %156 to i64*
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, 240
  %160 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %159
  %161 = bitcast i8* %160 to %"class.std::ctype"**
  %162 = load %"class.std::ctype"*, %"class.std::ctype"** %161, align 8, !tbaa !124
  %163 = icmp eq %"class.std::ctype"* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %153
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

165:                                              ; preds = %153
  %166 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %162, i64 0, i32 8
  %167 = load i8, i8* %166, align 8, !tbaa !127
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %162, i64 0, i32 9, i64 10
  %171 = load i8, i8* %170, align 1, !tbaa !129
  br label %178

172:                                              ; preds = %165
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %162)
  %173 = bitcast %"class.std::ctype"* %162 to i8 (%"class.std::ctype"*, i8)***
  %174 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %173, align 8, !tbaa !111
  %175 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %174, i64 6
  %176 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %175, align 8
  %177 = call signext i8 %176(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %162, i8 signext 10)
  br label %178

178:                                              ; preds = %169, %172
  %179 = phi i8 [ %171, %169 ], [ %177, %172 ]
  %180 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %179)
  %181 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %180)
  %182 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %182) #19
  %183 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %184 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  store %union.anon* %183, %union.anon** %184, align 8, !tbaa !133
  %185 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  store i64 0, i64* %185, align 8, !tbaa !135
  %186 = bitcast %union.anon* %183 to i8*
  store i8 0, i8* %186, align 8, !tbaa !129
  %187 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 2)
          to label %188 unwind label %237

188:                                              ; preds = %178
  %189 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  br label %190

190:                                              ; preds = %188, %282
  %191 = load i8*, i8** bitcast (%"class.std::basic_istream"* @_ZSt3cin to i8**), align 8, !tbaa !111
  %192 = getelementptr i8, i8* %191, i64 -24
  %193 = bitcast i8* %192 to i64*
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, 240
  %196 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_istream"* @_ZSt3cin to i8*), i64 %195
  %197 = bitcast i8* %196 to %"class.std::ctype"**
  %198 = load %"class.std::ctype"*, %"class.std::ctype"** %197, align 8, !tbaa !124
  %199 = icmp eq %"class.std::ctype"* %198, null
  br i1 %199, label %200, label %202

200:                                              ; preds = %190
  invoke void @_ZSt16__throw_bad_castv() #22
          to label %201 unwind label %237

201:                                              ; preds = %200
  unreachable

202:                                              ; preds = %190
  %203 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %198, i64 0, i32 8
  %204 = load i8, i8* %203, align 8, !tbaa !127
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %198, i64 0, i32 9, i64 10
  %208 = load i8, i8* %207, align 1, !tbaa !129
  br label %216

209:                                              ; preds = %202
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %198)
          to label %210 unwind label %235

210:                                              ; preds = %209
  %211 = bitcast %"class.std::ctype"* %198 to i8 (%"class.std::ctype"*, i8)***
  %212 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %211, align 8, !tbaa !111
  %213 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %212, i64 6
  %214 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %213, align 8
  %215 = invoke signext i8 %214(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %198, i8 signext 10)
          to label %216 unwind label %235

216:                                              ; preds = %210, %206
  %217 = phi i8 [ %208, %206 ], [ %215, %210 ]
  %218 = invoke nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(%"class.std::basic_istream"* nonnull align 8 dereferenceable(16) @_ZSt3cin, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %6, i8 signext %217)
          to label %219 unwind label %235

219:                                              ; preds = %216
  %220 = bitcast %"class.std::basic_istream"* %218 to i8**
  %221 = load i8*, i8** %220, align 8, !tbaa !111
  %222 = getelementptr i8, i8* %221, i64 -24
  %223 = bitcast i8* %222 to i64*
  %224 = load i64, i64* %223, align 8
  %225 = bitcast %"class.std::basic_istream"* %218 to i8*
  %226 = add nsw i64 %224, 32
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  %228 = bitcast i8* %227 to i32*
  %229 = load i32, i32* %228, align 8, !tbaa !114
  %230 = and i32 %229, 5
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %284

232:                                              ; preds = %219
  %233 = call i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #19
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %284, label %239

235:                                              ; preds = %209, %210, %216
  %236 = landingpad { i8*, i32 }
          cleanup
  br label %335

237:                                              ; preds = %284, %322, %178, %200, %289, %325, %327, %301, %310, %311, %317, %320
  %238 = landingpad { i8*, i32 }
          cleanup
  br label %335

239:                                              ; preds = %232
  %240 = load i8*, i8** %189, align 8, !tbaa !137
  %241 = load i64, i64* %3, align 8, !tbaa !131
  %242 = invoke i32 @ecall_execute_sql(i64 %241, i8* %240)
          to label %243 unwind label %278

243:                                              ; preds = %239
  %244 = icmp eq i32 %242, 0
  br i1 %244, label %282, label %245

245:                                              ; preds = %243
  %246 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i64 36)
          to label %247 unwind label %280

247:                                              ; preds = %245
  %248 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8**), align 8, !tbaa !111
  %249 = getelementptr i8, i8* %248, i64 -24
  %250 = bitcast i8* %249 to i64*
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %251, 240
  %253 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8*), i64 %252
  %254 = bitcast i8* %253 to %"class.std::ctype"**
  %255 = load %"class.std::ctype"*, %"class.std::ctype"** %254, align 8, !tbaa !124
  %256 = icmp eq %"class.std::ctype"* %255, null
  br i1 %256, label %257, label %259

257:                                              ; preds = %247
  invoke void @_ZSt16__throw_bad_castv() #22
          to label %258 unwind label %280

258:                                              ; preds = %257
  unreachable

259:                                              ; preds = %247
  %260 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %255, i64 0, i32 8
  %261 = load i8, i8* %260, align 8, !tbaa !127
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %255, i64 0, i32 9, i64 10
  %265 = load i8, i8* %264, align 1, !tbaa !129
  br label %273

266:                                              ; preds = %259
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %255)
          to label %267 unwind label %280

267:                                              ; preds = %266
  %268 = bitcast %"class.std::ctype"* %255 to i8 (%"class.std::ctype"*, i8)***
  %269 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %268, align 8, !tbaa !111
  %270 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %269, i64 6
  %271 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %270, align 8
  %272 = invoke signext i8 %271(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %255, i8 signext 10)
          to label %273 unwind label %280

273:                                              ; preds = %267, %263
  %274 = phi i8 [ %265, %263 ], [ %272, %267 ]
  %275 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 signext %274)
          to label %276 unwind label %280

276:                                              ; preds = %273
  %277 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %275)
          to label %329 unwind label %280

278:                                              ; preds = %239, %282
  %279 = landingpad { i8*, i32 }
          cleanup
  br label %335

280:                                              ; preds = %245, %257, %266, %267, %273, %276
  %281 = landingpad { i8*, i32 }
          cleanup
  br label %335

282:                                              ; preds = %243
  %283 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 2)
          to label %190 unwind label %278

284:                                              ; preds = %232, %219
  %285 = load i64, i64* %3, align 8, !tbaa !131
  %286 = invoke i32 @ecall_closedb(i64 %285)
          to label %287 unwind label %237

287:                                              ; preds = %284
  %288 = icmp eq i32 %286, 0
  br i1 %288, label %322, label %289

289:                                              ; preds = %287
  %290 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i64 32)
          to label %291 unwind label %237

291:                                              ; preds = %289
  %292 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8**), align 8, !tbaa !111
  %293 = getelementptr i8, i8* %292, i64 -24
  %294 = bitcast i8* %293 to i64*
  %295 = load i64, i64* %294, align 8
  %296 = add nsw i64 %295, 240
  %297 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8*), i64 %296
  %298 = bitcast i8* %297 to %"class.std::ctype"**
  %299 = load %"class.std::ctype"*, %"class.std::ctype"** %298, align 8, !tbaa !124
  %300 = icmp eq %"class.std::ctype"* %299, null
  br i1 %300, label %301, label %303

301:                                              ; preds = %291
  invoke void @_ZSt16__throw_bad_castv() #22
          to label %302 unwind label %237

302:                                              ; preds = %301
  unreachable

303:                                              ; preds = %291
  %304 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %299, i64 0, i32 8
  %305 = load i8, i8* %304, align 8, !tbaa !127
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %310, label %307

307:                                              ; preds = %303
  %308 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %299, i64 0, i32 9, i64 10
  %309 = load i8, i8* %308, align 1, !tbaa !129
  br label %317

310:                                              ; preds = %303
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %299)
          to label %311 unwind label %237

311:                                              ; preds = %310
  %312 = bitcast %"class.std::ctype"* %299 to i8 (%"class.std::ctype"*, i8)***
  %313 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %312, align 8, !tbaa !111
  %314 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %313, i64 6
  %315 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %314, align 8
  %316 = invoke signext i8 %315(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %299, i8 signext 10)
          to label %317 unwind label %237

317:                                              ; preds = %311, %307
  %318 = phi i8 [ %309, %307 ], [ %316, %311 ]
  %319 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 signext %318)
          to label %320 unwind label %237

320:                                              ; preds = %317
  %321 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %319)
          to label %329 unwind label %237

322:                                              ; preds = %287
  %323 = load i64, i64* %3, align 8, !tbaa !131
  %324 = invoke i32 @sgx_destroy_enclave(i64 %323)
          to label %325 unwind label %237

325:                                              ; preds = %322
  %326 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i64 47)
          to label %327 unwind label %237

327:                                              ; preds = %325
  %328 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout)
          to label %329 unwind label %237

329:                                              ; preds = %276, %327, %320
  %330 = phi i32 [ -1, %320 ], [ 0, %327 ], [ -1, %276 ]
  %331 = load i8*, i8** %189, align 8, !tbaa !137
  %332 = icmp eq i8* %331, %186
  br i1 %332, label %334, label %333

333:                                              ; preds = %329
  call void @_ZdlPv(i8* %331) #19
  br label %334

334:                                              ; preds = %329, %333
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %182) #19
  br label %342

335:                                              ; preds = %278, %280, %235, %237
  %336 = phi { i8*, i32 } [ %236, %235 ], [ %238, %237 ], [ %279, %278 ], [ %281, %280 ]
  %337 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %338 = load i8*, i8** %337, align 8, !tbaa !137
  %339 = icmp eq i8* %338, %186
  br i1 %339, label %341, label %340

340:                                              ; preds = %335
  call void @_ZdlPv(i8* %338) #19
  br label %341

341:                                              ; preds = %335, %340
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %182) #19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %60) #19
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %59) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #19
  resume { i8*, i32 } %336

342:                                              ; preds = %334, %149, %88
  %343 = phi i32 [ -1, %88 ], [ -1, %149 ], [ %330, %334 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %60) #19
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %59) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #19
  br label %344

344:                                              ; preds = %342, %51
  %345 = phi i32 [ -1, %51 ], [ %343, %342 ]
  ret i32 %345
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #16

declare i32 @sgx_create_enclave(i8*, i32, [1024 x i8]*, i32*, i64*, %struct._sgx_misc_attribute_t*) local_unnamed_addr #3

declare nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(%"class.std::basic_istream"* nonnull align 8 dereferenceable(16), %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32), i8 signext) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32), i8*) local_unnamed_addr #5

declare i32 @sgx_destroy_enclave(i64) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #17

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #18

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { argmemonly nofree nounwind willreturn writeonly }
attributes #17 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind readnone willreturn }
attributes #22 = { noreturn }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}

!0 = !{!"clang version 13.0.1"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!5, !6, i64 0}
!5 = !{!"ms_ecall_opendb_t", !6, i64 0, !9, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!5, !9, i64 8}
!11 = !{!12, !6, i64 0}
!12 = !{!"ms_ocall_println_string_t", !6, i64 0}
!13 = !{!14, !6, i64 0}
!14 = !{!"ms_ocall_print_string_t", !6, i64 0}
!15 = !{!16, !6, i64 0}
!16 = !{!"ms_ocall_print_error_t", !6, i64 0}
!17 = !{!18, !6, i64 8}
!18 = !{!"ms_ocall_lstat_t", !19, i64 0, !19, i64 4, !6, i64 8, !6, i64 16, !9, i64 24}
!19 = !{!"int", !7, i64 0}
!20 = !{!18, !6, i64 16}
!21 = !{!18, !9, i64 24}
!22 = !{!18, !19, i64 0}
!23 = !{!19, !19, i64 0}
!24 = !{!18, !19, i64 4}
!25 = !{!26, !6, i64 8}
!26 = !{!"ms_ocall_stat_t", !19, i64 0, !6, i64 8, !6, i64 16, !9, i64 24}
!27 = !{!26, !6, i64 16}
!28 = !{!26, !9, i64 24}
!29 = !{!26, !19, i64 0}
!30 = !{!31, !19, i64 4}
!31 = !{!"ms_ocall_fstat_t", !19, i64 0, !19, i64 4, !6, i64 8, !9, i64 16}
!32 = !{!31, !6, i64 8}
!33 = !{!31, !9, i64 16}
!34 = !{!31, !19, i64 0}
!35 = !{!36, !19, i64 4}
!36 = !{!"ms_ocall_ftruncate_t", !19, i64 0, !19, i64 4, !9, i64 8}
!37 = !{!36, !9, i64 8}
!38 = !{!36, !19, i64 0}
!39 = !{!40, !6, i64 16}
!40 = !{!"ms_ocall_getcwd_t", !6, i64 0, !19, i64 8, !6, i64 16, !9, i64 24}
!41 = !{!40, !9, i64 24}
!42 = !{!40, !6, i64 0}
!43 = !{!40, !19, i64 8}
!44 = !{!45, !19, i64 0}
!45 = !{!"ms_ocall_getpid_t", !19, i64 0}
!46 = !{!47, !19, i64 0}
!47 = !{!"ms_ocall_getuid_t", !19, i64 0}
!48 = !{!49, !6, i64 8}
!49 = !{!"ms_ocall_getenv_t", !6, i64 0, !6, i64 8}
!50 = !{!49, !6, i64 0}
!51 = !{!52, !6, i64 8}
!52 = !{!"ms_ocall_open64_t", !19, i64 0, !6, i64 8, !19, i64 16, !19, i64 20}
!53 = !{!52, !19, i64 16}
!54 = !{!52, !19, i64 20}
!55 = !{!52, !19, i64 0}
!56 = !{!57, !19, i64 4}
!57 = !{!"ms_ocall_close_t", !19, i64 0, !19, i64 4}
!58 = !{!57, !19, i64 0}
!59 = !{!60, !19, i64 12}
!60 = !{!"ms_ocall_lseek64_t", !9, i64 0, !19, i64 8, !19, i64 12, !9, i64 16, !19, i64 24}
!61 = !{!60, !9, i64 16}
!62 = !{!60, !19, i64 24}
!63 = !{!60, !9, i64 0}
!64 = !{!60, !19, i64 8}
!65 = !{!66, !19, i64 8}
!66 = !{!"ms_ocall_read_t", !19, i64 0, !19, i64 4, !19, i64 8, !6, i64 16, !9, i64 24}
!67 = !{!66, !6, i64 16}
!68 = !{!66, !9, i64 24}
!69 = !{!66, !19, i64 0}
!70 = !{!66, !19, i64 4}
!71 = !{!72, !19, i64 8}
!72 = !{!"ms_ocall_write_t", !19, i64 0, !19, i64 4, !19, i64 8, !6, i64 16, !9, i64 24}
!73 = !{!72, !6, i64 16}
!74 = !{!72, !9, i64 24}
!75 = !{!72, !19, i64 0}
!76 = !{!72, !19, i64 4}
!77 = !{!78, !19, i64 4}
!78 = !{!"ms_ocall_fsync_t", !19, i64 0, !19, i64 4}
!79 = !{!78, !19, i64 0}
!80 = !{!81, !19, i64 8}
!81 = !{!"ms_ocall_fcntl_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !6, i64 16, !9, i64 24}
!82 = !{!81, !19, i64 12}
!83 = !{!81, !6, i64 16}
!84 = !{!81, !9, i64 24}
!85 = !{!81, !19, i64 0}
!86 = !{!81, !19, i64 4}
!87 = !{!88, !6, i64 8}
!88 = !{!"ms_ocall_unlink_t", !19, i64 0, !6, i64 8}
!89 = !{!88, !19, i64 0}
!90 = !{!91, !6, i64 0}
!91 = !{!"ms_sgx_oc_cpuidex_t", !6, i64 0, !19, i64 8, !19, i64 12}
!92 = !{!91, !19, i64 8}
!93 = !{!91, !19, i64 12}
!94 = !{!95, !6, i64 8}
!95 = !{!"ms_sgx_thread_wait_untrusted_event_ocall_t", !19, i64 0, !6, i64 8}
!96 = !{!95, !19, i64 0}
!97 = !{!98, !6, i64 8}
!98 = !{!"ms_sgx_thread_set_untrusted_event_ocall_t", !19, i64 0, !6, i64 8}
!99 = !{!98, !19, i64 0}
!100 = !{!101, !6, i64 8}
!101 = !{!"ms_sgx_thread_setwait_untrusted_events_ocall_t", !19, i64 0, !6, i64 8, !6, i64 16}
!102 = !{!101, !6, i64 16}
!103 = !{!101, !19, i64 0}
!104 = !{!105, !6, i64 8}
!105 = !{!"ms_sgx_thread_set_multiple_untrusted_events_ocall_t", !19, i64 0, !6, i64 8, !9, i64 16}
!106 = !{!105, !9, i64 16}
!107 = !{!105, !19, i64 0}
!108 = !{!109, !6, i64 0}
!109 = !{!"ms_ecall_execute_sql_t", !6, i64 0, !9, i64 8}
!110 = !{!109, !9, i64 8}
!111 = !{!112, !112, i64 0}
!112 = !{!"vtable pointer", !113, i64 0}
!113 = !{!"Simple C++ TBAA"}
!114 = !{!115, !119, i64 32}
!115 = !{!"_ZTSSt8ios_base", !116, i64 8, !116, i64 16, !118, i64 24, !119, i64 28, !119, i64 32, !120, i64 40, !121, i64 48, !117, i64 64, !122, i64 192, !120, i64 200, !123, i64 208}
!116 = !{!"long", !117, i64 0}
!117 = !{!"omnipotent char", !113, i64 0}
!118 = !{!"_ZTSSt13_Ios_Fmtflags", !117, i64 0}
!119 = !{!"_ZTSSt12_Ios_Iostate", !117, i64 0}
!120 = !{!"any pointer", !117, i64 0}
!121 = !{!"_ZTSNSt8ios_base6_WordsE", !120, i64 0, !116, i64 8}
!122 = !{!"int", !117, i64 0}
!123 = !{!"_ZTSSt6locale", !120, i64 0}
!124 = !{!125, !120, i64 240}
!125 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !120, i64 216, !117, i64 224, !126, i64 225, !120, i64 232, !120, i64 240, !120, i64 248, !120, i64 256}
!126 = !{!"bool", !117, i64 0}
!127 = !{!128, !117, i64 56}
!128 = !{!"_ZTSSt5ctypeIcE", !120, i64 16, !126, i64 24, !120, i64 32, !120, i64 40, !120, i64 48, !117, i64 56, !117, i64 57, !117, i64 313, !117, i64 569}
!129 = !{!117, !117, i64 0}
!130 = !{!120, !120, i64 0}
!131 = !{!116, !116, i64 0}
!132 = !{!122, !122, i64 0}
!133 = !{!134, !120, i64 0}
!134 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !120, i64 0}
!135 = !{!136, !116, i64 8}
!136 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !134, i64 0, !116, i64 8, !117, i64 16}
!137 = !{!136, !120, i64 0}
