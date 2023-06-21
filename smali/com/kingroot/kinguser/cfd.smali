.class public Lcom/kingroot/kinguser/cfd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bYt:Lcom/kingroot/kinguser/ceu;

.field public static bZT:Z

.field public static bZU:Z

.field private static bZV:Landroid/os/Looper;

.field private static bZW:Landroid/os/Looper;

.field private static bZX:Z

.field private static bZY:Ljava/lang/String;

.field private static bZZ:Z

.field private static caa:Z

.field private static cab:Lcom/kingroot/kinguser/cfi;

.field private static cac:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lcom/kingroot/kinguser/cfd;->bZT:Z

    .line 37
    sput-boolean v0, Lcom/kingroot/kinguser/cfd;->bZU:Z

    .line 42
    sput-object v1, Lcom/kingroot/kinguser/cfd;->bZV:Landroid/os/Looper;

    .line 49
    sput-object v1, Lcom/kingroot/kinguser/cfd;->bZW:Landroid/os/Looper;

    .line 175
    sput-boolean v0, Lcom/kingroot/kinguser/cfd;->bZX:Z

    .line 186
    sput-object v1, Lcom/kingroot/kinguser/cfd;->bZY:Ljava/lang/String;

    .line 197
    sput-boolean v0, Lcom/kingroot/kinguser/cfd;->bZZ:Z

    .line 209
    sput-boolean v0, Lcom/kingroot/kinguser/cfd;->caa:Z

    .line 220
    sput-object v1, Lcom/kingroot/kinguser/cfd;->cab:Lcom/kingroot/kinguser/cfi;

    .line 252
    sput-object v1, Lcom/kingroot/kinguser/cfd;->bYt:Lcom/kingroot/kinguser/ceu;

    .line 289
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/cfd;->cac:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/cfi;)V
    .locals 0

    .prologue
    .line 223
    sput-object p0, Lcom/kingroot/kinguser/cfd;->cab:Lcom/kingroot/kinguser/cfi;

    .line 224
    return-void
.end method

.method public static ag([B)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 160
    if-eqz p0, :cond_0

    array-length v1, p0

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static alE()Z
    .locals 1

    .prologue
    .line 180
    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZX:Z

    return v0
.end method

.method public static alF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/kingroot/kinguser/cfd;->bZY:Ljava/lang/String;

    return-object v0
.end method

.method public static alG()Z
    .locals 1

    .prologue
    .line 214
    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->caa:Z

    return v0
.end method

.method public static alH()Lcom/kingroot/kinguser/cfi;
    .locals 4

    .prologue
    .line 226
    sget-object v0, Lcom/kingroot/kinguser/cfd;->cab:Lcom/kingroot/kinguser/cfi;

    if-nez v0, :cond_0

    .line 227
    const-class v1, Lcom/kingroot/kinguser/cfj;

    monitor-enter v1

    .line 228
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/cfj;

    invoke-static {}, Lcom/kingroot/kinguser/cfd;->fs()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/kingroot/kinguser/cfj;-><init>(J)V

    sput-object v0, Lcom/kingroot/kinguser/cfd;->cab:Lcom/kingroot/kinguser/cfi;

    .line 229
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/cfd;->cab:Lcom/kingroot/kinguser/cfi;

    return-object v0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static eV(Z)V
    .locals 0

    .prologue
    .line 177
    sput-boolean p0, Lcom/kingroot/kinguser/cfd;->bZX:Z

    .line 178
    return-void
.end method

.method public static eW(Z)V
    .locals 0

    .prologue
    .line 199
    sput-boolean p0, Lcom/kingroot/kinguser/cfd;->bZZ:Z

    .line 200
    return-void
.end method

.method public static eX(Z)V
    .locals 0

    .prologue
    .line 211
    sput-boolean p0, Lcom/kingroot/kinguser/cfd;->caa:Z

    .line 212
    return-void
.end method

.method public static fI()Z
    .locals 1

    .prologue
    .line 202
    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZZ:Z

    return v0
.end method

.method private static fs()J
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 239
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akT()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 247
    :goto_0
    const-wide v2, 0x100000000L

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/cdx;->p(IJ)J

    move-result-wide v0

    .line 248
    return-wide v0

    .line 242
    :cond_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akT()I

    move-result v0

    if-ne v1, v0, :cond_1

    move v0, v1

    .line 243
    goto :goto_0

    .line 245
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getLooper()Landroid/os/Looper;
    .locals 3

    .prologue
    .line 52
    sget-object v0, Lcom/kingroot/kinguser/cfd;->bZV:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 53
    const-class v1, Lcom/kingroot/kinguser/cfd;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/cfd;->bZV:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v0

    const-string v2, "Shark-Looper"

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bzf;->nD(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/cfd;->bZV:Landroid/os/Looper;

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/cfd;->bZV:Landroid/os/Looper;

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static lg(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 164
    const/16 v1, 0x98

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lh(I)Z
    .locals 1

    .prologue
    .line 168
    const/16 v0, 0x3e5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e7

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nS(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 86
    sget-object v0, Lshark/a;->bXd:Lshark/a;

    invoke-static {}, Lcom/kingroot/kinguser/cgr;->anb()Lshark/a;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 106
    :goto_0
    return v1

    .line 91
    :cond_0
    const/4 v0, 0x0

    .line 93
    :try_start_0
    new-instance v2, Lcom/kingroot/kinguser/cfd$1;

    invoke-direct {v2}, Lcom/kingroot/kinguser/cfd$1;-><init>()V

    invoke-static {v2}, Lcom/kingroot/kinguser/cgy;->a(Lcom/kingroot/kinguser/cgy$a;)Ljava/lang/String;
    :try_end_0
    .catch Ltmsdk/common/exception/WifiApproveException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    .line 106
    goto :goto_0

    :cond_1
    move v0, v1

    .line 104
    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static nT(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 115
    .line 116
    const-string v1, "www.qq.com"

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 119
    const/4 v2, 0x0

    .line 121
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 122
    new-instance v3, Ljava/net/InetSocketAddress;

    const/16 v4, 0x50

    invoke-direct {v3, v1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 123
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v4}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 125
    const/16 v2, 0x1388

    invoke-virtual {v1, v3, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    const/4 v0, 0x1

    .line 133
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v2

    .line 133
    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 136
    :catch_2
    move-exception v1

    .line 137
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 133
    :goto_2
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 136
    :catch_4
    move-exception v1

    .line 137
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    :goto_3
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 138
    :cond_1
    :goto_4
    throw v0

    .line 136
    :catch_5
    move-exception v1

    .line 137
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 132
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_6
    move-exception v2

    move-object v2, v1

    goto :goto_2

    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method public static nU(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    sput-object p0, Lcom/kingroot/kinguser/cfd;->bZY:Ljava/lang/String;

    .line 189
    return-void
.end method
