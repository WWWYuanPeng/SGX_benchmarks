; ModuleID = 'Wolfssl_Enclave.so.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i64, [22 x %struct.anon] }
%struct.anon = type { i8*, i8, i8 }
%struct.anon.1 = type { i64, [5 x [22 x i8]] }
%struct.WOLFSSL_CTX = type opaque
%struct.WOLFSSL = type opaque
%struct.WOLFSSL_METHOD = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@g_ecall_table = hidden local_unnamed_addr constant %struct.anon.0 { i64 22, [22 x %struct.anon] [%struct.anon { i8* bitcast (i32 (i8*)* @sgx_wc_test to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_wc_benchmark_test to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_Init to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_Debugging_ON to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_Debugging_OFF to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfTLSv1_2_client_method to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfTLSv1_2_server_method to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_CTX_new to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_CTX_use_PrivateKey_buffer to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_CTX_load_verify_buffer to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_CTX_use_certificate_chain_buffer_format to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_CTX_use_certificate_buffer to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_CTX_set_cipher_list to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_new to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_set_fd to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_connect to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_write to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_get_error to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_read to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_free to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_CTX_free to i8*), i8 0, i8 0 }, %struct.anon { i8* bitcast (i32 (i8*)* @sgx_enc_wolfSSL_Cleanup to i8*), i8 0, i8 0 }] }, align 8
@g_dyn_entry_table = hidden local_unnamed_addr constant %struct.anon.1 { i64 5, [5 x [22 x i8]] zeroinitializer }, align 8
@CTX_TABLE = hidden local_unnamed_addr global [2 x %struct.WOLFSSL_CTX*] zeroinitializer, align 16
@SSL_TABLE = hidden local_unnamed_addr global [2 x %struct.WOLFSSL*] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_wc_test(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 16) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = getelementptr inbounds i8, i8* %0, i64 8
  %8 = bitcast i8* %7 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !5
  %10 = tail call i32 @wc_test(i8* %9) #12
  %11 = bitcast i8* %0 to i32*
  store i32 %10, i32* %11, align 8, !tbaa !11
  br label %12

