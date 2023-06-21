.class public abstract Lcom/kingroot/kinguser/zx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/kingroot/kinguser/zx;->pB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aah;->G([B)[B

    move-result-object v0

    .line 73
    sget-object v1, Lcom/kingroot/kinguser/aae$b;->Xw:Lcom/kingroot/kinguser/aae$b;

    invoke-static {v1}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$b;)Lcom/kingroot/kinguser/aag;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/kingroot/kinguser/aag;->encrypt([B[B)[B

    move-result-object v0

    .line 74
    invoke-static {v0, p1}, Lcom/kingroot/kinguser/rs;->c([BLjava/lang/String;)V

    .line 75
    return-void
.end method

.method public dF(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 28
    invoke-static {p1}, Lcom/kingroot/kinguser/rs;->cy(Ljava/lang/String;)[B

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/kingroot/kinguser/zx;->pB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/aah;->G([B)[B

    move-result-object v1

    .line 31
    sget-object v2, Lcom/kingroot/kinguser/aae$b;->Xw:Lcom/kingroot/kinguser/aae$b;

    invoke-static {v2}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$b;)Lcom/kingroot/kinguser/aag;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :cond_0
    invoke-interface {v2, v1, v0}, Lcom/kingroot/kinguser/aag;->decrypt([B[B)[B

    move-result-object v0

    .line 33
    return-object v0
.end method

.method public dG(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;
    .locals 3

    .prologue
    .line 43
    invoke-static {p1}, Lcom/kingroot/kinguser/rs;->cy(Ljava/lang/String;)[B

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/kingroot/kinguser/zx;->pB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/aah;->G([B)[B

    move-result-object v1

    .line 46
    sget-object v2, Lcom/kingroot/kinguser/aae$b;->Xw:Lcom/kingroot/kinguser/aae$b;

    invoke-static {v2}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$b;)Lcom/kingroot/kinguser/aag;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :cond_0
    invoke-interface {v2, v1, v0}, Lcom/kingroot/kinguser/aag;->decrypt([B[B)[B

    move-result-object v0

    .line 47
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method protected abstract pB()Ljava/lang/String;
.end method
