; ModuleID = 'App.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, [5 x i8*] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ms_wc_test_t = type { i32, i8* }
%struct.ms_enc_wolfSSL_Init_t = type { i32 }
%struct.ms_enc_wolfTLSv1_2_client_method_t = type { i64 }
%struct.ms_enc_wolfSSL_CTX_new_t = type { i64, i64 }
%struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t = type { i32, i64, i8*, i64, i32 }
%struct.ms_enc_wolfSSL_CTX_set_cipher_list_t = type { i32, i64, i8*, i64 }
%struct.ms_enc_wolfSSL_set_fd_t = type { i32, i64, i32 }
%struct.ms_enc_wolfSSL_connect_t = type { i32, i64 }
%struct.ms_enc_wolfSSL_write_t = type { i32, i64, i8*, i32 }
%struct._sgx_misc_attribute_t = type { %struct.ms_enc_wolfSSL_CTX_new_t, i32 }
%struct.timezone = type { i32, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.ms_enc_wolfSSL_Init_t, [8 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }

@ocall_table_Wolfssl_Enclave = internal constant %struct.anon { i64 5, [5 x i8*] [i8* bitcast (i32 (i8*)* @Wolfssl_Enclave_ocall_print_string to i8*), i8* bitcast (i32 (i8*)* @Wolfssl_Enclave_ocall_current_time to i8*), i8* bitcast (i32 (i8*)* @Wolfssl_Enclave_ocall_low_res_time to i8*), i8* bitcast (i32 (i8*)* @Wolfssl_Enclave_ocall_recv to i8*), i8* bitcast (i32 (i8*)* @Wolfssl_Enclave_ocall_send to i8*)] }, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Wolfssl_Enclave.signed.so\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to create Enclave : error %d - %#x.\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@str = private unnamed_addr constant [13 x i8] c"Server Test:\00", align 1
@str.7 = private unnamed_addr constant [13 x i8] c"Client Test:\00", align 1
@str.8 = private unnamed_addr constant [25 x i8] c"Unrecognized option set!\00", align 1
@str.9 = private unnamed_addr constant [71 x i8] c"Usage:\0A\09-c Run a TLS client in enclave\0A\09-s Run a TLS server in enclave\00", align 1
@__const.client_connect.sendBuff = private unnamed_addr constant [15 x i8] c"Hello WolfSSL!\00", align 1
@.str = private unnamed_addr constant [36 x i8] c"Failed to create socket. errno: %i\0A\00", align 1
@.str.1.13 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2.14 = private unnamed_addr constant [28 x i8] c"Invalid Address. errno: %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Connect error. Error: %i\0A\00", align 1
@client_cert_der_2048 = internal constant [1313 x i8] c"0\82\05\1D0\82\04\05\A0\03\02\01\02\02\14\01\1A\EBV\AB\DC\8B\F3\A6\1E\F4\93`\89\B7\05\07)\01,0\0D\06\09*\86H\86\F7\0D\01\01\0B\05\000\81\9E1\0B0\09\06\03U\04\06\13\02US1\100\0E\06\03U\04\08\0C\07Montana1\100\0E\06\03U\04\07\0C\07Bozeman1\150\13\06\03U\04\0A\0C\0CwolfSSL_20481\190\17\06\03U\04\0B\0C\10Programming-20481\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com0\1E\17\0D220215125024Z\17\0D241111125024Z0\81\9E1\0B0\09\06\03U\04\06\13\02US1\100\0E\06\03U\04\08\0C\07Montana1\100\0E\06\03U\04\07\0C\07Bozeman1\150\13\06\03U\04\0A\0C\0CwolfSSL_20481\190\17\06\03U\04\0B\0C\10Programming-20481\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com0\82\01\220\0D\06\09*\86H\86\F7\0D\01\01\01\05\00\03\82\01\0F\000\82\01\0A\02\82\01\01\00\C3\03\D1+\FE9\A42E;S\C8\84+*|t\9A\BD\AA*R\07G\D6\A66\B2\072\8E\D0\BAi{\C6\C3D\9E\D4\81H\FD-h\A2\8Bg\BB\A1u\C86,J\D2\1B\F7\8B\BA\CF\0D\F9\EF\EC\F1\81\1E{\9B\03G\9A\BFe\CC\7Fe$i\A6\E8\14\89[\E44\F7\C5\B0\14\93\F5g{:zx\E1\01VV\91\A6\13B\8D\D2<@\9CL\EF\D1\86\DF7Q\1B\0C\A1;\F5\F1\A3J5\E4\E1\CE\96\DF\1B~\BFN\97\D0\10\E8\A8\080\81\AF \0BC\14\C5tg\B42\82o\8D\86\C2\88@\996\83\BA\1E@r\22\17\D7Re$s\B0\CE\EF\19\CD\AE\FFxl{\C0\12\03\D4Nr\0DPm;\A3;\A3\99^\9D\C8\D9\0C\85\B3\D9\8A\D9T&\DBm\FA\AC\BB\FF%L\C4\D1y\F4q\D3\86@\18\13\B0c\B5rN0\C4\97\84\86-V/\D7\15\F7\7F\C0\AE\F5\FC[\E5\FB\A1\BA\D3\02\03\01\00\01\A3\82\01O0\82\01K0\1D\06\03U\1D\0E\04\16\04\143\D8Ef\D7h\87\18~T\0Dp'\91\C7&\D7\85e\C00\81\DE\06\03U\1D#\04\81\D60\81\D3\80\143\D8Ef\D7h\87\18~T\0Dp'\91\C7&\D7\85e\C0\A1\81\A4\A4\81\A10\81\9E1\0B0\09\06\03U\04\06\13\02US1\100\0E\06\03U\04\08\0C\07Montana1\100\0E\06\03U\04\07\0C\07Bozeman1\150\13\06\03U\04\0A\0C\0CwolfSSL_20481\190\17\06\03U\04\0B\0C\10Programming-20481\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com\82\14\01\1A\EBV\AB\DC\8B\F3\A6\1E\F4\93`\89\B7\05\07)\01,0\0C\06\03U\1D\13\04\050\03\01\01\FF0\1C\06\03U\1D\11\04\150\13\82\0Bexample.com\87\04\7F\00\00\010\1D\06\03U\1D%\04\160\14\06\08+\06\01\05\05\07\03\01\06\08+\06\01\05\05\07\03\020\0D\06\09*\86H\86\F7\0D\01\01\0B\05\00\03\82\01\01\00dm\A6J\A8\9F\A7\E9u,\F3\85=>\AF8\FBl\C7\EB\C7\D0+\A2E\B5e\BE\D0\13,\F7\A3\C1\EB<\B1\F8\B8=c\8F\CA\08Ne\1D,\CE4n5\96\87\930]\AA\C8\E9\A0\9C\9B\84x:R\A13Hn\84fq\9C\CF\D1\C7{\02L\E1I|iG\FC\B7\01\F9\A09;\AB\B9\C6\D9\CA'\85\F0\\\B6\A4\E6\DC\F2R\FED\00\B6\F0G\F2o?\D5\0F\FF1\93S\88\8C\C7\FBV\10K;C\E6\8A\9C\B7\B4\9A\DD\\\E3\CD\9C\BD\A7\0C\C1\D9\96\F0\93\F3\AB\BD\D2\1Ew\8AB\CD\0F\FEH\DAW4aF\A3\89.1\D2J\D4C/V\85Du\CAk6\E2\E8:\B2\95\95:(\90\8D\C0#\FB<\D2\1Ask\EF\FD\D6\1B\EBmg*\E1\EB*\83\22\AD\E3\95\19\E5\93\EE\14\DC\B5}\E7\CF\89\8C\D7\8F\D2?h~\A9t|\1B8e\F9(M\FFP\C8\EEQ:\8F\1D\9EU^", align 16
@client_key_der_2048 = internal constant [1192 x i8] c"0\82\04\A4\02\01\00\02\82\01\01\00\C3\03\D1+\FE9\A42E;S\C8\84+*|t\9A\BD\AA*R\07G\D6\A66\B2\072\8E\D0\BAi{\C6\C3D\9E\D4\81H\FD-h\A2\8Bg\BB\A1u\C86,J\D2\1B\F7\8B\BA\CF\0D\F9\EF\EC\F1\81\1E{\9B\03G\9A\BFe\CC\7Fe$i\A6\E8\14\89[\E44\F7\C5\B0\14\93\F5g{:zx\E1\01VV\91\A6\13B\8D\D2<@\9CL\EF\D1\86\DF7Q\1B\0C\A1;\F5\F1\A3J5\E4\E1\CE\96\DF\1B~\BFN\97\D0\10\E8\A8\080\81\AF \0BC\14\C5tg\B42\82o\8D\86\C2\88@\996\83\BA\1E@r\22\17\D7Re$s\B0\CE\EF\19\CD\AE\FFxl{\C0\12\03\D4Nr\0DPm;\A3;\A3\99^\9D\C8\D9\0C\85\B3\D9\8A\D9T&\DBm\FA\AC\BB\FF%L\C4\D1y\F4q\D3\86@\18\13\B0c\B5rN0\C4\97\84\86-V/\D7\15\F7\7F\C0\AE\F5\FC[\E5\FB\A1\BA\D3\02\03\01\00\01\02\82\01\01\00\A2\E6\D8_\10qd\08\9E.m\D1m\1E\85\D2\0A\B1\8CG\CE,Qj\A0\12\9ES\DE\91L\1Dm\EAY{\F2w\AA\D9\C6\D9\8A\AB\D8\E1\16\E4c&\FF\B5l\13Y\B8\E3\A5\C8r\17.\0C\9Fo\E5Y?voI\B1\11\C2Z.\16)\0D\DE\B7\8E\DC@\D5\A2\EE\E0\1E\A1\F4\BE\97\DB\86c\96\14\CD\98\09`-0v\9C<\CD\E6\88\EEG\92y\0BZ\00\E2^_\11|}\F9\08\B7 \06\89*]\FD\00\AB\22\E1\F0\B3\BC$\A9^&\0E\1F\00-\FE!\9AS[m\D3+\AB\94\82hC6\D8\F6/\C6\22\FC\B5A]\0D3`\EA\A4}~\E8KU\91V\D3\\W\8F\1F\94\17/\AA\DE\E9\9E\A8\F4\CF\8AL\8E\A0\E4Vs\B2\CFO\86\C5i<\F3$ \8B\\\96\0C\FAk\12;\9Ag\C1\DF\C6\96\B2\A5\D5\92\0D\9B\09Bh$\10E\D4P\E4\179H\D05\8B\94m\11\DE\8F\CAY\02\81\81\00\EA$\A7\F9i3\E9q\DCR}\88!(/I\DE\BAr\16\E9\CCGz\88\0D\94W\84X\16:\81\B0?\A2\CF\A6l\1E\B0\06)\00\8F\E7wv\AC\DB\CA\C7\D9^\9B?&\90R\AE\FC8\90\00\14\BB\B4\0FX\94\E7/j~\1COA!\D41Y\1FN\8A\1A\8D\A7Wl\22\D8\E5\F4~2\A6\10\CBd\A5U\03\87\A6'\05\8C\C3\D7\B6'\B2M\BA0\DAG\8FT\D3=\8B\84\8D\94\98X\A5\02\81\81\00\D58\1B\C3\8F\C5\93\0CG\0Bo5\92\C5\B0\8DF\C8\92\18\8F\F5\80\0A\F7\EF\A1\FE\80\B9\B5*\BA\CA\18\B0]\A5\07\D0\93\8D\D8\9C\04\1C\D4b\8E\A6&\81\01\FF\CE\8A*c45@\AAm\80\DE\89#jWM\9En\AD\93NV\90\0Bm\9Ds\8B\0C\AE'=\DEN\F0\AA\C5lxgl\94R\9C7gl-\EF\BB\AF\DF\A6\90<\C4G\CF\8D\96\9E\98\A9\B4\9F\C5\A6P\DC\B3\F0\FBt\17\02\81\80^\83\09b\BD\BA|\A2\BFBt\F5|\1C\D2i\C9\04\0D\85~>=$\12\C3\18{\F3)\F3_\0EvlYu\E4A\84i\9D2\F3\CD\22\AB\B05\BAJ\B2<\E5\D9X\B6bO]\DE\E5\9E\0A\CAS\B2,\F7\9E\B3k\0A[ye\ECn\91N\92 \F6\FC\FC\16\ED\D3v\0C\E2\EC\7F\B2i\13kx\0EZFd\B4^\B7%\A0Zu:K\EF\C7<>\F7\FD&\B8 \C4\99\0A\9As\BE\C3\19\02\81\81\00\BAD\93\14\AC4\19;_\91`\AC\F7\B4\D6\81\056QS=\E8e\DC\AF.\DCa>\C9}\B8\7F\87\F0;\9B\03\82)7\CErN\11\D5\B1\C1\0C\07\A0\99\91J\8D\7F\ECy\CF\F19\B5\E9\85\ECb\F7\DA}\BCdM\22<\0E\F2\D6Q\F5\87\D8\99\C0\11 ]\0F)\FD[\E2\AE\D9\1C\D9!Vm\FC\84\D0_\ED\10\15\1C\18!\E7\C4=K\D7\D0\9Ej\95\CF\22\C9\03{\9E\E3`\01\FC/\02\81\80\11\D0K\CF\1Bg\B9\9F\10uG\86e\AE1\C2\C60\ACY\06P\D9\0F\B5p\06\F7\F0\D3\C8b|\A8\DAn\F6!?\D3\7F_\EA\8A\AB?\D9*^\F3Q\D2\C207\E3-\A3u\0D\1EM!4\D5Wp\\\89\BFr\ECJnh\D5\CD\18t3N\8C:E\8F\E6\96@\EBc\F9\19\86:Q\DD\89K\B0\F3\F9\9F](\958\BE5\AB\CA\\\E7\93S4\A1E]\139eBF\A1\9F\CD\F5\BF", align 16
@ca_cert_der_2048 = internal constant [1283 x i8] c"0\82\04\FF0\82\03\E7\A0\03\02\01\02\02\14&\8C\93\F9\F9\F4\1E\B3\01r\94Ugm\E2\F8=\DA\E9\F40\0D\06\09*\86H\86\F7\0D\01\01\0B\05\000\81\941\0B0\09\06\03U\04\06\13\02US1\100\0E\06\03U\04\08\0C\07Montana1\100\0E\06\03U\04\07\0C\07Bozeman1\110\0F\06\03U\04\0A\0C\08Sawtooth1\130\11\06\03U\04\0B\0C\0AConsulting1\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com0\1E\17\0D220215125024Z\17\0D241111125024Z0\81\941\0B0\09\06\03U\04\06\13\02US1\100\0E\06\03U\04\08\0C\07Montana1\100\0E\06\03U\04\07\0C\07Bozeman1\110\0F\06\03U\04\0A\0C\08Sawtooth1\130\11\06\03U\04\0B\0C\0AConsulting1\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com0\82\01\220\0D\06\09*\86H\86\F7\0D\01\01\01\05\00\03\82\01\0F\000\82\01\0A\02\82\01\01\00\BF\0C\CA-\14\B2\1E\84B[\CD8\1FJ\F2Mu\10\F1\B65\9F\DF\CA}\03\98\D3\AC\DE\03f\EE*\F1\D8\B0}n\07T\0B\10\98!M\80\CB\12 \E7\CCO\DEE}\C9rw2\EA\CA\90\BBiR\10\03/\A8\F3\95\C5\F1\8BbV\1B\EFgo\A4\10A\95\AD\0A\9B\E3\A5\C0\B0\D2pvP0[\A8\E8\08,|\ED\A7\A2z\8D8)\1C\AC\C7\ED\F2|\95\B0\95\82}I\\8\CDw%\EF\BD\80uS\94<=\CAc[\9F\15\B5\D3\1D\13/\19\D1<\DBv:\CC\B8}\C9\E5\C2\D7\DA@o\D8!\DCs\1BB-S\9C\FE\1A\FC}\ABz6?\98\DE\84|\05g\CEj\148\87\A9\F1\8C\B5h\CBh\7Fq +\F5\A0c\F5V/\A3&\D2\B7o\B1Z\17\D78\99\08\FE\93Xo\FE\C3\13I\08\16\0B\A7Mg\00R1g#N\98\EDQE\1D\B9\04\D9\0B\EC\D8(\B3K\BD\ED6y\02\03\01\00\01\A3\82\01E0\82\01A0\1D\06\03U\1D\0E\04\16\04\14'\8Eg\11t\C3&\1D?\ED3c\B3\A4\D8\1D0\E5\E8\D50\81\D4\06\03U\1D#\04\81\CC0\81\C9\80\14'\8Eg\11t\C3&\1D?\ED3c\B3\A4\D8\1D0\E5\E8\D5\A1\81\9A\A4\81\970\81\941\0B0\09\06\03U\04\06\13\02US1\100\0E\06\03U\04\08\0C\07Montana1\100\0E\06\03U\04\07\0C\07Bozeman1\110\0F\06\03U\04\0A\0C\08Sawtooth1\130\11\06\03U\04\0B\0C\0AConsulting1\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com\82\14&\8C\93\F9\F9\F4\1E\B3\01r\94Ugm\E2\F8=\DA\E9\F40\0C\06\03U\1D\13\04\050\03\01\01\FF0\1C\06\03U\1D\11\04\150\13\82\0Bexample.com\87\04\7F\00\00\010\1D\06\03U\1D%\04\160\14\06\08+\06\01\05\05\07\03\01\06\08+\06\01\05\05\07\03\020\0D\06\09*\86H\86\F7\0D\01\01\0B\05\00\03\82\01\01\00b\E4\1B(<\9D\D2`\A9U\BEj\F6 \F2\DA\E8\A1\1A\97\B1\90w\82\ED\C7w)S3\18\10b\E0\BD\93\1B\D2\D6\A1\80C\1Dd\F1B\92\EC\B7\B8\F0k\DAY\83\F4\B8\87\E6\FCp!\EAb2ph\14\0E\DC\B4\F1f\E2n\AB\D2ro\DA\DFq\F6='\97}\BE\E1\D1\AC\16\AD\D7O\AA\9D\0C\1En\A9^}W[<\C7m\D2\F2\\\C3\DC=6\99\8E\AB\C0\7F\13\A5\F4g\8B\E2\A6Q1\F1\03\91\00\A8\C4\C5\1D\7F5b\B8\1D\A0\A5\AB\EC2h\EE\F3\CAH\16\9F\F4\1E~\EA\FA\B0\86\15R6lKXD\A7\EB xn~\E8\00@\AC\98\D8S\F3\13K\B8\98fPc\ED\AF\E5\A4\F6\C9\90\1C\84\0A\09E/\A1\E17c\B5C\8C\A0.\7F\C4\D4\E1\AE\B7\B9E\13\F8p\D5y\06O\82\83K\98\D7VGd\9Ajm\8Ez\9D\EF\83\0Fku\0EG\22\92\F3\B4\B2\84a\1F\1C", align 16
@.str.12 = private unnamed_addr constant [24 x i8] c"Write error: Error: %i\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Read error. Error: %i\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Received: \09%s\0A\00", align 1
@str.22 = private unnamed_addr constant [28 x i8] c"Failed to connect to server\00", align 1
@str.15 = private unnamed_addr constant [23 x i8] c"wolfSSL_set_fd failure\00", align 1
@str.16 = private unnamed_addr constant [19 x i8] c"wolfSSL_new error.\00", align 1
@str.17 = private unnamed_addr constant [19 x i8] c"Error loading cert\00", align 1
@str.18 = private unnamed_addr constant [42 x i8] c"wolfSSL_CTX_use_PrivateKey_buffer failure\00", align 1
@str.19 = private unnamed_addr constant [60 x i8] c"enc_wolfSSL_CTX_use_certificate_chain_buffer_format failure\00", align 1
@str.20 = private unnamed_addr constant [24 x i8] c"wolfSSL_CTX_new failure\00", align 1
@str.21 = private unnamed_addr constant [34 x i8] c"wolfTLSv1_2_client_method failure\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"I hear ya fa shizzle!\0A\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1.25 = private unnamed_addr constant [36 x i8] c"ERROR: failed to create the socket\0A\00", align 1
@server_cert_der_2048 = internal constant [1260 x i8] c"0\82\04\E80\82\03\D0\A0\03\02\01\02\02\01\010\0D\06\09*\86H\86\F7\0D\01\01\0B\05\000\81\941\0B0\09\06\03U\04\06\13\02US1\100\0E\06\03U\04\08\0C\07Montana1\100\0E\06\03U\04\07\0C\07Bozeman1\110\0F\06\03U\04\0A\0C\08Sawtooth1\130\11\06\03U\04\0B\0C\0AConsulting1\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com0\1E\17\0D220215125024Z\17\0D241111125024Z0\81\901\0B0\09\06\03U\04\06\13\02US1\100\0E\06\03U\04\08\0C\07Montana1\100\0E\06\03U\04\07\0C\07Bozeman1\100\0E\06\03U\04\0A\0C\07wolfSSL1\100\0E\06\03U\04\0B\0C\07Support1\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com0\82\01\220\0D\06\09*\86H\86\F7\0D\01\01\01\05\00\03\82\01\0F\000\82\01\0A\02\82\01\01\00\C0\95\08\E1WA\F2qm\B7\D2EA'\01e\C6E\AE\F2\BC$0\B8\95\CE/N\D6\F6\1C\88\BC|\9F\FB\A8g\7F\FE\\\9CQu\F7\8A\CA\07\E75/\8F\E1\BD{\C0/|\ABd\A8\17\FC\CA]{\BA\E0!\E5r.o.\86\D8\95s\DA\AC\1BS\B9_?\D7\19\0D%O\E1ccQ\8B\0Bd?\ADC\B8\A5\1C\\4\B3\AE\00\A0c\C5\F6\7F\0BYhxs\A6\8C\18\A9\02m\AF\C3\19\01.\B8\10\E3\C6\CC@\B4i\A3F3i\87n\C4\BB\17\A6\F3\E8\DD\ADs\BC{/!\B5\FDfQ\0C\BDT\B3\E1m_\1C\BC#s\D1\09\03\89\14\D2\10\B9d\C3*\D0\A1\96J\BC\E1\D4\1A[\C7\A0\C0\C1cx\0FD702\96\802#\95\A1w\BA\13\D2\97s\E2]%\C9j\0D\C39`\A4\B4\B0iBB\09\E9\D8\08\BC3 \B3X\22\A7\AA\EB\C4\E1\E6a\83\C5\D2\96\DF\D9\D0O\AD\D7\02\03\01\00\01\A3\82\01E0\82\01A0\1D\06\03U\1D\0E\04\16\04\14\B3\112\C9\92\98\84\E2\C9\F8\D0;n\03B\CA\1F\0E\8E<0\81\D4\06\03U\1D#\04\81\CC0\81\C9\80\14'\8Eg\11t\C3&\1D?\ED3c\B3\A4\D8\1D0\E5\E8\D5\A1\81\9A\A4\81\970\81\941\0B0\09\06\03U\04\06\13\02US1\100\0E\06\03U\04\08\0C\07Montana1\100\0E\06\03U\04\07\0C\07Bozeman1\110\0F\06\03U\04\0A\0C\08Sawtooth1\130\11\06\03U\04\0B\0C\0AConsulting1\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com\82\14&\8C\93\F9\F9\F4\1E\B3\01r\94Ugm\E2\F8=\DA\E9\F40\0C\06\03U\1D\13\04\050\03\01\01\FF0\1C\06\03U\1D\11\04\150\13\82\0Bexample.com\87\04\7F\00\00\010\1D\06\03U\1D%\04\160\14\06\08+\06\01\05\05\07\03\01\06\08+\06\01\05\05\07\03\020\0D\06\09*\86H\86\F7\0D\01\01\0B\05\00\03\82\01\01\00K\88T\A8W\F0bM\B3\C5\8C\D2\02\0A\89\19Ec\8E7\\\A9\F7\8C\C5|\9D\19\B4]\B6\A4)M\97\DAn<'\EC\02\\\FB\E2\93o\B6\1A\DC^%\1F\BE\ABo7\FF\D6\98g|\F7S\84;\E6\F7\22\EFR\B0\8F\9DN/A*}/\F8\02\1E\F5\CD\9A\B2hh\D6\EF\EDj\96\A0\84o\0C^{D\F9o\D0\00o\DD\83j\D9\D9\17\9D2\9A\EAK\87\F9\12E>\B8\DE \FE\F4\B8?\F4\99a\A6+\97\1B|\A0\90\CF\E9;\CD\94\CE\85\DF\FBj+g[\8C(\DE\E6\0BKh[\B3J>\10;\0C\D8\C8\F1>=\CC/\16v$C\B6;\FD\CF/\07\0F\151Y^\CD\84\A9\82\05\1F\0C\97V]\90I\BD\84G\EC\07\B9\CF\FA\A0V\9B\AE\E2\A9\96\B2b\02J\FAB\D5#\DC\1Ck\\A=\F2s\E8\ED2\93\CC\F7\02Z\B4\BE\84\CAs&\9F\03,\B3t\96 ~\12\EA\E5\EF", align 16
@server_key_der_2048 = internal constant [1193 x i8] c"0\82\04\A5\02\01\00\02\82\01\01\00\C0\95\08\E1WA\F2qm\B7\D2EA'\01e\C6E\AE\F2\BC$0\B8\95\CE/N\D6\F6\1C\88\BC|\9F\FB\A8g\7F\FE\\\9CQu\F7\8A\CA\07\E75/\8F\E1\BD{\C0/|\ABd\A8\17\FC\CA]{\BA\E0!\E5r.o.\86\D8\95s\DA\AC\1BS\B9_?\D7\19\0D%O\E1ccQ\8B\0Bd?\ADC\B8\A5\1C\\4\B3\AE\00\A0c\C5\F6\7F\0BYhxs\A6\8C\18\A9\02m\AF\C3\19\01.\B8\10\E3\C6\CC@\B4i\A3F3i\87n\C4\BB\17\A6\F3\E8\DD\ADs\BC{/!\B5\FDfQ\0C\BDT\B3\E1m_\1C\BC#s\D1\09\03\89\14\D2\10\B9d\C3*\D0\A1\96J\BC\E1\D4\1A[\C7\A0\C0\C1cx\0FD702\96\802#\95\A1w\BA\13\D2\97s\E2]%\C9j\0D\C39`\A4\B4\B0iBB\09\E9\D8\08\BC3 \B3X\22\A7\AA\EB\C4\E1\E6a\83\C5\D2\96\DF\D9\D0O\AD\D7\02\03\01\00\01\02\82\01\01\00\9A\D04\0FRb\05P\01\EF\9F\EDdn\C2\C4\DA\1A\F2\84\D7\92\10H\92\C4\E9j\EB\8Bul\C6y8\F2\C9rJ\86dT\95w\CB\C3\9A\9D\B7\D4\1D\A4\00\C8\9EN\E4\DD\C7\BAg\16\C1t\BC\A9\D6\94\8F+0\1A\FB\ED\DF!\05#\D9J9\BD\98ke\9A\B8\DC\C4}\EE\A6C\15.=\BE\1D\22`*s0\D5>\D8\A2\AC\86C.\C4\F5d^?\89u\0F\11\D8Q%N\9F\D8\AA\A3\CE`\B3\E2\8A\D9~\1B\F0d\CA\9A[\05\0B[\AA\CB\E5\E3?n2\22\05\F3\D0\FA\EFtR\81\E2_t\D3\BD\FF1\83Eu\FAcz\97.\D6\B6\19\C6\92&\E4(\06PP\0Ex.\A9x\0D\14\97\B4\12\D81@\AB\A1\01A\C20\F8\07_\16\E4aw\D2`\F2\9F\8D\E8\F4\BA\EBc\DE*\97\81\EFLl\E6U4Q+(4\F4S\1C\C4X\0A?\BB\AF\B5\F7J\85C-<\F1XX\81\02\81\81\00\F2,Tv9#c\C9\102\B7\93\AD\AF\BE\19u\96\81d\E6\B5\B8\89BA\D1m\D0\1C\1B\F8\1B\ACi\CB6<d}\DC\F4\19\B8\C3`\B1WH_ROY:U\7F2\C0\19CP?\AE\CEo\17\F3\0E\9F@\CAN\AD\15;\C9y\E9\C0Y8sp\9C\0A|\C9:H2\A7\D8Iu\0A\85\C2\C2\FD\15s\DA\99\09*i\9A\9F\0Aq\BF\B0\04\A6\8CzZoHZT;\C6\B1S\17\DF\E7\02\81\81\00\CB\93\DEw\15]\B7\\\\|\D8\90\A9\98-\D6i\0Ec\B3\A3\DC\A6\CC\8Bj\A4\A2\12\8C\8E{H,\B2K7\DC\06\18}\EA\FEv\A1\D4\A1\E9?\0D\CD\1B_\AF_\9E\96[[\0F\A1|\AF\B3\9B\90\DBWs:\ED\B0#D\AEAO\1F\07B\13#L\CB\FA\F4\14\A4\D5\F7\9E6|[\9F\A8<\C1\85_t\D29-\FF\D0\84\DF\FB\B3 z.\9B\17\AE\E6\BA\0B\AE_S\A4R\ED\1B\C4\91\02\81\81\00\EC\98\DA\BB\D5\FE\F9RJ}\02UIoUnR/\84\A3+\B3\86b\B3T\D2cR\DA\E3\88v\A0\EF\8B\15\A5\D3\18\14rw^\C7\A3\04\1F\9E\19b\B5\1B\1B\9E\C3\F2\B52\F9L\C1\AA\EB\0C&}\D4_JQ\\\A4E\06pD\A7V\C0\D4\22\14v\9E\D8cP\89\90\D3\E2\BF\81\95\921A\879\1AC\0B\18\A5S\1F9\1A_\1FC\BC\87j\DFn\D3\22\00\FE\22\98pN\1A\19)\02\81\81\00\8AAV(Q\9E_\D4\9E\0B;\98\A3T\F2lV\D4\AA\E9i3\85$\0C\DA\D4\0C-\C4\BFO\02i8|\D4\E6\DCL\ED\D7\16\11\C3>\00\E7\C3&\C0Q\02\DE\BBu\9CoV\9Cz\F3\8E\EF\CF\8A\C5+\D2\DA\06jD\C9s\FEn\99\87\F8[\BE\F1|\E6e\B5Ol\F0\C9\C5\FF\16\CA\8B\1B\17\E2X=\A27\AB\01\BC\BF@\CES\8C\8E\ED\EF\EEY\9D\E0c\E6|^\F5\8EK\F1;\C1\02\81\80ME\F9@\8C\C5[\F4*\1A\8A\B4\F2\1C\ACk\E9\0CV6\B7Nr\96\D5\E5\8A\D2\E2\FF\F1\F1\18\13=\86\09\B8\D8v\A7\C9\1CqR\940C\E0\F1xt\FDa\1BL\09\CC\E6h*q\AD\1C\DFC\BCV\DB\A5\A4\BE5p\A4^\CFO\FC\00U\99:=#\CFgZ\F5\22\F8\B5)\D0D\11\EB5.F\BE\FD\8E\18\B2_\A8\BF\192\A1\F5\DC\03\E6|\9A\1F\0C|\A9\B0\0E!7;\F1\B0", align 16
@.str.6.28 = private unnamed_addr constant [23 x i8] c"ERROR: failed to bind\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"ERROR: failed to listen\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"ERROR: failed to accept the connection\0A\0A\00", align 1
@.str.14.34 = private unnamed_addr constant [12 x i8] c"Client: %s\0A\00", align 1
@str.29 = private unnamed_addr constant [28 x i8] c"Waiting for a connection...\00", align 1
@str.16.32 = private unnamed_addr constant [30 x i8] c"Client connected successfully\00", align 1
@str.17.36 = private unnamed_addr constant [21 x i8] c"Server write failed.\00", align 1
@str.18.33 = private unnamed_addr constant [22 x i8] c"Server failed to read\00", align 1
@str.19.31 = private unnamed_addr constant [23 x i8] c"wolfSSL_set_fd failure\00", align 1
@str.20.30 = private unnamed_addr constant [20 x i8] c"wolfSSL_new failure\00", align 1
@str.21.27 = private unnamed_addr constant [42 x i8] c"wolfSSL_CTX_use_PrivateKey_buffer failure\00", align 1
@str.22.26 = private unnamed_addr constant [60 x i8] c"enc_wolfSSL_CTX_use_certificate_chain_buffer_format failure\00", align 1
@str.23 = private unnamed_addr constant [24 x i8] c"wolfSSL_CTX_new failure\00", align 1
@str.24 = private unnamed_addr constant [34 x i8] c"wolfTLSv1_2_server_method failure\00", align 1

; Function Attrs: nounwind uwtable
define i32 @wc_test(i64 %0, i32* %1, i8* %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ms_wc_test_t, align 8
  %5 = bitcast %struct.ms_wc_test_t* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #13
  %6 = getelementptr inbounds %struct.ms_wc_test_t, %struct.ms_wc_test_t* %4, i64 0, i32 1
  store i8* %2, i8** %6, align 8, !tbaa !4
  %7 = call i32 @sgx_ecall(i64 %0, i32 0, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %5) #13
  %8 = icmp eq i32 %7, 0
  %9 = icmp ne i32* %1, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ms_wc_test_t, %struct.ms_wc_test_t* %4, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !10
  store i32 %13, i32* %1, align 4, !tbaa !11
  br label %14

14:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #13
  ret i32 %7
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @sgx_ecall(i64, i32, i8*, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @Wolfssl_Enclave_ocall_print_string(i8* nocapture readonly %0) #0 {
  %2 = bitcast i8* %0 to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !12
  tail call void @ocall_print_string(i8* %3) #13
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Wolfssl_Enclave_ocall_current_time(i8* nocapture readonly %0) #0 {
  %2 = bitcast i8* %0 to double**
  %3 = load double*, double** %2, align 8, !tbaa !14
  tail call void @ocall_current_time(double* %3) #13
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Wolfssl_Enclave_ocall_low_res_time(i8* nocapture readonly %0) #0 {
  %2 = bitcast i8* %0 to i32**
  %3 = load i32*, i32** %2, align 8, !tbaa !16
  tail call void @ocall_low_res_time(i32* %3) #13
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Wolfssl_Enclave_ocall_recv(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 12
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !18
  %5 = getelementptr inbounds i8, i8* %0, i64 16
  %6 = bitcast i8* %5 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !21
  %8 = getelementptr inbounds i8, i8* %0, i64 24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !22
  %11 = getelementptr inbounds i8, i8* %0, i64 32
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 8, !tbaa !23
  %14 = tail call i64 @ocall_recv(i32 %4, i8* %7, i64 %10, i32 %13) #13
  %15 = bitcast i8* %0 to i64*
  store i64 %14, i64* %15, align 8, !tbaa !24
  %16 = tail call i32* @__errno_location() #14
  %17 = load i32, i32* %16, align 4, !tbaa !11
  %18 = getelementptr inbounds i8, i8* %0, i64 8
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 8, !tbaa !25
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Wolfssl_Enclave_ocall_send(i8* nocapture %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 12
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !26
  %5 = getelementptr inbounds i8, i8* %0, i64 16
  %6 = bitcast i8* %5 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !28
  %8 = getelementptr inbounds i8, i8* %0, i64 24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !29
  %11 = getelementptr inbounds i8, i8* %0, i64 32
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 8, !tbaa !30
  %14 = tail call i64 @ocall_send(i32 %4, i8* %7, i64 %10, i32 %13) #13
  %15 = bitcast i8* %0 to i64*
  store i64 %14, i64* %15, align 8, !tbaa !31
  %16 = tail call i32* @__errno_location() #14
  %17 = load i32, i32* %16, align 4, !tbaa !11
  %18 = getelementptr inbounds i8, i8* %0, i64 8
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 8, !tbaa !32
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @wc_benchmark_test(i64 %0, i32* %1, i8* %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ms_wc_test_t, align 8
  %5 = bitcast %struct.ms_wc_test_t* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #13
  %6 = getelementptr inbounds %struct.ms_wc_test_t, %struct.ms_wc_test_t* %4, i64 0, i32 1
  store i8* %2, i8** %6, align 8, !tbaa !33
  %7 = call i32 @sgx_ecall(i64 %0, i32 1, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %5) #13
  %8 = icmp eq i32 %7, 0
  %9 = icmp ne i32* %1, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ms_wc_test_t, %struct.ms_wc_test_t* %4, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !35
  store i32 %13, i32* %1, align 4, !tbaa !11
  br label %14

14:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #13
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_Init(i64 %0, i32* %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ms_enc_wolfSSL_Init_t, align 4
  %4 = bitcast %struct.ms_enc_wolfSSL_Init_t* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #13
  %5 = call i32 @sgx_ecall(i64 %0, i32 2, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %4) #13
  %6 = icmp eq i32 %5, 0
  %7 = icmp ne i32* %1, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ms_enc_wolfSSL_Init_t, %struct.ms_enc_wolfSSL_Init_t* %3, i64 0, i32 0
  %11 = load i32, i32* %10, align 4, !tbaa !36
  store i32 %11, i32* %1, align 4, !tbaa !11
  br label %12

12:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_Debugging_ON(i64 %0) local_unnamed_addr #0 {
  %2 = tail call i32 @sgx_ecall(i64 %0, i32 3, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* null) #13
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_Debugging_OFF(i64 %0) local_unnamed_addr #0 {
  %2 = tail call i32 @sgx_ecall(i64 %0, i32 4, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* null) #13
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfTLSv1_2_client_method(i64 %0, i64* %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ms_enc_wolfTLSv1_2_client_method_t, align 8
  %4 = bitcast %struct.ms_enc_wolfTLSv1_2_client_method_t* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13
  %5 = call i32 @sgx_ecall(i64 %0, i32 5, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %4) #13
  %6 = icmp eq i32 %5, 0
  %7 = icmp ne i64* %1, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ms_enc_wolfTLSv1_2_client_method_t, %struct.ms_enc_wolfTLSv1_2_client_method_t* %3, i64 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !38
  store i64 %11, i64* %1, align 8, !tbaa !40
  br label %12

12:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfTLSv1_2_server_method(i64 %0, i64* %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ms_enc_wolfTLSv1_2_client_method_t, align 8
  %4 = bitcast %struct.ms_enc_wolfTLSv1_2_client_method_t* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13
  %5 = call i32 @sgx_ecall(i64 %0, i32 6, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %4) #13
  %6 = icmp eq i32 %5, 0
  %7 = icmp ne i64* %1, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ms_enc_wolfTLSv1_2_client_method_t, %struct.ms_enc_wolfTLSv1_2_client_method_t* %3, i64 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !41
  store i64 %11, i64* %1, align 8, !tbaa !40
  br label %12

12:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_CTX_new(i64 %0, i64* %1, i64 %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ms_enc_wolfSSL_CTX_new_t, align 8
  %5 = bitcast %struct.ms_enc_wolfSSL_CTX_new_t* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #13
  %6 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_new_t, %struct.ms_enc_wolfSSL_CTX_new_t* %4, i64 0, i32 1
  store i64 %2, i64* %6, align 8, !tbaa !43
  %7 = call i32 @sgx_ecall(i64 %0, i32 7, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %5) #13
  %8 = icmp eq i32 %7, 0
  %9 = icmp ne i64* %1, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_new_t, %struct.ms_enc_wolfSSL_CTX_new_t* %4, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !45
  store i64 %13, i64* %1, align 8, !tbaa !40
  br label %14

14:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #13
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_CTX_use_PrivateKey_buffer(i64 %0, i32* %1, i64 %2, i8* %3, i64 %4, i32 %5) local_unnamed_addr #0 {
  %7 = alloca %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, align 8
  %8 = bitcast %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #13
  %9 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 1
  store i64 %2, i64* %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 2
  store i8* %3, i8** %10, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 3
  store i64 %4, i64* %11, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 4
  store i32 %5, i32* %12, align 8, !tbaa !50
  %13 = call i32 @sgx_ecall(i64 %0, i32 8, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %8) #13
  %14 = icmp eq i32 %13, 0
  %15 = icmp ne i32* %1, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 0
  %19 = load i32, i32* %18, align 8, !tbaa !51
  store i32 %19, i32* %1, align 4, !tbaa !11
  br label %20

20:                                               ; preds = %17, %6
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #13
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_CTX_load_verify_buffer(i64 %0, i32* %1, i64 %2, i8* %3, i64 %4, i32 %5) local_unnamed_addr #0 {
  %7 = alloca %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, align 8
  %8 = bitcast %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #13
  %9 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 1
  store i64 %2, i64* %9, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 2
  store i8* %3, i8** %10, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 3
  store i64 %4, i64* %11, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 4
  store i32 %5, i32* %12, align 8, !tbaa !56
  %13 = call i32 @sgx_ecall(i64 %0, i32 9, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %8) #13
  %14 = icmp eq i32 %13, 0
  %15 = icmp ne i32* %1, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 0
  %19 = load i32, i32* %18, align 8, !tbaa !57
  store i32 %19, i32* %1, align 4, !tbaa !11
  br label %20

20:                                               ; preds = %17, %6
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #13
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_CTX_use_certificate_chain_buffer_format(i64 %0, i32* %1, i64 %2, i8* %3, i64 %4, i32 %5) local_unnamed_addr #0 {
  %7 = alloca %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, align 8
  %8 = bitcast %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #13
  %9 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 1
  store i64 %2, i64* %9, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 2
  store i8* %3, i8** %10, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 3
  store i64 %4, i64* %11, align 8, !tbaa !61
  %12 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 4
  store i32 %5, i32* %12, align 8, !tbaa !62
  %13 = call i32 @sgx_ecall(i64 %0, i32 10, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %8) #13
  %14 = icmp eq i32 %13, 0
  %15 = icmp ne i32* %1, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 0
  %19 = load i32, i32* %18, align 8, !tbaa !63
  store i32 %19, i32* %1, align 4, !tbaa !11
  br label %20

20:                                               ; preds = %17, %6
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #13
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_CTX_use_certificate_buffer(i64 %0, i32* %1, i64 %2, i8* %3, i64 %4, i32 %5) local_unnamed_addr #0 {
  %7 = alloca %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, align 8
  %8 = bitcast %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #13
  %9 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 1
  store i64 %2, i64* %9, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 2
  store i8* %3, i8** %10, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 3
  store i64 %4, i64* %11, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 4
  store i32 %5, i32* %12, align 8, !tbaa !68
  %13 = call i32 @sgx_ecall(i64 %0, i32 11, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %8) #13
  %14 = icmp eq i32 %13, 0
  %15 = icmp ne i32* %1, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t, %struct.ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t* %7, i64 0, i32 0
  %19 = load i32, i32* %18, align 8, !tbaa !69
  store i32 %19, i32* %1, align 4, !tbaa !11
  br label %20

20:                                               ; preds = %17, %6
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #13
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_CTX_set_cipher_list(i64 %0, i32* %1, i64 %2, i8* %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ms_enc_wolfSSL_CTX_set_cipher_list_t, align 8
  %6 = bitcast %struct.ms_enc_wolfSSL_CTX_set_cipher_list_t* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #13
  %7 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_set_cipher_list_t, %struct.ms_enc_wolfSSL_CTX_set_cipher_list_t* %5, i64 0, i32 1
  store i64 %2, i64* %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_set_cipher_list_t, %struct.ms_enc_wolfSSL_CTX_set_cipher_list_t* %5, i64 0, i32 2
  store i8* %3, i8** %8, align 8, !tbaa !72
  %9 = icmp eq i8* %3, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = tail call i64 @strlen(i8* noundef nonnull %3) #15
  %12 = add i64 %11, 1
  br label %13

13:                                               ; preds = %4, %10
  %14 = phi i64 [ %12, %10 ], [ 0, %4 ]
  %15 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_set_cipher_list_t, %struct.ms_enc_wolfSSL_CTX_set_cipher_list_t* %5, i64 0, i32 3
  store i64 %14, i64* %15, align 8, !tbaa !73
  %16 = call i32 @sgx_ecall(i64 %0, i32 12, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %6) #13
  %17 = icmp eq i32 %16, 0
  %18 = icmp ne i32* %1, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_set_cipher_list_t, %struct.ms_enc_wolfSSL_CTX_set_cipher_list_t* %5, i64 0, i32 0
  %22 = load i32, i32* %21, align 8, !tbaa !74
  store i32 %22, i32* %1, align 4, !tbaa !11
  br label %23

23:                                               ; preds = %20, %13
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #13
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_new(i64 %0, i64* %1, i64 %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ms_enc_wolfSSL_CTX_new_t, align 8
  %5 = bitcast %struct.ms_enc_wolfSSL_CTX_new_t* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #13
  %6 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_new_t, %struct.ms_enc_wolfSSL_CTX_new_t* %4, i64 0, i32 1
  store i64 %2, i64* %6, align 8, !tbaa !75
  %7 = call i32 @sgx_ecall(i64 %0, i32 13, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %5) #13
  %8 = icmp eq i32 %7, 0
  %9 = icmp ne i64* %1, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_new_t, %struct.ms_enc_wolfSSL_CTX_new_t* %4, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !77
  store i64 %13, i64* %1, align 8, !tbaa !40
  br label %14

14:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #13
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_set_fd(i64 %0, i32* %1, i64 %2, i32 %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ms_enc_wolfSSL_set_fd_t, align 8
  %6 = bitcast %struct.ms_enc_wolfSSL_set_fd_t* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #13
  %7 = getelementptr inbounds %struct.ms_enc_wolfSSL_set_fd_t, %struct.ms_enc_wolfSSL_set_fd_t* %5, i64 0, i32 1
  store i64 %2, i64* %7, align 8, !tbaa !78
  %8 = getelementptr inbounds %struct.ms_enc_wolfSSL_set_fd_t, %struct.ms_enc_wolfSSL_set_fd_t* %5, i64 0, i32 2
  store i32 %3, i32* %8, align 8, !tbaa !80
  %9 = call i32 @sgx_ecall(i64 %0, i32 14, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %6) #13
  %10 = icmp eq i32 %9, 0
  %11 = icmp ne i32* %1, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ms_enc_wolfSSL_set_fd_t, %struct.ms_enc_wolfSSL_set_fd_t* %5, i64 0, i32 0
  %15 = load i32, i32* %14, align 8, !tbaa !81
  store i32 %15, i32* %1, align 4, !tbaa !11
  br label %16

16:                                               ; preds = %13, %4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #13
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_connect(i64 %0, i32* %1, i64 %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ms_enc_wolfSSL_connect_t, align 8
  %5 = bitcast %struct.ms_enc_wolfSSL_connect_t* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #13
  %6 = getelementptr inbounds %struct.ms_enc_wolfSSL_connect_t, %struct.ms_enc_wolfSSL_connect_t* %4, i64 0, i32 1
  store i64 %2, i64* %6, align 8, !tbaa !82
  %7 = call i32 @sgx_ecall(i64 %0, i32 15, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %5) #13
  %8 = icmp eq i32 %7, 0
  %9 = icmp ne i32* %1, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ms_enc_wolfSSL_connect_t, %struct.ms_enc_wolfSSL_connect_t* %4, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !84
  store i32 %13, i32* %1, align 4, !tbaa !11
  br label %14

14:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #13
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_write(i64 %0, i32* %1, i64 %2, i8* %3, i32 %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ms_enc_wolfSSL_write_t, align 8
  %7 = bitcast %struct.ms_enc_wolfSSL_write_t* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #13
  %8 = getelementptr inbounds %struct.ms_enc_wolfSSL_write_t, %struct.ms_enc_wolfSSL_write_t* %6, i64 0, i32 1
  store i64 %2, i64* %8, align 8, !tbaa !85
  %9 = getelementptr inbounds %struct.ms_enc_wolfSSL_write_t, %struct.ms_enc_wolfSSL_write_t* %6, i64 0, i32 2
  store i8* %3, i8** %9, align 8, !tbaa !87
  %10 = getelementptr inbounds %struct.ms_enc_wolfSSL_write_t, %struct.ms_enc_wolfSSL_write_t* %6, i64 0, i32 3
  store i32 %4, i32* %10, align 8, !tbaa !88
  %11 = call i32 @sgx_ecall(i64 %0, i32 16, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %7) #13
  %12 = icmp eq i32 %11, 0
  %13 = icmp ne i32* %1, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ms_enc_wolfSSL_write_t, %struct.ms_enc_wolfSSL_write_t* %6, i64 0, i32 0
  %17 = load i32, i32* %16, align 8, !tbaa !89
  store i32 %17, i32* %1, align 4, !tbaa !11
  br label %18

18:                                               ; preds = %15, %5
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #13
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_get_error(i64 %0, i32* %1, i64 %2, i32 %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ms_enc_wolfSSL_set_fd_t, align 8
  %6 = bitcast %struct.ms_enc_wolfSSL_set_fd_t* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #13
  %7 = getelementptr inbounds %struct.ms_enc_wolfSSL_set_fd_t, %struct.ms_enc_wolfSSL_set_fd_t* %5, i64 0, i32 1
  store i64 %2, i64* %7, align 8, !tbaa !90
  %8 = getelementptr inbounds %struct.ms_enc_wolfSSL_set_fd_t, %struct.ms_enc_wolfSSL_set_fd_t* %5, i64 0, i32 2
  store i32 %3, i32* %8, align 8, !tbaa !92
  %9 = call i32 @sgx_ecall(i64 %0, i32 17, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %6) #13
  %10 = icmp eq i32 %9, 0
  %11 = icmp ne i32* %1, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ms_enc_wolfSSL_set_fd_t, %struct.ms_enc_wolfSSL_set_fd_t* %5, i64 0, i32 0
  %15 = load i32, i32* %14, align 8, !tbaa !93
  store i32 %15, i32* %1, align 4, !tbaa !11
  br label %16

16:                                               ; preds = %13, %4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #13
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_read(i64 %0, i32* %1, i64 %2, i8* %3, i32 %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ms_enc_wolfSSL_write_t, align 8
  %7 = bitcast %struct.ms_enc_wolfSSL_write_t* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #13
  %8 = getelementptr inbounds %struct.ms_enc_wolfSSL_write_t, %struct.ms_enc_wolfSSL_write_t* %6, i64 0, i32 1
  store i64 %2, i64* %8, align 8, !tbaa !94
  %9 = getelementptr inbounds %struct.ms_enc_wolfSSL_write_t, %struct.ms_enc_wolfSSL_write_t* %6, i64 0, i32 2
  store i8* %3, i8** %9, align 8, !tbaa !96
  %10 = getelementptr inbounds %struct.ms_enc_wolfSSL_write_t, %struct.ms_enc_wolfSSL_write_t* %6, i64 0, i32 3
  store i32 %4, i32* %10, align 8, !tbaa !97
  %11 = call i32 @sgx_ecall(i64 %0, i32 18, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %7) #13
  %12 = icmp eq i32 %11, 0
  %13 = icmp ne i32* %1, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ms_enc_wolfSSL_write_t, %struct.ms_enc_wolfSSL_write_t* %6, i64 0, i32 0
  %17 = load i32, i32* %16, align 8, !tbaa !98
  store i32 %17, i32* %1, align 4, !tbaa !11
  br label %18

18:                                               ; preds = %15, %5
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #13
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_free(i64 %0, i64 %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ms_enc_wolfTLSv1_2_client_method_t, align 8
  %4 = bitcast %struct.ms_enc_wolfTLSv1_2_client_method_t* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13
  %5 = getelementptr inbounds %struct.ms_enc_wolfTLSv1_2_client_method_t, %struct.ms_enc_wolfTLSv1_2_client_method_t* %3, i64 0, i32 0
  store i64 %1, i64* %5, align 8, !tbaa !99
  %6 = call i32 @sgx_ecall(i64 %0, i32 19, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_CTX_free(i64 %0, i64 %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ms_enc_wolfTLSv1_2_client_method_t, align 8
  %4 = bitcast %struct.ms_enc_wolfTLSv1_2_client_method_t* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13
  %5 = getelementptr inbounds %struct.ms_enc_wolfTLSv1_2_client_method_t, %struct.ms_enc_wolfTLSv1_2_client_method_t* %3, i64 0, i32 0
  store i64 %1, i64* %5, align 8, !tbaa !101
  %6 = call i32 @sgx_ecall(i64 %0, i32 20, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @enc_wolfSSL_Cleanup(i64 %0, i32* %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ms_enc_wolfSSL_Init_t, align 4
  %4 = bitcast %struct.ms_enc_wolfSSL_Init_t* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #13
  %5 = call i32 @sgx_ecall(i64 %0, i32 21, i8* bitcast (%struct.anon* @ocall_table_Wolfssl_Enclave to i8*), i8* nonnull %4) #13
  %6 = icmp eq i32 %5, 0
  %7 = icmp ne i32* %1, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ms_enc_wolfSSL_Init_t, %struct.ms_enc_wolfSSL_Init_t* %3, i64 0, i32 0
  %11 = load i32, i32* %10, align 4, !tbaa !103
  store i32 %11, i32* %1, align 4, !tbaa !11
  br label %12

12:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  %6 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #13
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %7) #13
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #13
  store i32 0, i32* %5, align 4, !tbaa !11
  %9 = icmp eq i32 %0, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8*, i8** %1, i64 1
  %12 = load i8*, i8** %11, align 8, !tbaa !105
  %13 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %12) #15
  %14 = icmp eq i64 %13, 2
  br i1 %14, label %17, label %15

15:                                               ; preds = %10, %2
  %16 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([71 x i8], [71 x i8]* @str.9, i64 0, i64 0))
  br label %37

17:                                               ; preds = %10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  %18 = call i32 @sgx_create_enclave(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 1, [1024 x i8]* nonnull %4, i32* nonnull %5, i64* nonnull %3, %struct._sgx_misc_attribute_t* null) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %18, i32 %18)
  br label %37

22:                                               ; preds = %17
  %23 = load i8*, i8** %11, align 8, !tbaa !105
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1, !tbaa !106
  %26 = sext i8 %25 to i32
  switch i32 %26, label %35 [
    i32 99, label %27
    i32 115, label %31
  ]

27:                                               ; preds = %22
  %28 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.7, i64 0, i64 0))
  %29 = load i64, i64* %3, align 8, !tbaa !40
  %30 = call i32 @client_connect(i64 %29) #13
  br label %37

31:                                               ; preds = %22
  %32 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str, i64 0, i64 0))
  %33 = load i64, i64* %3, align 8, !tbaa !40
  %34 = call i32 @server_connect(i64 %33) #13
  br label %37

35:                                               ; preds = %22
  %36 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.8, i64 0, i64 0))
  br label %37

37:                                               ; preds = %27, %31, %35, %20, %15
  %38 = phi i32 [ 0, %15 ], [ 1, %20 ], [ 0, %35 ], [ 0, %31 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #13
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %7) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #13
  ret i32 %38
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

declare i32 @sgx_create_enclave(i8*, i32, [1024 x i8]*, i32*, i64*, %struct._sgx_misc_attribute_t*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define void @ocall_print_string(i8* %0) local_unnamed_addr #8 {
  %2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %0)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @ocall_current_time(double* %0) local_unnamed_addr #8 {
  %2 = alloca %struct.ms_enc_wolfSSL_CTX_new_t, align 8
  %3 = icmp eq double* %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = bitcast %struct.ms_enc_wolfSSL_CTX_new_t* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #13
  %6 = call i32 @gettimeofday(%struct.ms_enc_wolfSSL_CTX_new_t* nonnull %2, %struct.timezone* null) #13
  %7 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_new_t, %struct.ms_enc_wolfSSL_CTX_new_t* %2, i64 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !107
  %9 = mul nsw i64 %8, 1000000
  %10 = getelementptr inbounds %struct.ms_enc_wolfSSL_CTX_new_t, %struct.ms_enc_wolfSSL_CTX_new_t* %2, i64 0, i32 1
  %11 = load i64, i64* %10, align 8, !tbaa !109
  %12 = add nsw i64 %9, %11
  %13 = sitofp i64 %12 to double
  %14 = fdiv double %13, 1.000000e+06
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #13
  store double %14, double* %0, align 8, !tbaa !110
  br label %15

15:                                               ; preds = %1, %4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(%struct.ms_enc_wolfSSL_CTX_new_t* nocapture noundef, %struct.timezone* nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define void @ocall_low_res_time(i32* nocapture %0) local_unnamed_addr #9 {
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @ocall_recv(i32 %0, i8* %1, i64 %2, i32 %3) local_unnamed_addr #0 {
  %5 = tail call i64 @recv(i32 %0, i8* %1, i64 %2, i32 %3) #13
  ret i64 %5
}

declare i64 @recv(i32, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @ocall_send(i32 %0, i8* %1, i64 %2, i32 %3) local_unnamed_addr #0 {
  %5 = tail call i64 @send(i32 %0, i8* %1, i64 %2, i32 %3) #13
  ret i64 %5
}

declare i64 @send(i32, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @client_connect(i64 %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [15 x i8], align 1
  %9 = alloca [4096 x i8], align 16
  %10 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #13
  %11 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #13
  %12 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #13
  store i32 0, i32* %4, align 4, !tbaa !11
  %13 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #13
  %14 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #13
  %15 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #13
  %16 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 15, i8* nonnull %16) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(15) %16, i8* noundef nonnull align 1 dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @__const.client_connect.sendBuff, i64 0, i64 0), i64 15, i1 false)
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %17) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(4096) %17, i8 0, i64 4096, i1 false)
  %18 = tail call i32 @socket(i32 2, i32 1, i32 0) #13
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = tail call i32* @__errno_location() #14
  %22 = load i32, i32* %21, align 4, !tbaa !11
  %23 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %149

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 2
  %26 = bitcast %struct.ms_enc_wolfSSL_Init_t* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %26, i8 0, i64 12, i1 false)
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 0
  store i16 2, i16* %27, align 4, !tbaa !112
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 1
  store i16 26411, i16* %28, align 2, !tbaa !116
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 2
  %30 = bitcast %struct.ms_enc_wolfSSL_Init_t* %29 to i8*
  %31 = call i32 @inet_pton(i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.13, i64 0, i64 0), i8* nonnull %30) #13
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = tail call i32* @__errno_location() #14
  %35 = load i32, i32* %34, align 4, !tbaa !11
  store i32 %35, i32* %4, align 4, !tbaa !11
  %36 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2.14, i64 0, i64 0), i32 %35)
  br label %149

37:                                               ; preds = %24
  %38 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %39 = call i32 @connect(i32 %18, %struct.sockaddr* nonnull %38, i32 16) #13
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = tail call i32* @__errno_location() #14
  %43 = load i32, i32* %42, align 4, !tbaa !11
  store i32 %43, i32* %4, align 4, !tbaa !11
  %44 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %149

45:                                               ; preds = %37
  %46 = call i32 @enc_wolfSSL_Debugging_OFF(i64 %0) #13
  %47 = call i32 @enc_wolfSSL_Init(i64 %0, i32* nonnull %2) #13
  %48 = call i32 @enc_wolfTLSv1_2_client_method(i64 %0, i64* nonnull %5) #13
  store i32 %48, i32* %2, align 4, !tbaa !11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @str.21, i64 0, i64 0))
  br label %149

52:                                               ; preds = %45
  %53 = load i64, i64* %5, align 8, !tbaa !40
  %54 = call i32 @enc_wolfSSL_CTX_new(i64 %0, i64* nonnull %6, i64 %53) #13
  store i32 %54, i32* %2, align 4, !tbaa !11
  %55 = icmp ne i32 %54, 0
  %56 = load i64, i64* %6, align 8
  %57 = icmp slt i64 %56, 0
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @str.20, i64 0, i64 0))
  br label %149

61:                                               ; preds = %52
  %62 = call i32 @enc_wolfSSL_CTX_use_certificate_chain_buffer_format(i64 %0, i32* nonnull %4, i64 %56, i8* getelementptr inbounds ([1313 x i8], [1313 x i8]* @client_cert_der_2048, i64 0, i64 0), i64 1313, i32 2) #13
  store i32 %62, i32* %2, align 4, !tbaa !11
  %63 = icmp ne i32 %62, 0
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 1
  %66 = select i1 %63, i1 true, i1 %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([60 x i8], [60 x i8]* @str.19, i64 0, i64 0))
  br label %149