12:                                               ; preds = %1, %3, %6
  %13 = phi i32 [ 0, %6 ], [ 2, %3 ], [ 2, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_wc_benchmark_test(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 16) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = getelementptr inbounds i8, i8* %0, i64 8
  %8 = bitcast i8* %7 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !12
  %10 = tail call i32 @wc_benchmark_test(i8* %9) #12
  %11 = bitcast i8* %0 to i32*
  store i32 %10, i32* %11, align 8, !tbaa !14
  br label %12

12:                                               ; preds = %1, %3, %6
  %13 = phi i32 [ 0, %6 ], [ 2, %3 ], [ 2, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_Init(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 4) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = tail call i32 @enc_wolfSSL_Init() #12
  %8 = bitcast i8* %0 to i32*
  store i32 %7, i32* %8, align 4, !tbaa !15
  br label %9

9:                                                ; preds = %1, %3, %6
  %10 = phi i32 [ 0, %6 ], [ 2, %3 ], [ 2, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_Debugging_ON(i8* readnone %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @enc_wolfSSL_Debugging_ON() #12
  br label %4

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ 2, %1 ]
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_Debugging_OFF(i8* readnone %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @enc_wolfSSL_Debugging_OFF() #12
  br label %4

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ 2, %1 ]
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfTLSv1_2_client_method(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 8) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = tail call i64 @enc_wolfTLSv1_2_client_method() #12
  %8 = bitcast i8* %0 to i64*
  store i64 %7, i64* %8, align 8, !tbaa !17
  br label %9

9:                                                ; preds = %1, %3, %6
  %10 = phi i32 [ 0, %6 ], [ 2, %3 ], [ 2, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfTLSv1_2_server_method(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 8) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = tail call i64 @enc_wolfTLSv1_2_server_method() #12
  %8 = bitcast i8* %0 to i64*
  store i64 %7, i64* %8, align 8, !tbaa !20
  br label %9

9:                                                ; preds = %1, %3, %6
  %10 = phi i32 [ 0, %6 ], [ 2, %3 ], [ 2, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_CTX_new(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 16) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = getelementptr inbounds i8, i8* %0, i64 8
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !22
  %10 = tail call i64 @enc_wolfSSL_CTX_new(i64 %9) #12
  %11 = bitcast i8* %0 to i64*
  store i64 %10, i64* %11, align 8, !tbaa !24
  br label %12

12:                                               ; preds = %1, %3, %6
  %13 = phi i32 [ 0, %6 ], [ 2, %3 ], [ 2, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_CTX_use_PrivateKey_buffer(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %40, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 40) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = getelementptr inbounds i8, i8* %0, i64 16
  %8 = bitcast i8* %7 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !25
  %10 = getelementptr inbounds i8, i8* %0, i64 24
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !27
  %13 = icmp eq i8* %9, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call void @llvm.x86.sse2.lfence()
  br label %26

15:                                               ; preds = %6
  %16 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %9, i64 %12) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %15
  tail call void @llvm.x86.sse2.lfence()
  %19 = icmp eq i64 %12, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = tail call align 16 i8* @malloc(i64 %12) #13
  %22 = icmp eq i8* %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @memcpy_s(i8* nonnull %21, i64 %12, i8* nonnull %9, i64 %12) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %18, %23, %14
  %27 = phi i8* [ %21, %23 ], [ null, %18 ], [ null, %14 ]
  %28 = getelementptr inbounds i8, i8* %0, i64 8
  %29 = bitcast i8* %28 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !28
  %31 = getelementptr inbounds i8, i8* %0, i64 32
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 8, !tbaa !29
  %34 = tail call i32 @enc_wolfSSL_CTX_use_PrivateKey_buffer(i64 %30, i8* %27, i64 %12, i32 %33) #12
  %35 = bitcast i8* %0 to i32*
  store i32 %34, i32* %35, align 8, !tbaa !30
  %36 = icmp eq i8* %27, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %23, %26
  %38 = phi i8* [ %27, %26 ], [ %21, %23 ]
  %39 = phi i32 [ 0, %26 ], [ 1, %23 ]
  tail call void @free(i8* nonnull %38) #13
  br label %40

40:                                               ; preds = %20, %15, %37, %26, %1, %3
  %41 = phi i32 [ 2, %3 ], [ 2, %1 ], [ 2, %15 ], [ %39, %37 ], [ 0, %26 ], [ 3, %20 ]
  ret i32 %41
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_CTX_load_verify_buffer(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %40, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 40) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = getelementptr inbounds i8, i8* %0, i64 16
  %8 = bitcast i8* %7 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !31
  %10 = getelementptr inbounds i8, i8* %0, i64 24
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !33
  %13 = icmp eq i8* %9, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call void @llvm.x86.sse2.lfence()
  br label %26

15:                                               ; preds = %6
  %16 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %9, i64 %12) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %15
  tail call void @llvm.x86.sse2.lfence()
  %19 = icmp eq i64 %12, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = tail call align 16 i8* @malloc(i64 %12) #13
  %22 = icmp eq i8* %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @memcpy_s(i8* nonnull %21, i64 %12, i8* nonnull %9, i64 %12) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %18, %23, %14
  %27 = phi i8* [ %21, %23 ], [ null, %18 ], [ null, %14 ]
  %28 = getelementptr inbounds i8, i8* %0, i64 8
  %29 = bitcast i8* %28 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !34
  %31 = getelementptr inbounds i8, i8* %0, i64 32
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 8, !tbaa !35
  %34 = tail call i32 @enc_wolfSSL_CTX_load_verify_buffer(i64 %30, i8* %27, i64 %12, i32 %33) #12
  %35 = bitcast i8* %0 to i32*
  store i32 %34, i32* %35, align 8, !tbaa !36
  %36 = icmp eq i8* %27, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %23, %26
  %38 = phi i8* [ %27, %26 ], [ %21, %23 ]
  %39 = phi i32 [ 0, %26 ], [ 1, %23 ]
  tail call void @free(i8* nonnull %38) #13
  br label %40

40:                                               ; preds = %20, %15, %37, %26, %1, %3
  %41 = phi i32 [ 2, %3 ], [ 2, %1 ], [ 2, %15 ], [ %39, %37 ], [ 0, %26 ], [ 3, %20 ]
  ret i32 %41
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_CTX_use_certificate_chain_buffer_format(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %40, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 40) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = getelementptr inbounds i8, i8* %0, i64 16
  %8 = bitcast i8* %7 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !37
  %10 = getelementptr inbounds i8, i8* %0, i64 24
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !39
  %13 = icmp eq i8* %9, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call void @llvm.x86.sse2.lfence()
  br label %26

15:                                               ; preds = %6
  %16 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %9, i64 %12) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %15
  tail call void @llvm.x86.sse2.lfence()
  %19 = icmp eq i64 %12, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = tail call align 16 i8* @malloc(i64 %12) #13
  %22 = icmp eq i8* %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @memcpy_s(i8* nonnull %21, i64 %12, i8* nonnull %9, i64 %12) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %18, %23, %14
  %27 = phi i8* [ %21, %23 ], [ null, %18 ], [ null, %14 ]
  %28 = getelementptr inbounds i8, i8* %0, i64 8
  %29 = bitcast i8* %28 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !40
  %31 = getelementptr inbounds i8, i8* %0, i64 32
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 8, !tbaa !41
  %34 = tail call i32 @enc_wolfSSL_CTX_use_certificate_chain_buffer_format(i64 %30, i8* %27, i64 %12, i32 %33) #12
  %35 = bitcast i8* %0 to i32*
  store i32 %34, i32* %35, align 8, !tbaa !42
  %36 = icmp eq i8* %27, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %23, %26
  %38 = phi i8* [ %27, %26 ], [ %21, %23 ]
  %39 = phi i32 [ 0, %26 ], [ 1, %23 ]
  tail call void @free(i8* nonnull %38) #13
  br label %40

40:                                               ; preds = %20, %15, %37, %26, %1, %3
  %41 = phi i32 [ 2, %3 ], [ 2, %1 ], [ 2, %15 ], [ %39, %37 ], [ 0, %26 ], [ 3, %20 ]
  ret i32 %41
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_CTX_use_certificate_buffer(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %40, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 40) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = getelementptr inbounds i8, i8* %0, i64 16
  %8 = bitcast i8* %7 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !43
  %10 = getelementptr inbounds i8, i8* %0, i64 24
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !45
  %13 = icmp eq i8* %9, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call void @llvm.x86.sse2.lfence()
  br label %26

15:                                               ; preds = %6
  %16 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %9, i64 %12) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %15
  tail call void @llvm.x86.sse2.lfence()
  %19 = icmp eq i64 %12, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = tail call align 16 i8* @malloc(i64 %12) #13
  %22 = icmp eq i8* %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @memcpy_s(i8* nonnull %21, i64 %12, i8* nonnull %9, i64 %12) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %18, %23, %14
  %27 = phi i8* [ %21, %23 ], [ null, %18 ], [ null, %14 ]
  %28 = getelementptr inbounds i8, i8* %0, i64 8
  %29 = bitcast i8* %28 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !46
  %31 = getelementptr inbounds i8, i8* %0, i64 32
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 8, !tbaa !47
  %34 = tail call i32 @enc_wolfSSL_CTX_use_certificate_buffer(i64 %30, i8* %27, i64 %12, i32 %33) #12
  %35 = bitcast i8* %0 to i32*
  store i32 %34, i32* %35, align 8, !tbaa !48
  %36 = icmp eq i8* %27, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %23, %26
  %38 = phi i8* [ %27, %26 ], [ %21, %23 ]
  %39 = phi i32 [ 0, %26 ], [ 1, %23 ]
  tail call void @free(i8* nonnull %38) #13
  br label %40

40:                                               ; preds = %20, %15, %37, %26, %1, %3
  %41 = phi i32 [ 2, %3 ], [ 2, %1 ], [ 2, %15 ], [ %39, %37 ], [ 0, %26 ], [ 3, %20 ]
  ret i32 %41
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_CTX_set_cipher_list(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 32) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = getelementptr inbounds i8, i8* %0, i64 16
  %8 = bitcast i8* %7 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !49
  %10 = getelementptr inbounds i8, i8* %0, i64 24
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !51
  %13 = icmp eq i8* %9, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call void @llvm.x86.sse2.lfence()
  br label %32

15:                                               ; preds = %6
  %16 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %9, i64 %12) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %15
  tail call void @llvm.x86.sse2.lfence()
  %19 = icmp eq i64 %12, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %18
  %21 = tail call align 16 i8* @malloc(i64 %12) #13
  %22 = icmp eq i8* %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @memcpy_s(i8* nonnull %21, i64 %12, i8* nonnull %9, i64 %12) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = add i64 %12, -1
  %28 = getelementptr inbounds i8, i8* %21, i64 %27
  store i8 0, i8* %28, align 1, !tbaa !52
  %29 = tail call i64 @strlen(i8* noundef nonnull %21) #13
  %30 = add i64 %29, 1
  %31 = icmp eq i64 %12, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %18, %26, %14
  %33 = phi i8* [ %21, %26 ], [ null, %18 ], [ null, %14 ]
  %34 = getelementptr inbounds i8, i8* %0, i64 8
  %35 = bitcast i8* %34 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !53
  %37 = tail call i32 @enc_wolfSSL_CTX_set_cipher_list(i64 %36, i8* %33) #12
  %38 = bitcast i8* %0 to i32*
  store i32 %37, i32* %38, align 8, !tbaa !54
  %39 = icmp eq i8* %33, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %26, %23, %32
  %41 = phi i8* [ %33, %32 ], [ %21, %23 ], [ %21, %26 ]
  %42 = phi i32 [ 0, %32 ], [ 1, %23 ], [ 1, %26 ]
  tail call void @free(i8* nonnull %41) #13
  br label %43

43:                                               ; preds = %20, %15, %40, %32, %1, %3
  %44 = phi i32 [ 2, %3 ], [ 2, %1 ], [ 2, %15 ], [ %42, %40 ], [ 0, %32 ], [ 3, %20 ]
  ret i32 %44
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_new(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 16) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = getelementptr inbounds i8, i8* %0, i64 8
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !55
  %10 = tail call i64 @enc_wolfSSL_new(i64 %9) #12
  %11 = bitcast i8* %0 to i64*
  store i64 %10, i64* %11, align 8, !tbaa !57
  br label %12

12:                                               ; preds = %1, %3, %6
  %13 = phi i32 [ 0, %6 ], [ 2, %3 ], [ 2, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_set_fd(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 24) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = getelementptr inbounds i8, i8* %0, i64 8
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !58
  %10 = getelementptr inbounds i8, i8* %0, i64 16
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !60
  %13 = tail call i32 @enc_wolfSSL_set_fd(i64 %9, i32 %12) #12
  %14 = bitcast i8* %0 to i32*
  store i32 %13, i32* %14, align 8, !tbaa !61
  br label %15

15:                                               ; preds = %1, %3, %6
  %16 = phi i32 [ 0, %6 ], [ 2, %3 ], [ 2, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_connect(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 16) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = getelementptr inbounds i8, i8* %0, i64 8
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !62
  %10 = tail call i32 @enc_wolfSSL_connect(i64 %9) #12
  %11 = bitcast i8* %0 to i32*
  store i32 %10, i32* %11, align 8, !tbaa !64
  br label %12

12:                                               ; preds = %1, %3, %6
  %13 = phi i32 [ 0, %6 ], [ 2, %3 ], [ 2, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_write(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 32) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %38, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = getelementptr inbounds i8, i8* %0, i64 16
  %8 = bitcast i8* %7 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !65
  %10 = getelementptr inbounds i8, i8* %0, i64 24
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !67
  %13 = sext i32 %12 to i64
  %14 = icmp eq i8* %9, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  tail call void @llvm.x86.sse2.lfence()
  br label %27

16:                                               ; preds = %6
  %17 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %9, i64 %13) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %16
  tail call void @llvm.x86.sse2.lfence()
  %20 = icmp eq i32 %12, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = tail call align 16 i8* @malloc(i64 %13) #13
  %23 = icmp eq i8* %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @memcpy_s(i8* nonnull %22, i64 %13, i8* nonnull %9, i64 %13) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19, %24, %15
  %28 = phi i8* [ %22, %24 ], [ null, %19 ], [ null, %15 ]
  %29 = getelementptr inbounds i8, i8* %0, i64 8
  %30 = bitcast i8* %29 to i64*
  %31 = load i64, i64* %30, align 8, !tbaa !68
  %32 = tail call i32 @enc_wolfSSL_write(i64 %31, i8* %28, i32 %12) #12
  %33 = bitcast i8* %0 to i32*
  store i32 %32, i32* %33, align 8, !tbaa !69
  %34 = icmp eq i8* %28, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %24, %27
  %36 = phi i8* [ %28, %27 ], [ %22, %24 ]
  %37 = phi i32 [ 0, %27 ], [ 1, %24 ]
  tail call void @free(i8* nonnull %36) #13
  br label %38

38:                                               ; preds = %21, %16, %35, %27, %1, %3
  %39 = phi i32 [ 2, %3 ], [ 2, %1 ], [ 2, %16 ], [ %37, %35 ], [ 0, %27 ], [ 3, %21 ]
  ret i32 %39
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_get_error(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 24) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = getelementptr inbounds i8, i8* %0, i64 8
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !70
  %10 = getelementptr inbounds i8, i8* %0, i64 16
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !72
  %13 = tail call i32 @enc_wolfSSL_get_error(i64 %9, i32 %12) #12
  %14 = bitcast i8* %0 to i32*
  store i32 %13, i32* %14, align 8, !tbaa !73
  br label %15

15:                                               ; preds = %1, %3, %6
  %16 = phi i32 [ 0, %6 ], [ 2, %3 ], [ 2, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_read(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 32) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %37, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = getelementptr inbounds i8, i8* %0, i64 16
  %8 = bitcast i8* %7 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !74
  %10 = getelementptr inbounds i8, i8* %0, i64 24
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !76
  %13 = sext i32 %12 to i64
  %14 = icmp eq i8* %9, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  tail call void @llvm.x86.sse2.lfence()
  br label %25

16:                                               ; preds = %6
  %17 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %9, i64 %13) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %16
  tail call void @llvm.x86.sse2.lfence()
  %20 = icmp eq i32 %12, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %19
  %22 = tail call align 16 i8* @malloc(i64 %13) #13
  %23 = icmp eq i8* %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %22, i8 0, i64 %13, i1 false)
  br label %25

25:                                               ; preds = %15, %24, %19
  %26 = phi i8* [ %22, %24 ], [ null, %19 ], [ null, %15 ]
  %27 = getelementptr inbounds i8, i8* %0, i64 8
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8, !tbaa !77
  %30 = tail call i32 @enc_wolfSSL_read(i64 %29, i8* %26, i32 %12) #12
  %31 = bitcast i8* %0 to i32*
  store i32 %30, i32* %31, align 8, !tbaa !78
  %32 = icmp eq i8* %26, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = tail call i32 @memcpy_s(i8* %9, i64 %13, i8* nonnull %26, i64 %13) #12
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  tail call void @free(i8* nonnull %26) #13
  br label %37

37:                                               ; preds = %21, %25, %16, %33, %1, %3
  %38 = phi i32 [ 2, %3 ], [ 2, %1 ], [ 2, %16 ], [ %36, %33 ], [ 3, %21 ], [ 0, %25 ]
  ret i32 %38
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_free(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 8) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = bitcast i8* %0 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !79
  tail call void @enc_wolfSSL_free(i64 %8) #12
  br label %9

9:                                                ; preds = %1, %3, %6
  %10 = phi i32 [ 0, %6 ], [ 2, %3 ], [ 2, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_CTX_free(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 8) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = bitcast i8* %0 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !81
  tail call void @enc_wolfSSL_CTX_free(i64 %8) #12
  br label %9

9:                                                ; preds = %1, %3, %6
  %10 = phi i32 [ 0, %6 ], [ 2, %3 ], [ 2, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @sgx_enc_wolfSSL_Cleanup(i8* %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @sgx_is_outside_enclave(i8* nonnull %0, i64 4) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  tail call void @llvm.x86.sse2.lfence()
  %7 = tail call i32 @enc_wolfSSL_Cleanup() #12
  %8 = bitcast i8* %0 to i32*
  store i32 %7, i32* %8, align 4, !tbaa !83
  br label %9

9:                                                ; preds = %1, %3, %6
  %10 = phi i32 [ 0, %6 ], [ 2, %3 ], [ 2, %1 ]
  ret i32 %10
}

declare i32 @sgx_is_outside_enclave(i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.x86.sse2.lfence() #2

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef align 16 i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @memcpy_s(i8*, i64, i8*, i64) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define hidden i32 @ocall_print_string(i8* %0) local_unnamed_addr #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = tail call i64 @strlen(i8* noundef nonnull %0) #13
  %5 = add i64 %4, 1
  %6 = tail call i32 @sgx_is_within_enclave(i8* nonnull %0, i64 %5) #12
  %7 = icmp eq i32 %6, 0
  %8 = icmp ugt i64 %5, -9
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %28, label %10

10:                                               ; preds = %3, %1
  %11 = phi i64 [ 0, %1 ], [ %5, %3 ]
  %12 = add nuw i64 %11, 8
  %13 = tail call i8* @sgx_ocalloc(i64 %12) #12
  %14 = icmp eq i8* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = ptrtoint i8* %13 to i64
  %17 = add i64 %16, 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %13 to i8**
  br i1 %2, label %23, label %20

20:                                               ; preds = %15
  store i8* %18, i8** %19, align 8, !tbaa !85
  %21 = tail call i32 @memcpy_s(i8* %18, i64 %11, i8* nonnull %0, i64 %11) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %26

23:                                               ; preds = %15
  store i8* null, i8** %19, align 8, !tbaa !85
  br label %24

24:                                               ; preds = %20, %23
  %25 = tail call i32 @sgx_ocall(i32 0, i8* nonnull %13) #12
  br label %26

26:                                               ; preds = %20, %10, %24
  %27 = phi i32 [ %25, %24 ], [ 1, %10 ], [ 1, %20 ]
  tail call void @sgx_ocfree() #12
  br label %28

28:                                               ; preds = %26, %3
  %29 = phi i32 [ 2, %3 ], [ %27, %26 ]
  ret i32 %29
}

declare i32 @sgx_is_within_enclave(i8*, i64) local_unnamed_addr #1

declare i8* @sgx_ocalloc(i64) local_unnamed_addr #1

declare i32 @sgx_ocall(i32, i8*) local_unnamed_addr #1

declare void @sgx_ocfree() local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden i32 @ocall_current_time(double* %0) local_unnamed_addr #0 {
  %2 = icmp eq double* %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = bitcast double* %0 to i8*
  %5 = tail call i32 @sgx_is_within_enclave(i8* nonnull %4, i64 8) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %1, %3
  %8 = phi i64 [ 16, %3 ], [ 8, %1 ]
  %9 = tail call i8* @sgx_ocalloc(i64 %8) #12
  %10 = icmp eq i8* %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = ptrtoint i8* %9 to i64
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %13 to i8*
  br i1 %2, label %15, label %18

15:                                               ; preds = %11
  %16 = bitcast i8* %9 to double**
  store double* null, double** %16, align 8, !tbaa !87
  %17 = tail call i32 @sgx_ocall(i32 1, i8* nonnull %9) #12
  br label %28

18:                                               ; preds = %11
  %19 = inttoptr i64 %13 to double*
  %20 = bitcast i8* %9 to double**
  store double* %19, double** %20, align 8, !tbaa !87
  %21 = inttoptr i64 %13 to i64*
  store i64 0, i64* %21, align 1
  %22 = tail call i32 @sgx_ocall(i32 1, i8* nonnull %9) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = bitcast double* %0 to i8*
  %26 = tail call i32 @memcpy_s(i8* nonnull %25, i64 8, i8* %14, i64 8) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15, %24, %18
  %29 = phi i32 [ %17, %15 ], [ 0, %24 ], [ %22, %18 ]
  br label %30

30:                                               ; preds = %24, %7, %28
  %31 = phi i32 [ %29, %28 ], [ 1, %7 ], [ 1, %24 ]
  tail call void @sgx_ocfree() #12
  br label %32

32:                                               ; preds = %30, %3
  %33 = phi i32 [ 2, %3 ], [ %31, %30 ]
  ret i32 %33
}

; Function Attrs: nounwind ssp uwtable
define hidden i32 @ocall_low_res_time(i32* %0) local_unnamed_addr #0 {
  %2 = icmp eq i32* %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = bitcast i32* %0 to i8*
  %5 = tail call i32 @sgx_is_within_enclave(i8* nonnull %4, i64 4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %1, %3
  %8 = phi i64 [ 12, %3 ], [ 8, %1 ]
  %9 = tail call i8* @sgx_ocalloc(i64 %8) #12
  %10 = icmp eq i8* %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %7
  %12 = ptrtoint i8* %9 to i64
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %13 to i8*
  br i1 %2, label %15, label %18

15:                                               ; preds = %11
  %16 = bitcast i8* %9 to i32**
  store i32* null, i32** %16, align 8, !tbaa !89
  %17 = tail call i32 @sgx_ocall(i32 2, i8* nonnull %9) #12
  br label %27

18:                                               ; preds = %11
  %19 = inttoptr i64 %13 to i32*
  %20 = bitcast i8* %9 to i32**
  store i32* %19, i32** %20, align 8, !tbaa !89
  store i32 0, i32* %19, align 1
  %21 = tail call i32 @sgx_ocall(i32 2, i8* nonnull %9) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = bitcast i32* %0 to i8*
  %25 = tail call i32 @memcpy_s(i8* nonnull %24, i64 4, i8* %14, i64 4) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15, %23, %18
  %28 = phi i32 [ %17, %15 ], [ 0, %23 ], [ %21, %18 ]
  br label %29

29:                                               ; preds = %23, %7, %27
  %30 = phi i32 [ %28, %27 ], [ 1, %7 ], [ 1, %23 ]
  tail call void @sgx_ocfree() #12
  br label %31

31:                                               ; preds = %29, %3
  %32 = phi i32 [ 2, %3 ], [ %30, %29 ]
  ret i32 %32
}

; Function Attrs: nounwind ssp uwtable
define hidden i32 @ocall_recv(i64* %0, i32 %1, i8* %2, i64 %3, i32 %4) local_unnamed_addr #0 {
  %6 = icmp eq i8* %2, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @sgx_is_within_enclave(i8* nonnull %2, i64 %3) #12
  %9 = icmp eq i32 %8, 0
  %10 = icmp ugt i64 %3, -41
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %51, label %12

12:                                               ; preds = %7, %5
  %13 = phi i64 [ 0, %5 ], [ %3, %7 ]
  %14 = add nuw i64 %13, 40
  %15 = tail call i8* @sgx_ocalloc(i64 %14) #12
  %16 = icmp eq i8* %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %12
  %18 = ptrtoint i8* %15 to i64
  %19 = add i64 %18, 40
  %20 = inttoptr i64 %19 to i8*
  %21 = getelementptr inbounds i8, i8* %15, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %1, i32* %22, align 4, !tbaa !91
  %23 = getelementptr inbounds i8, i8* %15, i64 16
  %24 = bitcast i8* %23 to i8**
  br i1 %6, label %26, label %25

25:                                               ; preds = %17
  store i8* %20, i8** %24, align 8, !tbaa !93
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %20, i8 0, i64 %3, i1 false)
  br label %27

26:                                               ; preds = %17
  store i8* null, i8** %24, align 8, !tbaa !93
  br label %27

27:                                               ; preds = %26, %25
  %28 = phi i8* [ %20, %25 ], [ null, %26 ]
  %29 = getelementptr inbounds i8, i8* %15, i64 24
  %30 = bitcast i8* %29 to i64*
  store i64 %3, i64* %30, align 8, !tbaa !94
  %31 = getelementptr inbounds i8, i8* %15, i64 32
  %32 = bitcast i8* %31 to i32*
  store i32 %4, i32* %32, align 8, !tbaa !95
  %33 = tail call i32 @sgx_ocall(i32 3, i8* nonnull %15) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = icmp eq i64* %0, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %35
  %38 = bitcast i8* %15 to i64*
  %39 = load i64, i64* %38, align 8, !tbaa !96
  store i64 %39, i64* %0, align 8, !tbaa !97
  br label %40

40:                                               ; preds = %37, %35
  br i1 %6, label %44, label %41

41:                                               ; preds = %40
  %42 = tail call i32 @memcpy_s(i8* nonnull %2, i64 %3, i8* %28, i64 %3) #12
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41, %40
  %45 = getelementptr inbounds i8, i8* %15, i64 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %46, align 8, !tbaa !98
  %48 = tail call i32* @__errno() #12
  store i32 %47, i32* %48, align 4, !tbaa !99
  br label %49

49:                                               ; preds = %27, %44, %41, %12
  %50 = phi i32 [ 1, %12 ], [ 1, %41 ], [ %33, %44 ], [ %33, %27 ]
  tail call void @sgx_ocfree() #12
  br label %51

51:                                               ; preds = %49, %7
  %52 = phi i32 [ 2, %7 ], [ %50, %49 ]
  ret i32 %52
}

declare i32* @__errno() local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden i32 @ocall_send(i64* %0, i32 %1, i8* %2, i64 %3, i32 %4) local_unnamed_addr #0 {
  %6 = icmp eq i8* %2, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @sgx_is_within_enclave(i8* nonnull %2, i64 %3) #12
  %9 = icmp eq i32 %8, 0
  %10 = icmp ugt i64 %3, -41
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %48, label %12

12:                                               ; preds = %7, %5
  %13 = phi i64 [ 0, %5 ], [ %3, %7 ]
  %14 = add nuw i64 %13, 40
  %15 = tail call i8* @sgx_ocalloc(i64 %14) #12
  %16 = icmp eq i8* %15, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %12
  %18 = ptrtoint i8* %15 to i64
  %19 = add i64 %18, 40
  %20 = inttoptr i64 %19 to i8*
  %21 = getelementptr inbounds i8, i8* %15, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %1, i32* %22, align 4, !tbaa !100
  %23 = getelementptr inbounds i8, i8* %15, i64 16
  %24 = bitcast i8* %23 to i8**
  br i1 %6, label %28, label %25

25:                                               ; preds = %17
  store i8* %20, i8** %24, align 8, !tbaa !102
  %26 = tail call i32 @memcpy_s(i8* %20, i64 %13, i8* nonnull %2, i64 %3) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %46

28:                                               ; preds = %17
  store i8* null, i8** %24, align 8, !tbaa !102
  br label %29

29:                                               ; preds = %25, %28
  %30 = getelementptr inbounds i8, i8* %15, i64 24
  %31 = bitcast i8* %30 to i64*
  store i64 %3, i64* %31, align 8, !tbaa !103
  %32 = getelementptr inbounds i8, i8* %15, i64 32
  %33 = bitcast i8* %32 to i32*
  store i32 %4, i32* %33, align 8, !tbaa !104
  %34 = tail call i32 @sgx_ocall(i32 4, i8* nonnull %15) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = icmp eq i64* %0, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %36
  %39 = bitcast i8* %15 to i64*
  %40 = load i64, i64* %39, align 8, !tbaa !105
  store i64 %40, i64* %0, align 8, !tbaa !97
  br label %41

41:                                               ; preds = %38, %36
  %42 = getelementptr inbounds i8, i8* %15, i64 8
  %43 = bitcast i8* %42 to i32*
  %44 = load i32, i32* %43, align 8, !tbaa !106
  %45 = tail call i32* @__errno() #12
  store i32 %44, i32* %45, align 4, !tbaa !99
  br label %46

46:                                               ; preds = %29, %41, %25, %12
  %47 = phi i32 [ 1, %12 ], [ 1, %25 ], [ %34, %41 ], [ %34, %29 ]
  tail call void @sgx_ocfree() #12
  br label %48

48:                                               ; preds = %46, %7
  %49 = phi i32 [ 2, %7 ], [ %47, %46 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn
define hidden i32 @wc_test(i8* nocapture readnone %0) local_unnamed_addr #7 {
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn
define hidden i32 @wc_benchmark_test(i8* nocapture readnone %0) local_unnamed_addr #7 {
  ret i32 -1
}

; Function Attrs: nounwind ssp uwtable
define hidden void @enc_wolfSSL_Debugging_ON() local_unnamed_addr #0 {
  %1 = tail call i32 @wolfSSL_Debugging_ON() #12
  ret void
}

