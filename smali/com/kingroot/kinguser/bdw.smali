.class public Lcom/kingroot/kinguser/bdw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private aRs:Landroid/net/LocalSocket;

.field private bjY:Ljava/io/InputStream;

.field private bjZ:Ljava/io/OutputStream;

.field private bka:Lcom/kingroot/kinguser/bdt;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/LocalSocket;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/kingroot/kinguser/bdw;->mContext:Landroid/content/Context;

    .line 17
    iput-object v0, p0, Lcom/kingroot/kinguser/bdw;->aRs:Landroid/net/LocalSocket;

    .line 18
    iput-object v0, p0, Lcom/kingroot/kinguser/bdw;->bjY:Ljava/io/InputStream;

    .line 19
    iput-object v0, p0, Lcom/kingroot/kinguser/bdw;->bjZ:Ljava/io/OutputStream;

    .line 21
    new-instance v0, Lcom/kingroot/kinguser/bdt;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bdt;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bdw;->bka:Lcom/kingroot/kinguser/bdt;

    .line 24
    iput-object p1, p0, Lcom/kingroot/kinguser/bdw;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/kingroot/kinguser/bdw;->aRs:Landroid/net/LocalSocket;

    .line 26
    return-void
.end method

.method private YU()[B
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/bdw;->bjY:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/kingroot/kinguser/bdr;->j(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method private YV()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/bdw;->bjZ:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bdw;->bka:Lcom/kingroot/kinguser/bdt;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdt;->YS()[B

    move-result-object v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bdw;->bjZ:Ljava/io/OutputStream;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v0, v2, v3}, Lcom/kingroot/kinguser/bdr;->a(Ljava/io/OutputStream;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 118
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bdw;->bjZ:Ljava/io/OutputStream;

    sget-object v1, Lcom/kingroot/kinguser/bds;->bjQ:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/bdw;->bjZ:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bdw;->bjZ:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    goto :goto_2

    .line 113
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Lcom/kingroot/kinguser/bdt;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 163
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdt;->YR()Lcom/kingroot/kinguser/bdr;

    move-result-object v0

    .line 164
    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p1, v3}, Lcom/kingroot/kinguser/bdt;->ir(I)V

    .line 189
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdr;->YN()I

    move-result v1

    .line 170
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 171
    invoke-virtual {p1, v3}, Lcom/kingroot/kinguser/bdt;->ir(I)V

    goto :goto_0

    .line 176
    :cond_1
    new-instance v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    invoke-direct {v1}, Lcom/kingroot/kinguser/model/SuRequestCmdModel;-><init>()V

    .line 177
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdr;->YO()I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    .line 178
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdr;->YO()I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRn:I

    .line 179
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdr;->YP()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRo:Ljava/lang/String;

    .line 180
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdr;->YP()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRp:Ljava/lang/String;

    .line 181
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdr;->YO()I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRq:I

    .line 182
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdr;->YO()I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRr:I

    .line 185
    invoke-static {p0, v1}, Lcom/kingroot/kinguser/root/mgr/SuNotifyService;->b(Landroid/content/Context;Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/bdt;->ir(I)V

    goto :goto_0
.end method

.method private declared-synchronized close()V
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bdw;->bjY:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bdw;->bjY:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/kingroot/kinguser/bdw;->bjY:Ljava/io/InputStream;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bdw;->bjZ:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 83
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bdw;->bjZ:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/kingroot/kinguser/bdw;->bjZ:Ljava/io/OutputStream;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bdw;->aRs:Landroid/net/LocalSocket;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    .line 92
    :try_start_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bdw;->aRs:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 96
    :goto_2
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/kingroot/kinguser/bdw;->aRs:Landroid/net/LocalSocket;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 98
    :cond_2
    monitor-exit p0

    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 93
    :catch_2
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized open()V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bdw;->aRs:Landroid/net/LocalSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bdw;->aRs:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bdw;->bjY:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bdw;->aRs:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bdw;->bjZ:Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 65
    :catch_1
    move-exception v0

    .line 66
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/kingroot/kinguser/bdt;)V
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p2}, Lcom/kingroot/kinguser/bdt;->YQ()[B

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/kingroot/kinguser/zg;->write(Ljava/lang/String;)V

    .line 143
    :cond_0
    if-nez v0, :cond_2

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/kingroot/kinguser/bdt;->ir(I)V

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 148
    :cond_2
    sget-object v1, Lcom/kingroot/kinguser/bdu;->bjU:[B

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bds;->e([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-static {p1, p2}, Lcom/kingroot/kinguser/bdw;->b(Landroid/content/Context;Lcom/kingroot/kinguser/bdt;)V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 31
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bdw;->open()V

    .line 32
    invoke-direct {p0}, Lcom/kingroot/kinguser/bdw;->YU()[B

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read bytes .///"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/zg;->write(Ljava/lang/String;)V

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetByte:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/zg;->write(Ljava/lang/String;)V

    .line 45
    :goto_0
    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/kingroot/kinguser/bdw;->bka:Lcom/kingroot/kinguser/bdt;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bdt;->setData([B)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bdw;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/bdw;->bka:Lcom/kingroot/kinguser/bdt;

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bdw;->a(Landroid/content/Context;Lcom/kingroot/kinguser/bdt;)V

    .line 49
    invoke-direct {p0}, Lcom/kingroot/kinguser/bdw;->YV()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/bdw;->close()V

    .line 54
    return-void

    .line 39
    :cond_1
    :try_start_1
    const-string v1, "read bytes ./// null"

    invoke-static {v1}, Lcom/kingroot/kinguser/zg;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