69:                                               ; preds = %61
  %70 = load i64, i64* %6, align 8, !tbaa !40
  %71 = call i32 @enc_wolfSSL_CTX_use_PrivateKey_buffer(i64 %0, i32* nonnull %4, i64 %70, i8* getelementptr inbounds ([1192 x i8], [1192 x i8]* @client_key_der_2048, i64 0, i64 0), i64 1192, i32 2) #13
  store i32 %71, i32* %2, align 4, !tbaa !11
  %72 = icmp ne i32 %71, 0
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 1
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.18, i64 0, i64 0))
  br label %149

78:                                               ; preds = %69
  %79 = load i64, i64* %6, align 8, !tbaa !40
  %80 = call i32 @enc_wolfSSL_CTX_load_verify_buffer(i64 %0, i32* nonnull %4, i64 %79, i8* getelementptr inbounds ([1283 x i8], [1283 x i8]* @ca_cert_der_2048, i64 0, i64 0), i64 1283, i32 2) #13
  store i32 %80, i32* %2, align 4, !tbaa !11
  %81 = icmp ne i32 %80, 0
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 1
  %84 = select i1 %81, i1 true, i1 %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str.17, i64 0, i64 0))
  br label %149

87:                                               ; preds = %78
  %88 = load i64, i64* %6, align 8, !tbaa !40
  %89 = call i32 @enc_wolfSSL_new(i64 %0, i64* nonnull %7, i64 %88) #13
  store i32 %89, i32* %2, align 4, !tbaa !11
  %90 = icmp ne i32 %89, 0
  %91 = load i64, i64* %7, align 8
  %92 = icmp slt i64 %91, 0
  %93 = select i1 %90, i1 true, i1 %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str.16, i64 0, i64 0))
  br label %149

