.class public Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;
.super Lcom/kingroot/common/entity/BaseEntity;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public appName:Ljava/lang/String;

.field public appSourceDir:Ljava/lang/String;

.field public appUid:J

.field public checkCacheFail:Z

.field public classify:I

.field public clearAction:I

.field public description:Ljava/lang/String;

.field public enable:I

.field public flag:I

.field public hasLauncherOrMain:I

.field public isPersonApp:Z

.field public packageName:Ljava/lang/String;

.field public percent:I

.field public pkgCertMd5:Ljava/lang/String;

.field public pkgLastModified:J

.field public pkgSize:J

.field public riskType:I

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 22
    invoke-direct {p0}, Lcom/kingroot/common/entity/BaseEntity;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->versionName:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appSourceDir:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->pkgCertMd5:Ljava/lang/String;

    .line 80
    iput v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->flag:I

    .line 81
    iput v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->hasLauncherOrMain:I

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->description:Ljava/lang/String;

    .line 87
    iput-boolean v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->checkCacheFail:Z

    .line 90
    iput v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    .line 91
    iput v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->percent:I

    .line 94
    iput v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->clearAction:I

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->riskType:I

    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;IZZLandroid/content/pm/ActivityInfo;)Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    new-instance v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    invoke-direct {v3}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;-><init>()V

    .line 102
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    .line 103
    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->versionCode:I

    .line 104
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->versionName:Ljava/lang/String;

    .line 107
    const/4 v2, -0x1

    .line 109
    :try_start_0
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 113
    :goto_0
    if-gez v2, :cond_3

    .line 114
    iput v5, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    .line 121
    :goto_1
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    .line 129
    iget-object v2, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p5, :cond_0

    iget v2, p5, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p5, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    .line 134
    :cond_0
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appSourceDir:Ljava/lang/String;

    .line 136
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    int-to-long v4, v2

    iput-wide v4, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appUid:J

    .line 137
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_5

    :goto_2
    iput-boolean v0, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    .line 139
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 140
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->pkgLastModified:J

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->pkgSize:J

    .line 148
    :cond_1
    iput p2, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    .line 150
    if-eqz p3, :cond_2

    .line 151
    invoke-static {p1}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->c(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->pkgCertMd5:Ljava/lang/String;

    .line 153
    :cond_2
    return-object v3

    .line 115
    :cond_3
    if-ne v2, v5, :cond_4

    .line 116
    iput v0, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    goto :goto_1

    .line 118
    :cond_4
    iput v1, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    goto :goto_1

    :cond_5
    move v0, v1

    .line 137
    goto :goto_2

    .line 110
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static a(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 182
    if-nez p0, :cond_1

    move-object v0, v1

    .line 204
    :cond_0
    :goto_0
    return-object v0

    .line 186
    :cond_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 189
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 190
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aah;->E([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 196
    if-eqz v2, :cond_0

    .line 198
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    .line 196
    if-eqz v2, :cond_2

    .line 198
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_1
    move-object v0, v1

    .line 204
    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 198
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 201
    :cond_3
    :goto_2
    throw v0

    .line 199
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public static c(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    .line 159
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 160
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->a(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 161
    :catch_0
    move-exception v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