declare i32 @wolfSSL_Debugging_ON() local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden void @enc_wolfSSL_Debugging_OFF() local_unnamed_addr #0 {
  tail call void @wolfSSL_Debugging_OFF() #12
  ret void
}

declare void @wolfSSL_Debugging_OFF() local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden i32 @enc_wolfSSL_Init() local_unnamed_addr #0 {
  %1 = tail call i32 @wolfSSL_Init() #12
  ret i32 %1
}

declare i32 @wolfSSL_Init() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn
define hidden i64 @enc_wolfTLSv1_2_client_method() local_unnamed_addr #7 {
  ret i64 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn
define hidden i64 @enc_wolfTLSv1_2_server_method() local_unnamed_addr #7 {
  ret i64 2
}

; Function Attrs: nounwind ssp uwtable
define hidden i64 @enc_wolfSSL_CTX_new(i64 %0) local_unnamed_addr #0 {
  switch i64 %0, label %6 [
    i64 1, label %2
    i64 2, label %4
  ]

2:                                                ; preds = %1
  %3 = tail call %struct.WOLFSSL_METHOD* @wolfTLSv1_2_client_method() #12
  br label %6

4:                                                ; preds = %1
  %5 = tail call %struct.WOLFSSL_METHOD* @wolfTLSv1_2_server_method() #12
  br label %6

