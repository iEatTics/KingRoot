.class public Lcom/kingroot/kinguser/bdp;
.super Lcom/kingroot/kinguser/bdo;
.source "SourceFile"


# instance fields
.field private bjA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bjz:Lcom/kingroot/kinguser/bhf;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bdo;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/bdp;->bjz:Lcom/kingroot/kinguser/bhf;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/kingroot/kinguser/bhf;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bhf;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bdp;->bjz:Lcom/kingroot/kinguser/bhf;

    .line 36
    :cond_0
    iput-object p2, p0, Lcom/kingroot/kinguser/bdp;->bjA:Ljava/util/List;

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/bdp;->bjA:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/bdp;->bjz:Lcom/kingroot/kinguser/bhf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bhf;->iM(I)Lcom/kingroot/kinguser/bhf;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/bhf;->bU(Ljava/util/List;)Lcom/kingroot/kinguser/bhf;

    .line 41
    :cond_1
    return-void
.end method


# virtual methods
.method public YF()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/kingroot/kinguser/bdp;->bjz:Lcom/kingroot/kinguser/bhf;

    iget-object v2, p0, Lcom/kingroot/kinguser/bdp;->adZ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bhf;->lx(Ljava/lang/String;)Lcom/kingroot/kinguser/bhf;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bdp;->bjk:Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bhf;->ly(Ljava/lang/String;)Lcom/kingroot/kinguser/bhf;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingroot/kinguser/bdp;->bjl:J

    .line 74
    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/bhf;->cA(J)Lcom/kingroot/kinguser/bhf;

    .line 76
    iget-object v1, p0, Lcom/kingroot/kinguser/bdp;->bjz:Lcom/kingroot/kinguser/bhf;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bhf;->acp()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bdp;->YG()[I

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bdp;->YI()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bdp;->YH()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bdp;->YJ()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bdp;->bO(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public YK()V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/bdp;->bjA:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/bdp;->bjA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/kingroot/kinguser/asl;->NW()Lcom/kingroot/kinguser/asl;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/asl;->D(Ljava/lang/String;I)V

    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method protected la(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bdp;->kY(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 48
    new-instance v1, Lcom/kingroot/kinguser/bhf;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bhf;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/bdp;->bjz:Lcom/kingroot/kinguser/bhf;

    .line 49
    iget-object v1, p0, Lcom/kingroot/kinguser/bdp;->bjz:Lcom/kingroot/kinguser/bhf;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bhf;->lE(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bdp;->bjz:Lcom/kingroot/kinguser/bhf;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bhf;->acq()Lcom/kingroot/kinguser/bhf$a;

    move-result-object v1

    .line 54
    iget-object v2, v1, Lcom/kingroot/kinguser/bhf$a;->bqk:Ljava/lang/String;

    iput-object v2, p0, Lcom/kingroot/kinguser/bdp;->adZ:Ljava/lang/String;

    .line 55
    iget-object v2, v1, Lcom/kingroot/kinguser/bhf$a;->bql:Ljava/lang/String;

    iput-object v2, p0, Lcom/kingroot/kinguser/bdp;->bjk:Ljava/lang/String;

    .line 56
    iget-wide v2, v1, Lcom/kingroot/kinguser/bhf$a;->bqm:J

    iput-wide v2, p0, Lcom/kingroot/kinguser/bdp;->bjl:J

    .line 59
    const/4 v1, 0x1

    :try_start_0
    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/bdp;->kZ(Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/bdp;->mReqType:I

    .line 61
    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bdp;->bjy:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method
