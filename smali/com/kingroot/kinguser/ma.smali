.class public Lcom/kingroot/kinguser/ma;
.super Lcom/kingroot/kinguser/nj;
.source "SourceFile"


# instance fields
.field final synthetic sa:Ljava/lang/String;

.field final synthetic vC:I

.field final synthetic vD:I

.field final synthetic vE:Lcom/king/uranus/bv;


# direct methods
.method public constructor <init>(Lcom/king/uranus/bv;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingroot/kinguser/ma;->vE:Lcom/king/uranus/bv;

    iput p2, p0, Lcom/kingroot/kinguser/ma;->vC:I

    iput p3, p0, Lcom/kingroot/kinguser/ma;->vD:I

    iput-object p4, p0, Lcom/kingroot/kinguser/ma;->sa:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/nj;-><init>()V

    return-void
.end method


# virtual methods
.method public ca()V
    .locals 4

    .prologue
    .line 62
    new-instance v1, Lcom/king/uranus/aS;

    iget v0, p0, Lcom/kingroot/kinguser/ma;->vC:I

    iget v2, p0, Lcom/kingroot/kinguser/ma;->vD:I

    iget-object v3, p0, Lcom/kingroot/kinguser/ma;->sa:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/king/uranus/aS;-><init>(IILjava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/ma;->vE:Lcom/king/uranus/bv;

    invoke-static {v0}, Lcom/king/uranus/bv;->a(Lcom/king/uranus/bv;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hl;

    .line 66
    :try_start_0
    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/hl;->a(Lcom/kingroot/kinguser/hk;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method