6:                                                ; preds = %1, %2, %4
  %7 = phi %struct.WOLFSSL_METHOD* [ %5, %4 ], [ %3, %2 ], [ null, %1 ]
  %8 = tail call %struct.WOLFSSL_CTX* @wolfSSL_CTX_new(%struct.WOLFSSL_METHOD* %7) #12
  %9 = icmp eq %struct.WOLFSSL_CTX* %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = load %struct.WOLFSSL_CTX*, %struct.WOLFSSL_CTX** getelementptr inbounds ([2 x %struct.WOLFSSL_CTX*], [2 x %struct.WOLFSSL_CTX*]* @CTX_TABLE, i64 0, i64 0), align 16, !tbaa !107
  %12 = icmp eq %struct.WOLFSSL_CTX* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %16, %10
  %14 = phi i64 [ 0, %10 ], [ 1, %16 ]
  %15 = phi %struct.WOLFSSL_CTX** [ getelementptr inbounds ([2 x %struct.WOLFSSL_CTX*], [2 x %struct.WOLFSSL_CTX*]* @CTX_TABLE, i64 0, i64 0), %10 ], [ getelementptr inbounds ([2 x %struct.WOLFSSL_CTX*], [2 x %struct.WOLFSSL_CTX*]* @CTX_TABLE, i64 0, i64 1), %16 ]
  store %struct.WOLFSSL_CTX* %8, %struct.WOLFSSL_CTX** %15, align 8, !tbaa !107
  br label %19

