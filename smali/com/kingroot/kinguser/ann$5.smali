.class Lcom/kingroot/kinguser/ann$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ann;->Jl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ann;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ann;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/kingroot/kinguser/ann$5;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 571
    iget-object v0, p0, Lcom/kingroot/kinguser/ann$5;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v0}, Lcom/kingroot/kinguser/ann;->j(Lcom/kingroot/kinguser/ann;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 572
    new-instance v0, Lcom/kingroot/kinguser/ann$5$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ann$5$1;-><init>(Lcom/kingroot/kinguser/ann$5;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 578
    const/4 v0, 0x0

    return v0
.end method
