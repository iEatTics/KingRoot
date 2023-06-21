.class public final Lcom/kingroot/kinguser/zr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static WU:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/kingroot/kinguser/zr;->WU:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static pD()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/kingroot/kinguser/zr;->WU:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {}, Lcom/kingroot/kinguser/zr;->pE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/kingroot/kinguser/zr;->WU:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static pE()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 59
    :try_start_0
    const-string v1, "a3"

    invoke-static {v1}, Lcom/kingroot/kinguser/zq;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/rs;->cw(Ljava/lang/String;)[B

    move-result-object v1

    .line 62
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 64
    sget-object v3, Lcom/kingroot/kinguser/aae$b;->Xv:Lcom/kingroot/kinguser/aae$b;

    invoke-static {v3}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$b;)Lcom/kingroot/kinguser/aag;

    move-result-object v3

    const-string v4, "a2"

    invoke-static {v4}, Lcom/kingroot/kinguser/zq;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/kingroot/kinguser/aag;->decrypt([B[B)[B

    move-result-object v3

    .line 65
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 67
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 68
    const-string v3, "a3"

    invoke-static {v3}, Lcom/kingroot/kinguser/zq;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 73
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 75
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 73
    :goto_1
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 70
    :catch_1
    move-exception v2

    goto :goto_1
.end method
