.class Lcom/kingroot/kinguser/wv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/wv;->init(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Rz:Lcom/kingroot/kinguser/wv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/wv;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kingroot/kinguser/wv$1;->Rz:Lcom/kingroot/kinguser/wv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/wv$1;->Rz:Lcom/kingroot/kinguser/wv;

    invoke-static {v0}, Lcom/kingroot/kinguser/wv;->b(Lcom/kingroot/kinguser/wv;)Lcom/kingroot/kinguser/wu;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/wv$1;->Rz:Lcom/kingroot/kinguser/wv;

    invoke-static {v1}, Lcom/kingroot/kinguser/wv;->a(Lcom/kingroot/kinguser/wv;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/wv$1;->Rz:Lcom/kingroot/kinguser/wv;

    invoke-static {v2}, Lcom/kingroot/kinguser/wv;->a(Lcom/kingroot/kinguser/wv;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/kingroot/kinguser/wu;->setBounds(IIII)V

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/wv$1;->Rz:Lcom/kingroot/kinguser/wv;

    invoke-static {v0}, Lcom/kingroot/kinguser/wv;->a(Lcom/kingroot/kinguser/wv;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/wv$1;->Rz:Lcom/kingroot/kinguser/wv;

    invoke-static {v0}, Lcom/kingroot/kinguser/wv;->a(Lcom/kingroot/kinguser/wv;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
