.class public Lcom/kingroot/kinguser/wi;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/wi$a;
    }
.end annotation


# static fields
.field private static MH:Lcom/kingroot/kinguser/wi;


# instance fields
.field private MG:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 34
    invoke-direct {p0, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 36
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 37
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/kingroot/kinguser/wi$a;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/wi$a;-><init>(Lcom/kingroot/kinguser/wi;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 38
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/wi;->MG:Ljavax/net/ssl/SSLSocketFactory;

    .line 39
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/wi;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 40
    return-void
.end method

.method private a(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    :try_start_0
    const-class v0, Ljava/net/InetAddress;

    const-string v1, "hostName"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 72
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static nq()Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/kingroot/kinguser/wi;->MH:Lcom/kingroot/kinguser/wi;

    if-nez v0, :cond_0

    .line 45
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/wi;

    invoke-direct {v0}, Lcom/kingroot/kinguser/wi;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/wi;->MH:Lcom/kingroot/kinguser/wi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    sget-object v0, Lcom/kingroot/kinguser/wi;->MH:Lcom/kingroot/kinguser/wi;

    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/wi;->MG:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/wi;->a(Ljava/net/Socket;Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/wi;->MG:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
