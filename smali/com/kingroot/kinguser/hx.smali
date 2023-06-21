.class public Lcom/kingroot/kinguser/hx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/king/uranus/g;)Lcom/king/uranus/cS;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/kingroot/kinguser/mm;

    invoke-direct {v0}, Lcom/kingroot/kinguser/mm;-><init>()V

    .line 20
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/mm;->bu(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/king/uranus/g;->au:[B

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/mm;->s([B)V

    .line 23
    iget v1, p0, Lcom/king/uranus/g;->at:I

    sparse-switch v1, :sswitch_data_0

    .line 38
    new-instance v0, Lcom/king/uranus/P;

    const-string v1, "unknow type"

    invoke-direct {v0, v1}, Lcom/king/uranus/P;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :sswitch_0
    new-instance v1, Lcom/king/uranus/s;

    invoke-direct {v1}, Lcom/king/uranus/s;-><init>()V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/hx;->a(Lcom/kingroot/kinguser/mm;Lcom/king/uranus/cS;)Lcom/king/uranus/cS;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :sswitch_1
    new-instance v1, Lcom/king/uranus/p;

    invoke-direct {v1}, Lcom/king/uranus/p;-><init>()V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/hx;->a(Lcom/kingroot/kinguser/mm;Lcom/king/uranus/cS;)Lcom/king/uranus/cS;

    move-result-object v0

    goto :goto_0

    .line 34
    :sswitch_2
    new-instance v1, Lcom/king/uranus/o;

    invoke-direct {v1}, Lcom/king/uranus/o;-><init>()V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/hx;->a(Lcom/kingroot/kinguser/mm;Lcom/king/uranus/cS;)Lcom/king/uranus/cS;

    move-result-object v0

    goto :goto_0

    .line 23
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x149 -> :sswitch_0
        0x15e -> :sswitch_2
    .end sparse-switch
.end method

.method private static a(Lcom/kingroot/kinguser/mm;Lcom/king/uranus/cS;)Lcom/king/uranus/cS;
    .locals 1

    .prologue
    .line 43
    const-string v0, "cloudcmd"

    invoke-virtual {p0, v0, p1}, Lcom/kingroot/kinguser/mm;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/cS;

    return-object v0
.end method
