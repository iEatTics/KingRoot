.class public final Ltmsdk/common/TMSDKContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bVU:I

.field private static bXM:Landroid/content/Context;

.field private static bXN:Ljava/lang/Class;

.field private static bXO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 235
    sput-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "boa_libname"

    const-string v2, "boa-1.0.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "virus_scan_libname"

    const-string v2, "Tms2-Ams-Jni-1.4.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "sdk_libname"

    const-string v2, "Tmsdk-2.1.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "spirit_libname"

    const-string v2, "libspirit-1.0.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "pre_lib_path"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "login_host_url"

    const-string v2, "sync.3g.qq.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "su_cmd"

    const-string v2, "su"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "softversion"

    const-string v2, "2.1.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "build"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "host_url"

    const-string v2, "http://pmir.3g.qq.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "is_t"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "lc"

    const-string v2, "0CD0AD809CBCBF41"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "channel"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "platform"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "pversion"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "cversion"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "hotfix"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "auto_report"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "sub_platform"

    const-string v2, "201"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "product"

    const-string v2, "13"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 275
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "athena_name"

    const-string v2, "athena_v5.dat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :goto_0
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "pkgkey"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "app_build_type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-void

    .line 277
    :cond_0
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v1, "athena_name"

    const-string v2, "athena_v4.dat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 506
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajY()V

    .line 507
    invoke-static {p0, p1}, Ltmsdk/common/TMSDKContext;->doRegisterNatives(ILjava/lang/Class;)I

    move-result v0

    .line 508
    if-eqz v0, :cond_0

    .line 509
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to register "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;ILcom/kingroot/kinguser/cdy;Lcom/kingroot/kinguser/cea;)V
    .locals 5

    .prologue
    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ltmsdk/common/TMSDKContext;->bXM:Landroid/content/Context;

    .line 383
    sput-object p1, Ltmsdk/common/TMSDKContext;->bXN:Ljava/lang/Class;

    .line 384
    sput p2, Ltmsdk/common/TMSDKContext;->bVU:I

    .line 387
    const/4 v0, 0x1

    .line 388
    if-eqz p4, :cond_0

    .line 389
    iget-boolean v0, p4, Lcom/kingroot/kinguser/cea;->bXL:Z

    .line 391
    :cond_0
    if-eqz v0, :cond_1

    .line 393
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bwg;->aiJ()Lcom/kingroot/kinguser/bwg;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bwg;->bT(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 402
    :cond_1
    :goto_0
    const-class v1, Ltmsdk/common/TMSDKContext;

    monitor-enter v1

    .line 404
    :try_start_1
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v2, "channel"

    const-string v3, "null"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v2, "root_got_action"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ACTION_ROOT_GOT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    const-string v2, "root_daemon_start_action"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ACTION_ROOT_DAEMON_START"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    if-eqz p3, :cond_2

    .line 422
    new-instance v0, Ljava/util/HashMap;

    sget-object v2, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p3, v0}, Lcom/kingroot/kinguser/cdy;->d(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    .line 424
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajX()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 431
    :goto_1
    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 431
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static akS()Landroid/content/Context;
    .locals 1

    .prologue
    .line 463
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXM:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static akT()I
    .locals 1

    .prologue
    .line 467
    sget v0, Ltmsdk/common/TMSDKContext;->bVU:I

    return v0
.end method

.method public static checkLisence()Z
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x1

    return v0
.end method

.method private static native doRegisterNatives(ILjava/lang/Class;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation
.end method

.method public static nF(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 305
    const-class v1, Ltmsdk/common/TMSDKContext;

    monitor-enter v1

    .line 306
    :try_start_0
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static nG(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 332
    const-class v1, Ltmsdk/common/TMSDKContext;

    monitor-enter v1

    .line 333
    :try_start_0
    sget-object v0, Ltmsdk/common/TMSDKContext;->bXO:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 336
    const-string v2, "softversion"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    const-string v2, "0.0.0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    :cond_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v2

    .line 338
    invoke-static {}, Lcom/kingroot/kinguser/ceb;->akU()Lcom/kingroot/kinguser/cga;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    invoke-interface {v3, v2, v4}, Lcom/kingroot/kinguser/cga;->Y(Ljava/lang/String;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v2

    .line 339
    if-eqz v2, :cond_1

    .line 340
    invoke-virtual {v2}, Ltmsdk/common/module/software/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 343
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
