.class public Lcom/kingroot/kinguser/aaz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static YE:Ljava/lang/String;


# direct methods
.method private static a(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 339
    if-nez p0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-object v0

    .line 342
    :cond_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .line 343
    if-eqz v1, :cond_0

    .line 347
    invoke-static {v1}, Lcom/kingroot/kinguser/aah;->E([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/pm/Signature;)Ljava/security/cert/X509Certificate;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 320
    if-nez p0, :cond_0

    .line 328
    :goto_0
    return-object v0

    .line 325
    :cond_0
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 326
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 327
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 330
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static b(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 85
    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/kingroot/kinguser/aaz;->a(Landroid/content/pm/Signature;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 93
    invoke-static {v1}, Lcom/kingroot/kinguser/aaz;->a(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static ca(I)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 381
    const-string v1, ""

    .line 382
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    .line 383
    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    invoke-static {}, Lcom/kingroot/kinguser/aaz;->qz()Ljava/lang/String;

    move-result-object v2

    .line 386
    const-string v3, "export CLASSPATH=%s && /system/bin/app_process /system/bin %s %d"

    .line 387
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    const/4 v2, 0x1

    const-string v6, "com.kingroot.kinguser.TellMe"

    aput-object v6, v5, v2

    const/4 v2, 0x2

    .line 388
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 387
    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 399
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static dZ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    :goto_0
    return-object v0

    .line 66
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/aaz;->ed(Ljava/lang/String;)Landroid/content/pm/Signature;

    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/kingroot/kinguser/aaz;->a(Landroid/content/pm/Signature;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/kingroot/kinguser/aaz;->a(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static ea(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    :goto_0
    return-object v0

    .line 178
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/aaz;->eb(Ljava/lang/String;)Landroid/content/pm/Signature;

    move-result-object v1

    .line 180
    invoke-static {v1}, Lcom/kingroot/kinguser/aaz;->a(Landroid/content/pm/Signature;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 182
    invoke-static {v1}, Lcom/kingroot/kinguser/aaz;->a(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static eb(Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-object v1

    .line 212
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v2, 0xf

    if-le v0, v2, :cond_2

    .line 215
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 217
    const/16 v2, 0x40

    invoke-virtual {v0, p0, v2}, Lcom/kingroot/kinguser/zh;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_3

    .line 220
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_1
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 231
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 225
    goto :goto_1

    .line 227
    :cond_2
    invoke-static {p0}, Lcom/kingroot/kinguser/aaz;->ec(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private static ec(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 7

    .prologue
    .line 245
    :try_start_0
    const-string v0, "android.content.pm.PackageParser"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 246
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 247
    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 249
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 250
    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 254
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 255
    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 259
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    .line 260
    const/4 v4, 0x0

    const-class v5, Ljava/io/File;

    aput-object v5, v3, v4

    .line 261
    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 262
    const/4 v4, 0x2

    const-class v5, Landroid/util/DisplayMetrics;

    aput-object v5, v3, v4

    .line 263
    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 264
    const-string v4, "parsePackage"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 266
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 267
    const/4 v5, 0x0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    .line 268
    const/4 v5, 0x1

    aput-object p0, v4, v5

    .line 269
    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 270
    const/4 v2, 0x3

    const/16 v5, 0x40

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 271
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 274
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    .line 275
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 276
    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 277
    const-string v4, "collectCertificates"

    .line 278
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 281
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 282
    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 283
    const/4 v4, 0x1

    const/16 v5, 0x40

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 284
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mSignatures"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    check-cast v0, [Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    return-object v0

    .line 289
    :catch_0
    move-exception v0

    .line 293
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ed(Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 354
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-object v0

    .line 361
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p0, v2}, Lcom/kingroot/kinguser/zh;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 365
    :goto_1
    if-eqz v1, :cond_2

    .line 366
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 369
    :goto_2
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 370
    const/4 v0, 0x0

    aget-object v0, v1, v0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_2
.end method

.method public static declared-synchronized qy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    const-class v1, Lcom/kingroot/kinguser/aaz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aaz;->YE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aaz;->YE:Ljava/lang/String;

    .line 199
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/aaz;->YE:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static qz()Ljava/lang/String;
    .locals 4

    .prologue
    .line 408
    const/4 v1, 0x0

    .line 410
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/kinguser/zl;->pw()Ljava/io/File;

    move-result-object v2

    const-string v3, "tm.dex"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 413
    :try_start_0
    const-string v0, "dtm"

    const-string v2, "tm.dex"

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/rs;->y(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/kinguser/zl;->pw()Ljava/io/File;

    move-result-object v2

    const-string v3, "tm.dex"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 421
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 425
    :goto_1
    return-object v0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