96:                                               ; preds = %87
  %97 = call i32 @enc_wolfSSL_set_fd(i64 %0, i32* nonnull %4, i64 %91, i32 %18) #13
  store i32 %97, i32* %2, align 4, !tbaa !11
  %98 = icmp ne i32 %97, 0
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 1
  %101 = select i1 %98, i1 true, i1 %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @str.15, i64 0, i64 0))
  br label %149

104:                                              ; preds = %96
  %105 = load i64, i64* %7, align 8, !tbaa !40
  %106 = call i32 @enc_wolfSSL_connect(i64 %0, i32* nonnull %4, i64 %105) #13
  store i32 %106, i32* %2, align 4, !tbaa !11
  %107 = icmp ne i32 %106, 0
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 1
  %110 = select i1 %107, i1 true, i1 %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str.22, i64 0, i64 0))
  br label %149

113:                                              ; preds = %104
  %114 = load i64, i64* %7, align 8, !tbaa !40
  %115 = call i64 @strlen(i8* noundef nonnull %16) #15
  %116 = trunc i64 %115 to i32
  %117 = call i32 @enc_wolfSSL_write(i64 %0, i32* nonnull %4, i64 %114, i8* nonnull %16, i32 %116) #13
  store i32 %117, i32* %2, align 4, !tbaa !11
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load i32, i32* %4, align 4, !tbaa !11
  %121 = sext i32 %120 to i64
  %122 = call i64 @strlen(i8* noundef nonnull %16) #15
  %123 = icmp eq i64 %122, %121
  br i1 %123, label %129, label %124

