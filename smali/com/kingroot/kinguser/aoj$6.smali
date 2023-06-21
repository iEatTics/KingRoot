.class Lcom/kingroot/kinguser/aoj$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aoj;->Jl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aoj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aoj;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/kingroot/kinguser/aoj$6;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 549
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$6;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->j(Lcom/kingroot/kinguser/aoj;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 550
    new-instance v0, Lcom/kingroot/kinguser/aoj$6$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aoj$6$1;-><init>(Lcom/kingroot/kinguser/aoj$6;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 556
    const/4 v0, 0x0

    return v0
.end method
