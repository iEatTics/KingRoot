.class public Lcom/kingroot/kinguser/aak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aaf;
.implements Lcom/kingroot/kinguser/aag;


# static fields
.field private static volatile Xz:Lcom/kingroot/kinguser/aak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/aak;->Xz:Lcom/kingroot/kinguser/aak;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static pM()Lcom/kingroot/kinguser/aak;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/kingroot/kinguser/aak;->Xz:Lcom/kingroot/kinguser/aak;

    if-nez v0, :cond_1

    .line 21
    const-class v1, Lcom/kingroot/kinguser/aak;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aak;->Xz:Lcom/kingroot/kinguser/aak;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/kingroot/kinguser/aak;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aak;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aak;->Xz:Lcom/kingroot/kinguser/aak;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/aak;->Xz:Lcom/kingroot/kinguser/aak;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public C([B)[B
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 36
    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/aaj;->n([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 37
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public D([B)[B
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 61
    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/aaj;->m([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 98
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/aaj;->c([B[B)[B

    move-result-object v1

    .line 99
    invoke-static {v1}, Lcom/kingroot/kinguser/aab;->B([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 123
    :try_start_0
    invoke-static {p2}, Lcom/kingroot/kinguser/aab;->dJ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/aaj;->d([B[B)[B

    move-result-object v2

    .line 124
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public decrypt([B[B)[B
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 111
    :try_start_0
    invoke-static {p2, p1}, Lcom/kingroot/kinguser/aaj;->d([B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public encrypt([B[B)[B
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 86
    :try_start_0
    invoke-static {p2, p1}, Lcom/kingroot/kinguser/aaj;->c([B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v1

    goto :goto_0
.end method