124:                                              ; preds = %119, %113
  %125 = load i64, i64* %7, align 8, !tbaa !40
  %126 = call i32 @enc_wolfSSL_get_error(i64 %0, i32* nonnull %4, i64 %125, i32 0) #13
  store i32 %126, i32* %2, align 4, !tbaa !11
  %127 = load i32, i32* %4, align 4, !tbaa !11
  %128 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %127)
  br label %149

129:                                              ; preds = %119
  %130 = load i64, i64* %7, align 8, !tbaa !40
  %131 = call i32 @enc_wolfSSL_read(i64 %0, i32* nonnull %4, i64 %130, i8* nonnull %17, i32 4096) #13
  store i32 %131, i32* %2, align 4, !tbaa !11
  %132 = icmp ne i32 %131, 0
  %133 = load i32, i32* %4, align 4
  %134 = icmp slt i32 %133, 0
  %135 = select i1 %132, i1 true, i1 %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load i64, i64* %7, align 8, !tbaa !40
  %138 = call i32 @enc_wolfSSL_get_error(i64 %0, i32* nonnull %4, i64 %137, i32 0) #13
  store i32 %138, i32* %2, align 4, !tbaa !11
  %139 = load i32, i32* %4, align 4, !tbaa !11
  %140 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %139)
  br label %149

