.class public Lcom/kingroot/kinguser/ev;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static pB:Ljava/security/interfaces/RSAPublicKey;


# instance fields
.field private pC:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDCTrqGfyNYDKZEFfvXuYOu9mSCNu6ri10PMG2xJ5sBuUN2OFBT1W5n/dyUkR+Xgnd6w9arSFnU/8fpiP4DRZPL7pkmgzJvjoPqrreXO4nGRQtVbp6sD/gWCKsTlJ9bk01W32gfSOrCNch8BQJO8nE01ffnWmyRiqVTbuh9KEGgcwIDAQAB"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 47
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 50
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    sput-object v0, Lcom/kingroot/kinguser/ev;->pB:Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    .line 53
    sput-object v2, Lcom/kingroot/kinguser/ev;->pB:Ljava/security/interfaces/RSAPublicKey;

    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 56
    sput-object v2, Lcom/kingroot/kinguser/ev;->pB:Ljava/security/interfaces/RSAPublicKey;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/Properties;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/kingroot/kinguser/ev;->pC:Ljava/util/Properties;

    .line 63
    return-void
.end method

.method public static a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/kingroot/kinguser/ev;
    .locals 7

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .line 68
    const/4 v1, 0x0

    .line 70
    :try_start_0
    invoke-static {v3}, Lcom/kingroot/kinguser/ev;->b(Ljava/io/InputStream;)I

    move-result v0

    const v2, 0x5443524b

    if-eq v0, v2, :cond_0

    .line 71
    new-instance v0, Ljava/util/zip/DataFormatException;

    const-string v2, "Not a TPS sdk certification file"

    invoke-direct {v0, v2}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    .line 100
    invoke-static {v3}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    throw v0

    .line 74
    :cond_0
    :try_start_1
    invoke-static {v3}, Lcom/kingroot/kinguser/ev;->b(Ljava/io/InputStream;)I

    move-result v0

    .line 75
    invoke-static {v3}, Lcom/kingroot/kinguser/ev;->b(Ljava/io/InputStream;)I

    move-result v2

    .line 76
    new-array v4, v2, [B

    .line 77
    new-array v5, v0, [B

    .line 78
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    .line 79
    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2}, Ljava/util/zip/Inflater;-><init>()V

    .line 80
    invoke-virtual {v2, v4}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 81
    invoke-virtual {v2, v5}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v6

    if-eq v0, v6, :cond_1

    .line 82
    new-instance v0, Ljava/util/zip/DataFormatException;

    const-string v2, "Unexpected data length"

    invoke-direct {v0, v2}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    .line 85
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 86
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V

    .line 88
    invoke-static {v3}, Lcom/kingroot/kinguser/ev;->b(Ljava/io/InputStream;)I

    move-result v1

    .line 89
    new-array v1, v1, [B

    .line 90
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 91
    const-string v5, "SHA1WithRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 92
    sget-object v6, Lcom/kingroot/kinguser/ev;->pB:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v5, v6}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 93
    invoke-virtual {v5, v4}, Ljava/security/Signature;->update([B)V

    .line 94
    invoke-virtual {v5, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Bad signature"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0

    .line 97
    :cond_2
    new-instance v1, Lcom/kingroot/kinguser/ev;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/ev;-><init>(Ljava/util/Properties;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    invoke-static {v2}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    .line 100
    invoke-static {v3}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    return-object v1
.end method

.method private static b(Ljava/io/InputStream;)I
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 156
    const/16 v1, 0x40

    invoke-static {p0, v0, v1}, Lcom/kingroot/kinguser/ft;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 157
    const/4 v1, 0x0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 160
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 162
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 163
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/fs;->g([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 167
    invoke-static {v2}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    .line 170
    :goto_0
    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    :try_start_1
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    invoke-static {v2}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 168
    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/ev;->pC:Ljava/util/Properties;

    const-string v1, "cert_md5"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-static {p1}, Lcom/kingroot/kinguser/ev;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 131
    if-nez v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ev;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 136
    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ev;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 141
    if-eqz v1, :cond_0

    .line 146
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/ev;->pC:Ljava/util/Properties;

    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
