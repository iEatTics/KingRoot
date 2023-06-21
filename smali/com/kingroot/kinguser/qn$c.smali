.class public Lcom/kingroot/kinguser/qn$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/qn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/qn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic Ew:Lcom/kingroot/kinguser/qn;


# direct methods
.method protected constructor <init>(Lcom/kingroot/kinguser/qn;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/kingroot/kinguser/qn$c;->Ew:Lcom/kingroot/kinguser/qn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hs()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/qn$c;->Ew:Lcom/kingroot/kinguser/qn;

    iget-object v0, v0, Lcom/kingroot/kinguser/qn;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ht()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 122
    iget-object v1, p0, Lcom/kingroot/kinguser/qn$c;->Ew:Lcom/kingroot/kinguser/qn;

    iget-object v1, v1, Lcom/kingroot/kinguser/qn;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
