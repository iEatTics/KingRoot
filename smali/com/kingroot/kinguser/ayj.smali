.class Lcom/kingroot/kinguser/ayj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ux;->kT()Lcom/kingroot/kinguser/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ux;->getSharkGuid()Ljava/lang/String;
    :try_end_0
    .catch Lcom/kingroot/kinguser/abn; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 42
    const-string v0, ""

    goto :goto_0
.end method

.method public getGuidAsyn(Lcom/kingroot/kinguser/ccg;)V
    .locals 6

    .prologue
    .line 49
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/ayj$2;

    invoke-direct {v5, p0, p1}, Lcom/kingroot/kinguser/ayj$2;-><init>(Lcom/kingroot/kinguser/ayj;Lcom/kingroot/kinguser/ccg;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 58
    return-void
.end method

.method public sendShark(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cci;)V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/kingroot/kinguser/awn;->Ta()Lcom/kingroot/kinguser/awn;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/ayj$1;

    invoke-direct {v1, p0, p4}, Lcom/kingroot/kinguser/ayj$1;-><init>(Lcom/kingroot/kinguser/ayj;Lcom/kingroot/kinguser/cci;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/kingroot/kinguser/awn;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    .line 34
    return-void
.end method
