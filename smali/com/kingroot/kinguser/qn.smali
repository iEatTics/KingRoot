.class public Lcom/kingroot/kinguser/qn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/qm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/qn$c;,
        Lcom/kingroot/kinguser/qn$b;,
        Lcom/kingroot/kinguser/qn$a;
    }
.end annotation


# instance fields
.field protected final Eu:Lcom/kingroot/kinguser/qn$a;

.field protected Ev:Z

.field protected final mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/qn;->Ev:Z

    .line 39
    iput-object p1, p0, Lcom/kingroot/kinguser/qn;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 41
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 42
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_3

    .line 44
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 46
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    .line 49
    :goto_0
    if-nez v0, :cond_2

    .line 50
    new-instance v0, Lcom/kingroot/kinguser/qn$b;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/qn$b;-><init>(Lcom/kingroot/kinguser/qn;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/qn;->Eu:Lcom/kingroot/kinguser/qn$a;

    .line 58
    :goto_1
    return-void

    .line 46
    :cond_1
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 47
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v0

    goto :goto_0

    .line 52
    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/qn$c;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/qn$c;-><init>(Lcom/kingroot/kinguser/qn;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/qn;->Eu:Lcom/kingroot/kinguser/qn$a;

    goto :goto_1

    .line 55
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Recycler views with custom layout managers are not supported by this adapter out of the box.Try implementing and providing an explicit \'impl\' parameter to the other c\'tors, or otherwise create a custom adapter subclass of your own."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/qn;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public hs()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qn;->Ev:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/qn;->Eu:Lcom/kingroot/kinguser/qn$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/qn$a;->hs()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ht()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qn;->Ev:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/qn;->Eu:Lcom/kingroot/kinguser/qn$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/qn$a;->ht()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
