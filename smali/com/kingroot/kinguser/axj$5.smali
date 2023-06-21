.class Lcom/kingroot/kinguser/axj$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axj;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aZj:Lcom/kingroot/kinguser/axj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axj;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/kingroot/kinguser/axj$5;->aZj:Lcom/kingroot/kinguser/axj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/axj$5;->aZj:Lcom/kingroot/kinguser/axj;

    invoke-static {v0}, Lcom/kingroot/kinguser/axj;->a(Lcom/kingroot/kinguser/axj;)Lcom/kingcore/uilib/VerticalViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingcore/uilib/VerticalViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 195
    new-instance v0, Lcom/kingroot/kinguser/axj$5$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axj$5$1;-><init>(Lcom/kingroot/kinguser/axj$5;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 202
    return-void
.end method
