.class public Lcom/kingroot/kinguser/mb;
.super Lcom/kingroot/kinguser/nj;
.source "SourceFile"


# instance fields
.field final synthetic sa:Ljava/lang/String;

.field final synthetic vC:I

.field final synthetic vD:I

.field final synthetic vE:Lcom/king/uranus/bv;


# direct methods
.method public constructor <init>(Lcom/king/uranus/bv;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/kingroot/kinguser/mb;->vE:Lcom/king/uranus/bv;

    iput-object p2, p0, Lcom/kingroot/kinguser/mb;->sa:Ljava/lang/String;

    iput p3, p0, Lcom/kingroot/kinguser/mb;->vC:I

    iput p4, p0, Lcom/kingroot/kinguser/mb;->vD:I

    invoke-direct {p0}, Lcom/kingroot/kinguser/nj;-><init>()V

    return-void
.end method


# virtual methods
.method public ca()V
    .locals 5

    .prologue
    .line 79
    invoke-static {}, Lcom/kingroot/kinguser/la;->dp()Lcom/kingroot/kinguser/la;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/mb;->sa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/la;->queryProcessCrashType(Ljava/lang/String;)I

    move-result v0

    .line 80
    if-eqz v0, :cond_0

    .line 86
    :cond_0
    new-instance v1, Lcom/king/uranus/aS;

    iget v2, p0, Lcom/kingroot/kinguser/mb;->vC:I

    iget v3, p0, Lcom/kingroot/kinguser/mb;->vD:I

    iget-object v4, p0, Lcom/kingroot/kinguser/mb;->sa:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/king/uranus/aS;-><init>(IILjava/lang/String;I)V

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/mb;->vE:Lcom/king/uranus/bv;

    invoke-static {v0}, Lcom/king/uranus/bv;->a(Lcom/king/uranus/bv;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hl;

    .line 89
    :try_start_0
    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/hl;->b(Lcom/kingroot/kinguser/hk;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0

    .line 93
    :cond_1
    return-void
.end method