141:                                              ; preds = %129
  %142 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %17)
  %143 = load i64, i64* %7, align 8, !tbaa !40
  %144 = call i32 @enc_wolfSSL_free(i64 %0, i64 %143) #13
  %145 = load i64, i64* %6, align 8, !tbaa !40
  %146 = call i32 @enc_wolfSSL_CTX_free(i64 %0, i64 %145) #13
  %147 = call i32 @enc_wolfSSL_Cleanup(i64 %0, i32* nonnull %4) #13
  %148 = load i32, i32* %4, align 4, !tbaa !11
  br label %149

149:                                              ; preds = %141, %136, %124, %111, %102, %94, %85, %76, %67, %59, %50, %41, %33, %20
  %150 = phi i32 [ 1, %20 ], [ 1, %33 ], [ 1, %41 ], [ 1, %50 ], [ 1, %59 ], [ 1, %67 ], [ 1, %76 ], [ 1, %85 ], [ 1, %94 ], [ 1, %102 ], [ 1, %111 ], [ 1, %124 ], [ 1, %136 ], [ %148, %141 ]
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %17) #13
  call void @llvm.lifetime.end.p0i8(i64 15, i8* nonnull %16) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #13
  ret i32 %150
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @inet_pton(i32, i8*, i8*) local_unnamed_addr #11

