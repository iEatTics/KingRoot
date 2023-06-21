.class Lcom/kingroot/kinguser/anw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEB:Lcom/kingroot/kinguser/anw;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anw;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/kingroot/kinguser/anw$1;->aEB:Lcom/kingroot/kinguser/anw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/anw$1;->aEB:Lcom/kingroot/kinguser/anw;

    iget-object v0, v0, Lcom/kingroot/kinguser/anw;->aEz:Lcom/kingroot/kinguser/aoa;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aoa;->Jy()V

    .line 43
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
