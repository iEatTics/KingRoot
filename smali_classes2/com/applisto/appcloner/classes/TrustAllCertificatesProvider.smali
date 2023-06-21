.class public Lcom/applisto/appcloner/classes/TrustAllCertificatesProvider;
.super Lcom/applisto/appcloner/classes/util/activity/AbstractContentProvider;
.source "TrustAllCertificatesProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/applisto/appcloner/classes/TrustAllCertificatesProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/TrustAllCertificatesProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/AbstractContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljavax/net/ssl/TrustManager;

    .line 28
    new-instance v2, Lcom/applisto/appcloner/classes/TrustAllCertificatesProvider$1;

    invoke-direct {v2, p0}, Lcom/applisto/appcloner/classes/TrustAllCertificatesProvider$1;-><init>(Lcom/applisto/appcloner/classes/TrustAllCertificatesProvider;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    :try_start_0
    const-string v2, "TLS"

    .line 48
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v3, 0x0

    .line 49
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v3, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 50
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 52
    sget-object v1, Lcom/applisto/appcloner/classes/TrustAllCertificatesProvider;->TAG:Ljava/lang/String;

    const-string v2, "onCreate; now trusting all certificates..."

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 54
    sget-object v2, Lcom/applisto/appcloner/classes/TrustAllCertificatesProvider;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method