declare i32 @connect(i32, %struct.sockaddr*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @server_connect(i64 %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #13
  %12 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #13
  %13 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #13
  %14 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #13
  store i32 16, i32* %5, align 4, !tbaa !11
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %15) #13
  %16 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #13
  store i32 0, i32* %7, align 4, !tbaa !11
  %17 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #13
  %18 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #13
  %19 = bitcast i64* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #13
  %20 = call i32 @enc_wolfSSL_Init(i64 %0, i32* nonnull %2) #13
  %21 = call i32 @enc_wolfSSL_Debugging_OFF(i64 %0) #13
  %22 = call i32 @socket(i32 2, i32 1, i32 0) #13
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !105
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1.25, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %25) #16
  br label %133

27:                                               ; preds = %1
  %28 = call i32 @enc_wolfTLSv1_2_server_method(i64 %0, i64* nonnull %10) #13
  store i32 %28, i32* %2, align 4, !tbaa !11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @str.24, i64 0, i64 0))
  br label %133

32:                                               ; preds = %27
  %33 = load i64, i64* %10, align 8, !tbaa !40
  %34 = call i32 @enc_wolfSSL_CTX_new(i64 %0, i64* nonnull %8, i64 %33) #13
  store i32 %34, i32* %2, align 4, !tbaa !11
  %35 = icmp ne i32 %34, 0
  %36 = load i64, i64* %8, align 8
  %37 = icmp slt i64 %36, 0
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @str.23, i64 0, i64 0))
  br label %133

