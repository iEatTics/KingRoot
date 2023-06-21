.class Lcom/kingroot/kinguser/axa$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axa$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXf:Lcom/kingroot/kinguser/axa$8;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axa$8;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/kingroot/kinguser/axa$8$1;->aXf:Lcom/kingroot/kinguser/axa$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 521
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$8$1;->aXf:Lcom/kingroot/kinguser/axa$8;

    iget-object v0, v0, Lcom/kingroot/kinguser/axa$8;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 522
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$8$1;->aXf:Lcom/kingroot/kinguser/axa$8;

    iget-object v0, v0, Lcom/kingroot/kinguser/axa$8;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {v0}, Lcom/kingroot/kinguser/axa;->d(Lcom/kingroot/kinguser/axa;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 523
    const/4 v0, 0x1

    return v0
.end method