16:                                               ; preds = %10
  %17 = load %struct.WOLFSSL_CTX*, %struct.WOLFSSL_CTX** getelementptr inbounds ([2 x %struct.WOLFSSL_CTX*], [2 x %struct.WOLFSSL_CTX*]* @CTX_TABLE, i64 0, i64 1), align 8, !tbaa !107
  %18 = icmp eq %struct.WOLFSSL_CTX* %17, null
  br i1 %18, label %13, label %19

19:                                               ; preds = %16, %13, %6
  %20 = phi i64 [ -1, %6 ], [ %14, %13 ], [ -1, %16 ]
  ret i64 %20
}

declare %struct.WOLFSSL_METHOD* @wolfTLSv1_2_client_method() local_unnamed_addr #1

declare %struct.WOLFSSL_METHOD* @wolfTLSv1_2_server_method() local_unnamed_addr #1

declare %struct.WOLFSSL_CTX* @wolfSSL_CTX_new(%struct.WOLFSSL_METHOD*) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden i32 @enc_wolfSSL_CTX_use_certificate_chain_buffer_format(i64 %0, i8* %1, i64 %2, i32 %3) local_unnamed_addr #0 {
  %5 = icmp ugt i64 %0, 1
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.WOLFSSL_CTX*], [2 x %struct.WOLFSSL_CTX*]* @CTX_TABLE, i64 0, i64 %0
  %8 = load %struct.WOLFSSL_CTX*, %struct.WOLFSSL_CTX** %7, align 8, !tbaa !107
  %9 = icmp eq %struct.WOLFSSL_CTX* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @wolfSSL_CTX_use_certificate_chain_buffer_format(%struct.WOLFSSL_CTX* nonnull %8, i8* %1, i64 %2, i32 %3) #12
  br label %12

12:                                               ; preds = %4, %6, %10
  %13 = phi i32 [ %11, %10 ], [ -1, %6 ], [ -1, %4 ]
  ret i32 %13
}

declare i32 @wolfSSL_CTX_use_certificate_chain_buffer_format(%struct.WOLFSSL_CTX*, i8*, i64, i32) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden i32 @enc_wolfSSL_CTX_use_certificate_buffer(i64 %0, i8* %1, i64 %2, i32 %3) local_unnamed_addr #0 {
  %5 = icmp ugt i64 %0, 1
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.WOLFSSL_CTX*], [2 x %struct.WOLFSSL_CTX*]* @CTX_TABLE, i64 0, i64 %0
  %8 = load %struct.WOLFSSL_CTX*, %struct.WOLFSSL_CTX** %7, align 8, !tbaa !107
  %9 = icmp eq %struct.WOLFSSL_CTX* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @wolfSSL_CTX_use_certificate_buffer(%struct.WOLFSSL_CTX* nonnull %8, i8* %1, i64 %2, i32 %3) #12
  br label %12

