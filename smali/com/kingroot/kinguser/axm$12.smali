.class Lcom/kingroot/kinguser/axm$12;
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
    .line 295
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$12;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$12;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->c(Lcom/kingroot/kinguser/axm;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 303
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$12;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->c(Lcom/kingroot/kinguser/axm;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 304
    iget-object v1, p0, Lcom/kingroot/kinguser/axm$12;->this$0:Lcom/kingroot/kinguser/axm;

    int-to-double v2, v0

    const-wide v4, 0x3fd147ae147ae148L    # 0.27

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/axm;->a(Lcom/kingroot/kinguser/axm;I)I

    .line 305
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$12;->this$0:Lcom/kingroot/kinguser/axm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axm;->a(Lcom/kingroot/kinguser/axm;Z)V

    .line 306
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$12;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->c(Lcom/kingroot/kinguser/axm;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
