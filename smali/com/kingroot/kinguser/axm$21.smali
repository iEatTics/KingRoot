.class Lcom/kingroot/kinguser/axm$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$21;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$21;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->d(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPanelState()Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    move-result-object v0

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Si:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne v0, v1, :cond_0

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EY()V

    .line 323
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$21;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->e(Lcom/kingroot/kinguser/axm;)V

    goto :goto_0
.end method