12:                                               ; preds = %4, %6, %10
  %13 = phi i32 [ %11, %10 ], [ -1, %6 ], [ -1, %4 ]
  ret i32 %13
}

declare i32 @wolfSSL_CTX_use_certificate_buffer(%struct.WOLFSSL_CTX*, i8*, i64, i32) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden i32 @enc_wolfSSL_CTX_use_PrivateKey_buffer(i64 %0, i8* %1, i64 %2, i32 %3) local_unnamed_addr #0 {
  %5 = icmp ugt i64 %0, 1
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.WOLFSSL_CTX*], [2 x %struct.WOLFSSL_CTX*]* @CTX_TABLE, i64 0, i64 %0
  %8 = load %struct.WOLFSSL_CTX*, %struct.WOLFSSL_CTX** %7, align 8, !tbaa !107
  %9 = icmp eq %struct.WOLFSSL_CTX* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @wolfSSL_CTX_use_PrivateKey_buffer(%struct.WOLFSSL_CTX* nonnull %8, i8* %1, i64 %2, i32 %3) #12
  br label %12

12:                                               ; preds = %4, %6, %10
  %13 = phi i32 [ %11, %10 ], [ -1, %6 ], [ -1, %4 ]
  ret i32 %13
}

declare i32 @wolfSSL_CTX_use_PrivateKey_buffer(%struct.WOLFSSL_CTX*, i8*, i64, i32) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden i32 @enc_wolfSSL_CTX_load_verify_buffer(i64 %0, i8* %1, i64 %2, i32 %3) local_unnamed_addr #0 {
  %5 = icmp ugt i64 %0, 1
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.WOLFSSL_CTX*], [2 x %struct.WOLFSSL_CTX*]* @CTX_TABLE, i64 0, i64 %0
  %8 = load %struct.WOLFSSL_CTX*, %struct.WOLFSSL_CTX** %7, align 8, !tbaa !107
  %9 = icmp eq %struct.WOLFSSL_CTX* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @wolfSSL_CTX_load_verify_buffer(%struct.WOLFSSL_CTX* nonnull %8, i8* %1, i64 %2, i32 %3) #12
  br label %12

12:                                               ; preds = %4, %6, %10
  %13 = phi i32 [ %11, %10 ], [ -1, %6 ], [ -1, %4 ]
  ret i32 %13
}

declare i32 @wolfSSL_CTX_load_verify_buffer(%struct.WOLFSSL_CTX*, i8*, i64, i32) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden i32 @enc_wolfSSL_CTX_set_cipher_list(i64 %0, i8* %1) local_unnamed_addr #0 {
  %3 = icmp ugt i64 %0, 1
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.WOLFSSL_CTX*], [2 x %struct.WOLFSSL_CTX*]* @CTX_TABLE, i64 0, i64 %0
  %6 = load %struct.WOLFSSL_CTX*, %struct.WOLFSSL_CTX** %5, align 8, !tbaa !107
  %7 = icmp eq %struct.WOLFSSL_CTX* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @wolfSSL_CTX_set_cipher_list(%struct.WOLFSSL_CTX* nonnull %6, i8* %1) #12
  br label %10

10:                                               ; preds = %2, %4, %8
  %11 = phi i32 [ %9, %8 ], [ -1, %4 ], [ -1, %2 ]
  ret i32 %11
}

declare i32 @wolfSSL_CTX_set_cipher_list(%struct.WOLFSSL_CTX*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden i64 @enc_wolfSSL_new(i64 %0) local_unnamed_addr #0 {
  %2 = icmp ugt i64 %0, 1
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.WOLFSSL_CTX*], [2 x %struct.WOLFSSL_CTX*]* @CTX_TABLE, i64 0, i64 %0
  %5 = load %struct.WOLFSSL_CTX*, %struct.WOLFSSL_CTX** %4, align 8, !tbaa !107
  %6 = icmp eq %struct.WOLFSSL_CTX* %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = tail call %struct.WOLFSSL* @wolfSSL_new(%struct.WOLFSSL_CTX* nonnull %5) #12
  %9 = icmp eq %struct.WOLFSSL* %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = load %struct.WOLFSSL*, %struct.WOLFSSL** getelementptr inbounds ([2 x %struct.WOLFSSL*], [2 x %struct.WOLFSSL*]* @SSL_TABLE, i64 0, i64 0), align 16, !tbaa !107
  %12 = icmp eq %struct.WOLFSSL* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %16, %10
  %14 = phi i64 [ 0, %10 ], [ 1, %16 ]
  %15 = phi %struct.WOLFSSL** [ getelementptr inbounds ([2 x %struct.WOLFSSL*], [2 x %struct.WOLFSSL*]* @SSL_TABLE, i64 0, i64 0), %10 ], [ getelementptr inbounds ([2 x %struct.WOLFSSL*], [2 x %struct.WOLFSSL*]* @SSL_TABLE, i64 0, i64 1), %16 ]
  store %struct.WOLFSSL* %8, %struct.WOLFSSL** %15, align 8, !tbaa !107
  br label %19

16:                                               ; preds = %10
  %17 = load %struct.WOLFSSL*, %struct.WOLFSSL** getelementptr inbounds ([2 x %struct.WOLFSSL*], [2 x %struct.WOLFSSL*]* @SSL_TABLE, i64 0, i64 1), align 8, !tbaa !107
  %18 = icmp eq %struct.WOLFSSL* %17, null
  br i1 %18, label %13, label %19

19:                                               ; preds = %1, %16, %13, %7, %3
  %20 = phi i64 [ -1, %3 ], [ -1, %7 ], [ %14, %13 ], [ -1, %16 ], [ -1, %1 ]
  ret i64 %20
}

declare %struct.WOLFSSL* @wolfSSL_new(%struct.WOLFSSL_CTX*) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden i32 @enc_wolfSSL_set_fd(i64 %0, i32 %1) local_unnamed_addr #0 {
  %3 = icmp ugt i64 %0, 1
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.WOLFSSL*], [2 x %struct.WOLFSSL*]* @SSL_TABLE, i64 0, i64 %0
  %6 = load %struct.WOLFSSL*, %struct.WOLFSSL** %5, align 8, !tbaa !107
  %7 = icmp eq %struct.WOLFSSL* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @wolfSSL_set_fd(%struct.WOLFSSL* nonnull %6, i32 %1) #12
  br label %10

10:                                               ; preds = %2, %4, %8
  %11 = phi i32 [ %9, %8 ], [ -1, %4 ], [ -1, %2 ]
  ret i32 %11
}

declare i32 @wolfSSL_set_fd(%struct.WOLFSSL*, i32) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden i32 @enc_wolfSSL_connect(i64 %0) local_unnamed_addr #0 {
  %2 = icmp ugt i64 %0, 1
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.WOLFSSL*], [2 x %struct.WOLFSSL*]* @SSL_TABLE, i64 0, i64 %0
  %5 = load %struct.WOLFSSL*, %struct.WOLFSSL** %4, align 8, !tbaa !107
  %6 = icmp eq %struct.WOLFSSL* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @wolfSSL_connect(%struct.WOLFSSL* nonnull %5) #12
  br label %9

9:                                                ; preds = %1, %3, %7
  %10 = phi i32 [ %8, %7 ], [ -1, %3 ], [ -1, %1 ]
  ret i32 %10
}

declare i32 @wolfSSL_connect(%struct.WOLFSSL*) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden i32 @enc_wolfSSL_write(i64 %0, i8* %1, i32 %2) local_unnamed_addr #0 {
  %4 = icmp ugt i64 %0, 1
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2 x %struct.WOLFSSL*], [2 x %struct.WOLFSSL*]* @SSL_TABLE, i64 0, i64 %0
  %7 = load %struct.WOLFSSL*, %struct.WOLFSSL** %6, align 8, !tbaa !107
  %8 = icmp eq %struct.WOLFSSL* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @wolfSSL_write(%struct.WOLFSSL* nonnull %7, i8* %1, i32 %2) #12
  br label %11

