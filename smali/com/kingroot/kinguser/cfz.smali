.class public final Lcom/kingroot/kinguser/cfz;
.super Lcom/kingroot/kinguser/cec;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cga;


# instance fields
.field private cdZ:Ljava/security/cert/CertificateFactory;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/kingroot/kinguser/cec;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/kingroot/kinguser/cfz;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 51
    iput-object v0, p0, Lcom/kingroot/kinguser/cfz;->mContext:Landroid/content/Context;

    .line 56
    iput-object v0, p0, Lcom/kingroot/kinguser/cfz;->cdZ:Ljava/security/cert/CertificateFactory;

    return-void
.end method

.method private a(Landroid/content/pm/PackageInfo;Ltmsdk/common/module/software/AppEntity;)V
    .locals 2

    .prologue
    .line 285
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/cfz;->b(Landroid/content/pm/Signature;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 290
    if-eqz v0, :cond_0

    .line 292
    const/4 v1, 0x0

    .line 294
    :try_start_0
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 295
    invoke-static {v0}, Lcom/kingroot/kinguser/cel;->Z([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 299
    :goto_1
    const-string v1, "signatureCermMD5"

    invoke-virtual {p2, v1, v0}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method private a(Landroid/content/pm/PackageInfo;Ltmsdk/common/module/software/AppEntity;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 241
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    .line 246
    const-string v0, "pkgName"

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v4}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    const-string v0, "appName"

    iget-object v4, p0, Lcom/kingroot/kinguser/cfz;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    const-string v4, "isSystem"

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    const-string v4, "uid"

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    :cond_2
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_4

    .line 252
    const-string v0, "pkgName"

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v4}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    const-string v0, "isSystem"

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    const-string v0, "uid"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    :cond_4
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_5

    .line 257
    const-string v0, "icon"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/kingroot/kinguser/cfz;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    :cond_5
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_6

    .line 260
    const-string v0, "version"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    const-string v0, "versionCode"

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    const-string v1, "size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    const-string v1, "lastModified"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    :cond_6
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_7

    .line 267
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/cfz;->a(Landroid/content/pm/PackageInfo;Ltmsdk/common/module/software/AppEntity;)V

    .line 269
    :cond_7
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_8

    .line 270
    const-string v0, "permissions"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    :cond_8
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "apkPath"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    const-string v0, "isApk"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 248
    goto/16 :goto_1

    :cond_a
    move v0, v3

    .line 249
    goto/16 :goto_2

    :cond_b
    move v1, v2

    .line 253
    goto/16 :goto_3
.end method

.method private b(Landroid/content/pm/Signature;)Ljava/security/cert/Certificate;
    .locals 3

    .prologue
    .line 317
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 318
    const/4 v1, 0x0

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfz;->cdZ:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 334
    :goto_0
    return-object v0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 321
    :catch_1
    move-exception v0

    .line 322
    :try_start_2
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    .line 331
    goto :goto_0

    .line 329
    :catch_2
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 331
    goto :goto_0

    .line 323
    :catch_3
    move-exception v0

    .line 324
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 326
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v1

    .line 331
    goto :goto_0

    .line 329
    :catch_4
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 331
    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    .line 328
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 331
    :goto_1
    throw v0

    .line 329
    :catch_5
    move-exception v1

    .line 330
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private ls(I)I
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    .line 185
    const/16 v0, 0x40

    .line 187
    :cond_0
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1

    .line 188
    or-int/lit16 v0, v0, 0x1000

    .line 190
    :cond_1
    return v0
.end method


# virtual methods
.method public final I(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingroot/kinguser/cfz;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cfz;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 62
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cfz;->cdZ:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final Y(Ljava/lang/String;I)Ltmsdk/common/module/software/AppEntity;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v0}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 205
    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p0, v0, p2}, Lcom/kingroot/kinguser/cfz;->a(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;
    .locals 2

    .prologue
    .line 220
    const-string v0, "pkgName"

    invoke-virtual {p1, v0}, Ltmsdk/common/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/cfz;->ls(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/cfz;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0, v0, p1, p2}, Lcom/kingroot/kinguser/cfz;->a(Landroid/content/pm/PackageInfo;Ltmsdk/common/module/software/AppEntity;I)V

    .line 225
    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public final getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 628
    const/4 v1, 0x0

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfz;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 631
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 635
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfz;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
