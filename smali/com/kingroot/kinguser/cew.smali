.class public Lcom/kingroot/kinguser/cew;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BLcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceStruct;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/qq/taf/jce/JceStruct;",
            ">([BTT;Z)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 42
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :cond_1
    if-eqz p2, :cond_2

    .line 49
    :try_start_0
    invoke-virtual {p1}, Lcom/qq/taf/jce/JceStruct;->newInit()Lcom/qq/taf/jce/JceStruct;

    move-result-object v1

    .line 52
    :goto_1
    invoke-virtual {v1}, Lcom/qq/taf/jce/JceStruct;->recyle()V

    .line 53
    invoke-static {p0}, Lcom/kingroot/kinguser/cew;->af([B)Lcom/qq/taf/jce/JceInputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 54
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    move-object v1, p1

    goto :goto_1
.end method

.method public static ae([B)Lcom/kingroot/kinguser/bh;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/kingroot/kinguser/bh;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bh;-><init>()V

    .line 88
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/kingroot/kinguser/cew;->a([BLcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    .line 89
    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/kingroot/kinguser/bh;

    goto :goto_0
.end method

.method private static af([B)Lcom/qq/taf/jce/JceInputStream;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v0, p0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 98
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 99
    return-object v0
.end method

.method public static als()Lcom/kingroot/kinguser/ba;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/kingroot/kinguser/ba;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ba;-><init>()V

    .line 68
    return-object v0
.end method

.method public static b(Lcom/qq/taf/jce/JceStruct;)[B
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceOutputStream;-><init>()V

    .line 28
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceStruct;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    .line 30
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