11:                                               ; preds = %3, %5, %9
  %12 = phi i32 [ %10, %9 ], [ -1, %5 ], [ -1, %3 ]
  ret i32 %12
}

declare i32 @wolfSSL_write(%struct.WOLFSSL*, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden i32 @enc_wolfSSL_get_error(i64 %0, i32 %1) local_unnamed_addr #0 {
  %3 = icmp ugt i64 %0, 1
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.WOLFSSL*], [2 x %struct.WOLFSSL*]* @SSL_TABLE, i64 0, i64 %0
  %6 = load %struct.WOLFSSL*, %struct.WOLFSSL** %5, align 8, !tbaa !107
  %7 = icmp eq %struct.WOLFSSL* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @wolfSSL_get_error(%struct.WOLFSSL* nonnull %6, i32 %1) #12
  br label %10

10:                                               ; preds = %2, %4, %8
  %11 = phi i32 [ %9, %8 ], [ -1, %4 ], [ -1, %2 ]
  ret i32 %11
}

declare i32 @wolfSSL_get_error(%struct.WOLFSSL*, i32) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden i32 @enc_wolfSSL_read(i64 %0, i8* %1, i32 %2) local_unnamed_addr #0 {
  %4 = icmp ugt i64 %0, 1
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2 x %struct.WOLFSSL*], [2 x %struct.WOLFSSL*]* @SSL_TABLE, i64 0, i64 %0
  %7 = load %struct.WOLFSSL*, %struct.WOLFSSL** %6, align 8, !tbaa !107
  %8 = icmp eq %struct.WOLFSSL* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @wolfSSL_read(%struct.WOLFSSL* nonnull %7, i8* %1, i32 %2) #12
  br label %11

11:                                               ; preds = %3, %5, %9
  %12 = phi i32 [ %10, %9 ], [ -1, %5 ], [ -1, %3 ]
  ret i32 %12
}

declare i32 @wolfSSL_read(%struct.WOLFSSL*, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden void @enc_wolfSSL_free(i64 %0) local_unnamed_addr #0 {
  %2 = icmp ugt i64 %0, 1
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.WOLFSSL*], [2 x %struct.WOLFSSL*]* @SSL_TABLE, i64 0, i64 %0
  %5 = load %struct.WOLFSSL*, %struct.WOLFSSL** %4, align 8, !tbaa !107
  tail call void @wolfSSL_free(%struct.WOLFSSL* %5) #12
  store %struct.WOLFSSL* null, %struct.WOLFSSL** %4, align 8, !tbaa !107
  br label %6

6:                                                ; preds = %1, %3
  ret void
}

declare void @wolfSSL_free(%struct.WOLFSSL*) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden void @enc_wolfSSL_CTX_free(i64 %0) local_unnamed_addr #0 {
  %2 = icmp ugt i64 %0, 1
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.WOLFSSL_CTX*], [2 x %struct.WOLFSSL_CTX*]* @CTX_TABLE, i64 0, i64 %0
  %5 = load %struct.WOLFSSL_CTX*, %struct.WOLFSSL_CTX** %4, align 8, !tbaa !107
  tail call void @wolfSSL_CTX_free(%struct.WOLFSSL_CTX* %5) #12
  store %struct.WOLFSSL_CTX* null, %struct.WOLFSSL_CTX** %4, align 8, !tbaa !107
  br label %6

6:                                                ; preds = %1, %3
  ret void
}

declare void @wolfSSL_CTX_free(%struct.WOLFSSL_CTX*) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden i32 @enc_wolfSSL_Cleanup() local_unnamed_addr #0 {
  %1 = load %struct.WOLFSSL*, %struct.WOLFSSL** getelementptr inbounds ([2 x %struct.WOLFSSL*], [2 x %struct.WOLFSSL*]* @SSL_TABLE, i64 0, i64 0), align 16, !tbaa !107
  tail call void @wolfSSL_free(%struct.WOLFSSL* %1) #12
  store %struct.WOLFSSL* null, %struct.WOLFSSL** getelementptr inbounds ([2 x %struct.WOLFSSL*], [2 x %struct.WOLFSSL*]* @SSL_TABLE, i64 0, i64 0), align 16, !tbaa !107
  %2 = load %struct.WOLFSSL*, %struct.WOLFSSL** getelementptr inbounds ([2 x %struct.WOLFSSL*], [2 x %struct.WOLFSSL*]* @SSL_TABLE, i64 0, i64 1), align 8, !tbaa !107
  tail call void @wolfSSL_free(%struct.WOLFSSL* %2) #12
  store %struct.WOLFSSL* null, %struct.WOLFSSL** getelementptr inbounds ([2 x %struct.WOLFSSL*], [2 x %struct.WOLFSSL*]* @SSL_TABLE, i64 0, i64 1), align 8, !tbaa !107
  %3 = load %struct.WOLFSSL_CTX*, %struct.WOLFSSL_CTX** getelementptr inbounds ([2 x %struct.WOLFSSL_CTX*], [2 x %struct.WOLFSSL_CTX*]* @CTX_TABLE, i64 0, i64 0), align 16, !tbaa !107
  tail call void @wolfSSL_CTX_free(%struct.WOLFSSL_CTX* %3) #12
  store %struct.WOLFSSL_CTX* null, %struct.WOLFSSL_CTX** getelementptr inbounds ([2 x %struct.WOLFSSL_CTX*], [2 x %struct.WOLFSSL_CTX*]* @CTX_TABLE, i64 0, i64 0), align 16, !tbaa !107
  %4 = load %struct.WOLFSSL_CTX*, %struct.WOLFSSL_CTX** getelementptr inbounds ([2 x %struct.WOLFSSL_CTX*], [2 x %struct.WOLFSSL_CTX*]* @CTX_TABLE, i64 0, i64 1), align 8, !tbaa !107
  tail call void @wolfSSL_CTX_free(%struct.WOLFSSL_CTX* %4) #12
  store %struct.WOLFSSL_CTX* null, %struct.WOLFSSL_CTX** getelementptr inbounds ([2 x %struct.WOLFSSL_CTX*], [2 x %struct.WOLFSSL_CTX*]* @CTX_TABLE, i64 0, i64 1), align 8, !tbaa !107
  %5 = tail call i32 @wolfSSL_Cleanup() #12
  ret i32 undef
}

declare i32 @wolfSSL_Cleanup() local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden void @printf(i8* nocapture readonly %0, ...) local_unnamed_addr #0 {
  %2 = alloca [8192 x i8], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = getelementptr inbounds [8192 x i8], [8192 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %4) #2
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(8192) %4, i8 0, i64 8192, i1 false)
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #2
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %5)
  %7 = call i32 @vsnprintf(i8* nonnull %4, i64 8192, i8* %0, %struct.__va_list_tag* nonnull %6) #13
  call void @llvm.va_end(i8* nonnull %5)
  %8 = call i32 @ocall_print_string(i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #2
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %4) #2
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(i8* nocapture noundef, i64 noundef, i8* nocapture noundef readonly, %struct.__va_list_tag* noundef) local_unnamed_addr #10

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: nofree nounwind ssp uwtable
define hidden i32 @sprintf(i8* nocapture %0, i8* nocapture readonly %1, ...) local_unnamed_addr #11 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #2
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %4)
  %6 = call i32 @vsnprintf(i8* %0, i64 8192, i8* %1, %struct.__va_list_tag* nonnull %5) #13
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #2
  ret i32 %6
}