41:                                               ; preds = %32
  %42 = call i32 @enc_wolfSSL_CTX_use_certificate_buffer(i64 %0, i32* nonnull %7, i64 %36, i8* getelementptr inbounds ([1260 x i8], [1260 x i8]* @server_cert_der_2048, i64 0, i64 0), i64 1260, i32 2) #13
  store i32 %42, i32* %2, align 4, !tbaa !11
  %43 = icmp ne i32 %42, 0
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 1
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([60 x i8], [60 x i8]* @str.22.26, i64 0, i64 0))
  br label %133

49:                                               ; preds = %41
  %50 = load i64, i64* %8, align 8, !tbaa !40
  %51 = call i32 @enc_wolfSSL_CTX_use_PrivateKey_buffer(i64 %0, i32* nonnull %7, i64 %50, i8* getelementptr inbounds ([1193 x i8], [1193 x i8]* @server_key_der_2048, i64 0, i64 0), i64 1193, i32 2) #13
  store i32 %51, i32* %2, align 4, !tbaa !11
  %52 = icmp ne i32 %51, 0
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 1
  %55 = select i1 %52, i1 true, i1 %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.21.27, i64 0, i64 0))
  br label %133

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 3, i64 0
  %60 = bitcast i8* %59 to i64*
  store i64 0, i64* %60, align 4
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 0
  store i16 2, i16* %61, align 4, !tbaa !112
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 1
  store i16 26411, i16* %62, align 2, !tbaa !116
  %63 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 2, i32 0
  store i32 0, i32* %63, align 4, !tbaa !117
  %64 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %65 = call i32 @bind(i32 %22, %struct.sockaddr* nonnull %64, i32 16) #13
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !105
  %69 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6.28, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %68) #16
  br label %133

70:                                               ; preds = %58
  %71 = call i32 @listen(i32 %22, i32 5) #13
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !105
  %75 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %74) #16
  br label %133

76:                                               ; preds = %70
  %77 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str.29, i64 0, i64 0))
  %78 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %79 = call i32 @accept(i32 %22, %struct.sockaddr* nonnull %78, i32* nonnull %5) #13
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !105
  %83 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %82) #16
  br label %133

84:                                               ; preds = %76
  %85 = load i64, i64* %8, align 8, !tbaa !40
  %86 = call i32 @enc_wolfSSL_new(i64 %0, i64* nonnull %9, i64 %85) #13
  store i32 %86, i32* %2, align 4, !tbaa !11
  %87 = icmp ne i32 %86, 0
  %88 = load i64, i64* %9, align 8
  %89 = icmp slt i64 %88, 0
  %90 = select i1 %87, i1 true, i1 %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str.20.30, i64 0, i64 0))
  br label %133

