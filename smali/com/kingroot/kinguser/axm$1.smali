.class Lcom/kingroot/kinguser/axm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    .line 283
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$1;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$1;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->a(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/common/uilib/MainExpCircleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$1;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->b(Lcom/kingroot/kinguser/axm;)V

    .line 292
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$1;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->a(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/common/uilib/MainExpCircleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
