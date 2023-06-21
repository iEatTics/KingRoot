.class Lcom/kingroot/common/uilib/AnimationListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/uilib/AnimationListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Nc:Lcom/kingroot/common/uilib/AnimationListView;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/AnimationListView;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/kingroot/common/uilib/AnimationListView$1;->Nc:Lcom/kingroot/common/uilib/AnimationListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/kingroot/common/uilib/AnimationListView$1;->Nc:Lcom/kingroot/common/uilib/AnimationListView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/AnimationListView;->a(Lcom/kingroot/common/uilib/AnimationListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/kingroot/common/uilib/AnimationListView$1;->Nc:Lcom/kingroot/common/uilib/AnimationListView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/AnimationListView;->a(Lcom/kingroot/common/uilib/AnimationListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 175
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 155
    if-eqz p2, :cond_0

    .line 156
    iget-object v0, p0, Lcom/kingroot/common/uilib/AnimationListView$1;->Nc:Lcom/kingroot/common/uilib/AnimationListView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/AnimationListView;->getAnimationAdapter()Lcom/kingroot/kinguser/qt;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/kingroot/kinguser/qt;->reset()V

    .line 159
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/qt;->E(Z)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/AnimationListView$1;->Nc:Lcom/kingroot/common/uilib/AnimationListView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/AnimationListView;->a(Lcom/kingroot/common/uilib/AnimationListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/kingroot/common/uilib/AnimationListView$1;->Nc:Lcom/kingroot/common/uilib/AnimationListView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/AnimationListView;->a(Lcom/kingroot/common/uilib/AnimationListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 166
    :cond_1
    return-void
.end method
