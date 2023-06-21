.class public Lcom/kingroot/kinguser/bvz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static aiG()I
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x1f42

    return v0
.end method

.method public static aiH()Lcom/kingroot/kinguser/bwb$a;
    .locals 6

    .prologue
    const/16 v5, 0x1f42

    const/16 v4, 0x1388

    .line 22
    new-instance v0, Lcom/kingroot/kinguser/bwb$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bwb$a;-><init>()V

    .line 23
    iput v4, v0, Lcom/kingroot/kinguser/bwb$a;->b:I

    .line 24
    iput v4, v0, Lcom/kingroot/kinguser/bwb$a;->c:I

    .line 25
    const-wide/32 v2, 0x5b287cc0

    iput-wide v2, v0, Lcom/kingroot/kinguser/bwb$a;->a:J

    .line 26
    iput v5, v0, Lcom/kingroot/kinguser/bwb$a;->d:I

    .line 27
    const-string v1, "8002"

    iput-object v1, v0, Lcom/kingroot/kinguser/bwb$a;->e:Ljava/lang/String;

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/kingroot/kinguser/bwb$a;->xt:Ljava/util/ArrayList;

    .line 30
    new-instance v1, Lcom/kingroot/kinguser/by;

    invoke-direct {v1}, Lcom/kingroot/kinguser/by;-><init>()V

    .line 31
    iput v4, v1, Lcom/kingroot/kinguser/by;->id:I

    .line 32
    iput v5, v1, Lcom/kingroot/kinguser/by;->lq:I

    .line 33
    iput v5, v1, Lcom/kingroot/kinguser/by;->lp:I

    .line 34
    iget-object v2, v0, Lcom/kingroot/kinguser/bwb$a;->xt:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-object v0
.end method

.method public static il()I
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x1388

    return v0
.end method