93:                                               ; preds = %84
  %94 = call i32 @enc_wolfSSL_set_fd(i64 %0, i32* nonnull %7, i64 %88, i32 %79) #13
  store i32 %94, i32* %2, align 4, !tbaa !11
  %95 = icmp ne i32 %94, 0
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 1
  %98 = select i1 %95, i1 true, i1 %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @str.19.31, i64 0, i64 0))
  br label %133

101:                                              ; preds = %93
  %102 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @str.16.32, i64 0, i64 0))
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(256) %15, i8 0, i64 256, i1 false)
  %103 = load i64, i64* %9, align 8, !tbaa !40
  %104 = call i32 @enc_wolfSSL_read(i64 %0, i32* nonnull %7, i64 %103, i8* nonnull %15, i32 255) #13
  store i32 %104, i32* %2, align 4, !tbaa !11
  %105 = icmp ne i32 %104, 0
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %106, -1
  %108 = select i1 %105, i1 true, i1 %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @str.18.33, i64 0, i64 0))
  br label %133

111:                                              ; preds = %101
  %112 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14.34, i64 0, i64 0), i8* nonnull %15)
  %113 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(234) %113, i8 0, i64 234, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(22) %15, i8* noundef nonnull align 1 dereferenceable(22) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i64 22, i1 false)
  %114 = call i64 @strnlen(i8* nonnull %15, i64 256) #15
  %115 = load i64, i64* %9, align 8, !tbaa !40
  %116 = trunc i64 %114 to i32
  %117 = call i32 @enc_wolfSSL_write(i64 %0, i32* nonnull %7, i64 %115, i8* nonnull %15, i32 %116) #13
  store i32 %117, i32* %2, align 4, !tbaa !11
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load i32, i32* %7, align 4, !tbaa !11
  %121 = sext i32 %120 to i64
  %122 = icmp eq i64 %114, %121
  br i1 %122, label %125, label %123

123:                                              ; preds = %119, %111
  %124 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.17.36, i64 0, i64 0))
  br label %133

125:                                              ; preds = %119
  %126 = load i64, i64* %9, align 8, !tbaa !40
  %127 = call i32 @enc_wolfSSL_free(i64 %0, i64 %126) #13
  %128 = call i32 @close(i32 %79) #13
  %129 = load i64, i64* %8, align 8, !tbaa !40
  %130 = call i32 @enc_wolfSSL_CTX_free(i64 %0, i64 %129) #13
  store i32 %130, i32* %2, align 4, !tbaa !11
  %131 = call i32 @enc_wolfSSL_Cleanup(i64 %0, i32* nonnull %7) #13
  store i32 %131, i32* %2, align 4, !tbaa !11
  %132 = call i32 @close(i32 %22) #13
  br label %133

133:                                              ; preds = %125, %123, %109, %99, %91, %81, %73, %67, %56, %47, %39, %30, %24
  %134 = phi i32 [ -1, %24 ], [ 1, %30 ], [ 1, %39 ], [ 1, %47 ], [ 1, %56 ], [ -1, %67 ], [ -1, %73 ], [ -1, %81 ], [ 1, %91 ], [ 1, %99 ], [ 1, %109 ], [ 1, %123 ], [ 0, %125 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #13
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %15) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #13
  ret i32 %134
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @listen(i32, i32) local_unnamed_addr #11

declare i32 @accept(i32, %struct.sockaddr*, i32*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strnlen(i8*, i64) local_unnamed_addr #12

declare i32 @close(i32) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { cold }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}

!0 = !{!"clang version 13.0.1"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!5, !9, i64 8}
!5 = !{!"ms_wc_test_t", !6, i64 0, !9, i64 8}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!5, !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !9, i64 0}
!13 = !{!"ms_ocall_print_string_t", !9, i64 0}
!14 = !{!15, !9, i64 0}
!15 = !{!"ms_ocall_current_time_t", !9, i64 0}
!16 = !{!17, !9, i64 0}
!17 = !{!"ms_ocall_low_res_time_t", !9, i64 0}
!18 = !{!19, !6, i64 12}
!19 = !{!"ms_ocall_recv_t", !20, i64 0, !6, i64 8, !6, i64 12, !9, i64 16, !20, i64 24, !6, i64 32}
!20 = !{!"long", !7, i64 0}
!21 = !{!19, !9, i64 16}
!22 = !{!19, !20, i64 24}
!23 = !{!19, !6, i64 32}
!24 = !{!19, !20, i64 0}
!25 = !{!19, !6, i64 8}
!26 = !{!27, !6, i64 12}
!27 = !{!"ms_ocall_send_t", !20, i64 0, !6, i64 8, !6, i64 12, !9, i64 16, !20, i64 24, !6, i64 32}
!28 = !{!27, !9, i64 16}
!29 = !{!27, !20, i64 24}
!30 = !{!27, !6, i64 32}
!31 = !{!27, !20, i64 0}
!32 = !{!27, !6, i64 8}
!33 = !{!34, !9, i64 8}
!34 = !{!"ms_wc_benchmark_test_t", !6, i64 0, !9, i64 8}
!35 = !{!34, !6, i64 0}
!36 = !{!37, !6, i64 0}
!37 = !{!"ms_enc_wolfSSL_Init_t", !6, i64 0}
!38 = !{!39, !20, i64 0}
!39 = !{!"ms_enc_wolfTLSv1_2_client_method_t", !20, i64 0}
!40 = !{!20, !20, i64 0}
!41 = !{!42, !20, i64 0}
!42 = !{!"ms_enc_wolfTLSv1_2_server_method_t", !20, i64 0}
!43 = !{!44, !20, i64 8}
!44 = !{!"ms_enc_wolfSSL_CTX_new_t", !20, i64 0, !20, i64 8}
!45 = !{!44, !20, i64 0}
!46 = !{!47, !20, i64 8}
!47 = !{!"ms_enc_wolfSSL_CTX_use_PrivateKey_buffer_t", !6, i64 0, !20, i64 8, !9, i64 16, !20, i64 24, !6, i64 32}
!48 = !{!47, !9, i64 16}
!49 = !{!47, !20, i64 24}
!50 = !{!47, !6, i64 32}
!51 = !{!47, !6, i64 0}
!52 = !{!53, !20, i64 8}
!53 = !{!"ms_enc_wolfSSL_CTX_load_verify_buffer_t", !6, i64 0, !20, i64 8, !9, i64 16, !20, i64 24, !6, i64 32}
!54 = !{!53, !9, i64 16}
!55 = !{!53, !20, i64 24}
!56 = !{!53, !6, i64 32}
!57 = !{!53, !6, i64 0}
!58 = !{!59, !20, i64 8}
!59 = !{!"ms_enc_wolfSSL_CTX_use_certificate_chain_buffer_format_t", !6, i64 0, !20, i64 8, !9, i64 16, !20, i64 24, !6, i64 32}
!60 = !{!59, !9, i64 16}
!61 = !{!59, !20, i64 24}
!62 = !{!59, !6, i64 32}
!63 = !{!59, !6, i64 0}
!64 = !{!65, !20, i64 8}
!65 = !{!"ms_enc_wolfSSL_CTX_use_certificate_buffer_t", !6, i64 0, !20, i64 8, !9, i64 16, !20, i64 24, !6, i64 32}
!66 = !{!65, !9, i64 16}
!67 = !{!65, !20, i64 24}
!68 = !{!65, !6, i64 32}
!69 = !{!65, !6, i64 0}
!70 = !{!71, !20, i64 8}
!71 = !{!"ms_enc_wolfSSL_CTX_set_cipher_list_t", !6, i64 0, !20, i64 8, !9, i64 16, !20, i64 24}
!72 = !{!71, !9, i64 16}
!73 = !{!71, !20, i64 24}
!74 = !{!71, !6, i64 0}
!75 = !{!76, !20, i64 8}
!76 = !{!"ms_enc_wolfSSL_new_t", !20, i64 0, !20, i64 8}
!77 = !{!76, !20, i64 0}
!78 = !{!79, !20, i64 8}
!79 = !{!"ms_enc_wolfSSL_set_fd_t", !6, i64 0, !20, i64 8, !6, i64 16}
!80 = !{!79, !6, i64 16}
!81 = !{!79, !6, i64 0}
!82 = !{!83, !20, i64 8}
!83 = !{!"ms_enc_wolfSSL_connect_t", !6, i64 0, !20, i64 8}
!84 = !{!83, !6, i64 0}
!85 = !{!86, !20, i64 8}
!86 = !{!"ms_enc_wolfSSL_write_t", !6, i64 0, !20, i64 8, !9, i64 16, !6, i64 24}
!87 = !{!86, !9, i64 16}
!88 = !{!86, !6, i64 24}
!89 = !{!86, !6, i64 0}
!90 = !{!91, !20, i64 8}
!91 = !{!"ms_enc_wolfSSL_get_error_t", !6, i64 0, !20, i64 8, !6, i64 16}
!92 = !{!91, !6, i64 16}
!93 = !{!91, !6, i64 0}
!94 = !{!95, !20, i64 8}
!95 = !{!"ms_enc_wolfSSL_read_t", !6, i64 0, !20, i64 8, !9, i64 16, !6, i64 24}
!96 = !{!95, !9, i64 16}
!97 = !{!95, !6, i64 24}
!98 = !{!95, !6, i64 0}
!99 = !{!100, !20, i64 0}
!100 = !{!"ms_enc_wolfSSL_free_t", !20, i64 0}
!101 = !{!102, !20, i64 0}
!102 = !{!"ms_enc_wolfSSL_CTX_free_t", !20, i64 0}
!103 = !{!104, !6, i64 0}
!104 = !{!"ms_enc_wolfSSL_Cleanup_t", !6, i64 0}
!105 = !{!9, !9, i64 0}
!106 = !{!7, !7, i64 0}
!107 = !{!108, !20, i64 0}
!108 = !{!"timeval", !20, i64 0, !20, i64 8}
!109 = !{!108, !20, i64 8}
!110 = !{!111, !111, i64 0}
!111 = !{!"double", !7, i64 0}
!112 = !{!113, !114, i64 0}
!113 = !{!"sockaddr_in", !114, i64 0, !114, i64 2, !115, i64 4, !7, i64 8}
!114 = !{!"short", !7, i64 0}
!115 = !{!"in_addr", !6, i64 0}
!116 = !{!113, !114, i64 2}
!117 = !{!113, !6, i64 4}
