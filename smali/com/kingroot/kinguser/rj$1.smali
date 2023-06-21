.class final Lcom/kingroot/kinguser/rj$1;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/rj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/wo$a;)V
    .locals 3
    .param p1    # Lcom/kingroot/kinguser/wo$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/wo;->a(Lcom/kingroot/kinguser/wo$a;)V

    .line 46
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->nF()Ljava/util/List;

    move-result-object v0

    .line 47
    const/4 v1, 0x0

    .line 48
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 49
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 50
    instance-of v2, v0, Lcom/kingroot/kinguser/rj$a;

    if-eqz v2, :cond_1

    .line 51
    check-cast v0, Lcom/kingroot/kinguser/rj$a;

    .line 55
    :goto_0
    if-eqz v0, :cond_0

    .line 56
    invoke-static {v0}, Lcom/kingroot/kinguser/rj;->c(Lcom/kingroot/kinguser/rj$a;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/rj$a;->K(Z)V

    .line 58
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