; Function Attrs: nounwind ssp uwtable
define hidden double @current_time() local_unnamed_addr #0 {
  %1 = alloca double, align 8
  %2 = bitcast double* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #2
  %3 = call i32 @ocall_current_time(double* nonnull %1) #12
  %4 = load double, double* %1, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #2
  ret double %4
}

; Function Attrs: nounwind ssp uwtable
define hidden i32 @LowResTimer() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #2
  %3 = call i32 @ocall_low_res_time(i32* nonnull %1) #12
  %4 = load i32, i32* %1, align 4, !tbaa !99
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #2
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define hidden i64 @recv(i32 %0, i8* %1, i64 %2, i32 %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #2
  %7 = call i32 @ocall_recv(i64* nonnull %5, i32 %0, i8* %1, i64 %2, i32 %3) #12
  %8 = load i64, i64* %5, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #2
  ret i64 %8
}

; Function Attrs: nounwind ssp uwtable
define hidden i64 @send(i32 %0, i8* %1, i64 %2, i32 %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #2
  %7 = call i32 @ocall_send(i64* nonnull %5, i32 %0, i8* %1, i64 %2, i32 %3) #12
  %8 = load i64, i64* %5, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #2
  ret i64 %8
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtin-printf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtin-printf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-builtin-printf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-builtin-printf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtin-printf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtin-printf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nosync nounwind willreturn }
attributes #9 = { nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind "frame-pointer"="none" "no-builtin-printf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind ssp uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtin-printf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-builtin-printf" }
attributes #13 = { "no-builtin-printf" }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 13.0.1"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 1}
!3 = !{i32 7, !"PIE Level", i32 1}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{!6, !10, i64 8}
!6 = !{!"ms_wc_test_t", !7, i64 0, !10, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!13, !10, i64 8}
!13 = !{!"ms_wc_benchmark_test_t", !7, i64 0, !10, i64 8}
!14 = !{!13, !7, i64 0}
!15 = !{!16, !7, i64 0}
!16 = !{!"ms_enc_wolfSSL_Init_t", !7, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"ms_enc_wolfTLSv1_2_client_method_t", !19, i64 0}
!19 = !{!"long", !8, i64 0}
!20 = !{!21, !19, i64 0}
!21 = !{!"ms_enc_wolfTLSv1_2_server_method_t", !19, i64 0}
!22 = !{!23, !19, i64 8}
!23 = !{!"ms_enc_wolfSSL_CTX_new_t", !19, i64 0, !19, i64 8}
!24 = !{!23, !19, i64 0}
!25 = !{!26, !10, i64 16}
!26 = !{!"ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t", !7, i64 0, !19, i64 8, !10, i64 16, !19, i64 24, !7, i64 32}
!27 = !{!26, !19, i64 24}
!28 = !{!26, !19, i64 8}
!29 = !{!26, !7, i64 32}
!30 = !{!26, !7, i64 0}
!31 = !{!32, !10, i64 16}
!32 = !{!"ms_enc_wolfSSL_CTX_load_verify_buffer_t", !7, i64 0, !19, i64 8, !10, i64 16, !19, i64 24, !7, i64 32}
!33 = !{!32, !19, i64 24}
!34 = !{!32, !19, i64 8}
!35 = !{!32, !7, i64 32}
!36 = !{!32, !7, i64 0}
!37 = !{!38, !10, i64 16}
!38 = !{!"ms_enc_wolfSSL_CTX_use_certificate_chain_buffer_format_t", !7, i64 0, !19, i64 8, !10, i64 16, !19, i64 24, !7, i64 32}
!39 = !{!38, !19, i64 24}
!40 = !{!38, !19, i64 8}
!41 = !{!38, !7, i64 32}
!42 = !{!38, !7, i64 0}
!43 = !{!44, !10, i64 16}
!44 = !{!"ms_enc_wolfSSL_CTX_use_certificate_buffer_t", !7, i64 0, !19, i64 8, !10, i64 16, !19, i64 24, !7, i64 32}
!45 = !{!44, !19, i64 24}
!46 = !{!44, !19, i64 8}
!47 = !{!44, !7, i64 32}
!48 = !{!44, !7, i64 0}
!49 = !{!50, !10, i64 16}
!50 = !{!"ms_enc_wolfSSL_CTX_set_cipher_list_t", !7, i64 0, !19, i64 8, !10, i64 16, !19, i64 24}
!51 = !{!50, !19, i64 24}
!52 = !{!8, !8, i64 0}
!53 = !{!50, !19, i64 8}
!54 = !{!50, !7, i64 0}
!55 = !{!56, !19, i64 8}
!56 = !{!"ms_enc_wolfSSL_new_t", !19, i64 0, !19, i64 8}
!57 = !{!56, !19, i64 0}
!58 = !{!59, !19, i64 8}
!59 = !{!"ms_enc_wolfSSL_set_fd_t", !7, i64 0, !19, i64 8, !7, i64 16}
!60 = !{!59, !7, i64 16}
!61 = !{!59, !7, i64 0}
!62 = !{!63, !19, i64 8}
!63 = !{!"ms_enc_wolfSSL_connect_t", !7, i64 0, !19, i64 8}
!64 = !{!63, !7, i64 0}
!65 = !{!66, !10, i64 16}
!66 = !{!"ms_enc_wolfSSL_write_t", !7, i64 0, !19, i64 8, !10, i64 16, !7, i64 24}
!67 = !{!66, !7, i64 24}
!68 = !{!66, !19, i64 8}
!69 = !{!66, !7, i64 0}
!70 = !{!71, !19, i64 8}
!71 = !{!"ms_enc_wolfSSL_get_error_t", !7, i64 0, !19, i64 8, !7, i64 16}
!72 = !{!71, !7, i64 16}
!73 = !{!71, !7, i64 0}
!74 = !{!75, !10, i64 16}
!75 = !{!"ms_enc_wolfSSL_read_t", !7, i64 0, !19, i64 8, !10, i64 16, !7, i64 24}
!76 = !{!75, !7, i64 24}
!77 = !{!75, !19, i64 8}
!78 = !{!75, !7, i64 0}
!79 = !{!80, !19, i64 0}
!80 = !{!"ms_enc_wolfSSL_free_t", !19, i64 0}
!81 = !{!82, !19, i64 0}
!82 = !{!"ms_enc_wolfSSL_CTX_free_t", !19, i64 0}
!83 = !{!84, !7, i64 0}
!84 = !{!"ms_enc_wolfSSL_Cleanup_t", !7, i64 0}
!85 = !{!86, !10, i64 0}
!86 = !{!"ms_ocall_print_string_t", !10, i64 0}
!87 = !{!88, !10, i64 0}
!88 = !{!"ms_ocall_current_time_t", !10, i64 0}
!89 = !{!90, !10, i64 0}
!90 = !{!"ms_ocall_low_res_time_t", !10, i64 0}
!91 = !{!92, !7, i64 12}
!92 = !{!"ms_ocall_recv_t", !19, i64 0, !7, i64 8, !7, i64 12, !10, i64 16, !19, i64 24, !7, i64 32}
!93 = !{!92, !10, i64 16}
!94 = !{!92, !19, i64 24}
!95 = !{!92, !7, i64 32}
!96 = !{!92, !19, i64 0}
!97 = !{!19, !19, i64 0}
!98 = !{!92, !7, i64 8}
!99 = !{!7, !7, i64 0}
!100 = !{!101, !7, i64 12}
!101 = !{!"ms_ocall_send_t", !19, i64 0, !7, i64 8, !7, i64 12, !10, i64 16, !19, i64 24, !7, i64 32}
!102 = !{!101, !10, i64 16}
!103 = !{!101, !19, i64 24}
!104 = !{!101, !7, i64 32}
!105 = !{!101, !19, i64 0}
!106 = !{!101, !7, i64 8}
!107 = !{!10, !10, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"double", !8, i64 0}
