.class Lcom/kingroot/common/uilib/SlidingUpPanelLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$1;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$1;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$1;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->oi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$1;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    move-result-object v0

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$1;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    move-result-object v0

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sg:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-eq v0, v1, :cond_3

    .line 557
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$1;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$1;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sg:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setPanelState(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V

    goto :goto_0

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$1;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setPanelState(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V

    goto :goto_0

    .line 563
    :cond_3
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$1;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setPanelState(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V

    goto :goto_0
.end method
