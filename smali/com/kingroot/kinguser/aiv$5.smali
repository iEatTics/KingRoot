.class Lcom/kingroot/kinguser/aiv$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aiv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic asy:Lcom/kingroot/kinguser/aiv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aiv;)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Lcom/kingroot/kinguser/aiv$5;->asy:Lcom/kingroot/kinguser/aiv;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 3
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 862
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 863
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    .line 864
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 865
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 866
    new-instance v1, Lcom/kingroot/kinguser/aiv$5$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/aiv$5$1;-><init>(Lcom/kingroot/kinguser/aiv$5;I)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    :cond_0
    return-void
.end method
