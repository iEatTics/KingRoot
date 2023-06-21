.class Lcom/kingroot/kinguser/awv$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/agb$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aVI:Lcom/kingroot/kinguser/awv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awv;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/kingroot/kinguser/awv$5;->aVI:Lcom/kingroot/kinguser/awv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(IZ)V
    .locals 2

    .prologue
    .line 394
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/awv$5;->aVI:Lcom/kingroot/kinguser/awv;

    invoke-static {v0}, Lcom/kingroot/kinguser/awv;->a(Lcom/kingroot/kinguser/awv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/awv$5;->aVI:Lcom/kingroot/kinguser/awv;

    invoke-static {v0}, Lcom/kingroot/kinguser/awv;->a(Lcom/kingroot/kinguser/awv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agb$e;

    .line 400
    iget-object v0, v0, Lcom/kingroot/kinguser/agb$e;->akg:Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    .line 401
    invoke-static {}, Lcom/kingroot/kinguser/ahe;->wL()Lcom/kingroot/kinguser/ahe;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Lcom/kingroot/kinguser/ahe;->x(Ljava/lang/String;Z)V

    .line 402
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18882

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0
.end method
