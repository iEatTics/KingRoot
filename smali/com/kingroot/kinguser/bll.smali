.class public final Lcom/kingroot/kinguser/bll;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bzS:Ljava/security/interfaces/RSAPublicKey;


# instance fields
.field private bzT:Ljava/util/Properties;


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

    sput-object v0, Lcom/kingroot/kinguser/bll;->bzS:Ljava/security/interfaces/RSAPublicKey;
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
    sput-object v2, Lcom/kingroot/kinguser/bll;->bzS:Ljava/security/interfaces/RSAPublicKey;

    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 56
    sput-object v2, Lcom/kingroot/kinguser/bll;->bzS:Ljava/security/interfaces/RSAPublicKey;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/Properties;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/kingroot/kinguser/bll;->bzT:Ljava/util/Properties;

    .line 64
    return-void
.end method

.method private static b(Ljava/io/InputStream;)I
    .locals 2

    .prologue
    .line 108
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

.method public static b(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/kingroot/kinguser/bll;
    .locals 7

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .line 71
    const/4 v1, 0x0

    .line 73
    :try_start_0
    invoke-static {v3}, Lcom/kingroot/kinguser/bll;->b(Ljava/io/InputStream;)I

    move-result v0

    const v2, 0x5443524b

    if-eq v0, v2, :cond_0

    .line 74
    new-instance v0, Ljava/util/zip/DataFormatException;

    const-string v2, "Not a kingroot sdk certification file"

    invoke-direct {v0, v2}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 103
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    throw v0

    .line 77
    :cond_0
    :try_start_1
    invoke-static {v3}, Lcom/kingroot/kinguser/bll;->b(Ljava/io/InputStream;)I

    move-result v0

    .line 78
    invoke-static {v3}, Lcom/kingroot/kinguser/bll;->b(Ljava/io/InputStream;)I

    move-result v2

    .line 79
    new-array v4, v2, [B

    .line 80
    new-array v5, v0, [B

    .line 81
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    .line 82
    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2}, Ljava/util/zip/Inflater;-><init>()V

    .line 83
    invoke-virtual {v2, v4}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 84
    invoke-virtual {v2, v5}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v6

    if-eq v0, v6, :cond_1

    .line 85
    new-instance v0, Ljava/util/zip/DataFormatException;

    const-string v2, "Unexpected data length"

    invoke-direct {v0, v2}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    .line 88
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 89
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V

    .line 91
    invoke-static {v3}, Lcom/kingroot/kinguser/bll;->b(Ljava/io/InputStream;)I

    move-result v1

    .line 92
    new-array v1, v1, [B

    .line 93
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 94
    const-string v5, "SHA1WithRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 95
    sget-object v6, Lcom/kingroot/kinguser/bll;->bzS:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v5, v6}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 96
    invoke-virtual {v5, v4}, Ljava/security/Signature;->update([B)V

    .line 97
    invoke-virtual {v5, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Bad signature"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0

    .line 100
    :cond_2
    new-instance v1, Lcom/kingroot/kinguser/bll;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/bll;-><init>(Ljava/util/Properties;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 103
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 100
    return-object v1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 161
    const/16 v1, 0x40

    invoke-static {p0, v0, v1}, Lcom/kingroot/kinguser/bmu;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 162
    const/4 v1, 0x0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 165
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 167
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 169
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmm;->R([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 173
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 176
    :goto_0
    return-object v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    :try_start_1
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 174
    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-static {p1}, Lcom/kingroot/kinguser/bll;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 134
    if-nez v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/bll;->bzT:Ljava/util/Properties;

    const-string v4, "package_name"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 141
    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/kingroot/kinguser/bll;->bzT:Ljava/util/Properties;

    const-string v3, "cert_md5"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 146
    if-eqz v1, :cond_0

    .line 151
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/bll;->bzT:Ljava/util/Properties;

    const-string v1, "channel_id"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
