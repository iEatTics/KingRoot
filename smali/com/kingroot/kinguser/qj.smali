.class public abstract Lcom/kingroot/kinguser/qj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/kingroot/kinguser/qf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/qj$b;,
        Lcom/kingroot/kinguser/qj$g;,
        Lcom/kingroot/kinguser/qj$d;,
        Lcom/kingroot/kinguser/qj$c;,
        Lcom/kingroot/kinguser/qj$a;,
        Lcom/kingroot/kinguser/qj$f;,
        Lcom/kingroot/kinguser/qj$e;
    }
.end annotation


# instance fields
.field protected final DX:Lcom/kingroot/kinguser/qj$f;

.field protected final DY:Lcom/kingroot/kinguser/qm;

.field protected final DZ:Lcom/kingroot/kinguser/qj$d;

.field protected final Ea:Lcom/kingroot/kinguser/qj$g;

.field protected final Eb:Lcom/kingroot/kinguser/qj$b;

.field protected volatile Ec:Lcom/kingroot/kinguser/qj$c;

.field protected Ed:Lcom/kingroot/kinguser/qg;

.field protected Ee:Lcom/kingroot/kinguser/qh;

.field protected Ef:F


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/qm;FFF)V
    .locals 1

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/kingroot/kinguser/qj$f;

    invoke-direct {v0}, Lcom/kingroot/kinguser/qj$f;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/qj;->DX:Lcom/kingroot/kinguser/qj$f;

    .line 83
    new-instance v0, Lcom/kingroot/kinguser/qi$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/qi$a;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/qj;->Ed:Lcom/kingroot/kinguser/qg;

    .line 84
    new-instance v0, Lcom/kingroot/kinguser/qi$b;

    invoke-direct {v0}, Lcom/kingroot/kinguser/qi$b;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/qj;->Ee:Lcom/kingroot/kinguser/qh;

    .line 434
    iput-object p1, p0, Lcom/kingroot/kinguser/qj;->DY:Lcom/kingroot/kinguser/qm;

    .line 436
    new-instance v0, Lcom/kingroot/kinguser/qj$b;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/kinguser/qj$b;-><init>(Lcom/kingroot/kinguser/qj;F)V

    iput-object v0, p0, Lcom/kingroot/kinguser/qj;->Eb:Lcom/kingroot/kinguser/qj$b;

    .line 437
    new-instance v0, Lcom/kingroot/kinguser/qj$g;

    invoke-direct {v0, p0, p3, p4}, Lcom/kingroot/kinguser/qj$g;-><init>(Lcom/kingroot/kinguser/qj;FF)V

    iput-object v0, p0, Lcom/kingroot/kinguser/qj;->Ea:Lcom/kingroot/kinguser/qj$g;

    .line 438
    new-instance v0, Lcom/kingroot/kinguser/qj$d;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/qj$d;-><init>(Lcom/kingroot/kinguser/qj;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/qj;->DZ:Lcom/kingroot/kinguser/qj$d;

    .line 440
    iget-object v0, p0, Lcom/kingroot/kinguser/qj;->DZ:Lcom/kingroot/kinguser/qj$d;

    iput-object v0, p0, Lcom/kingroot/kinguser/qj;->Ec:Lcom/kingroot/kinguser/qj$c;

    .line 442
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qj;->hp()V

    .line 443
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;F)V
.end method

.method protected abstract a(Landroid/view/View;FLandroid/view/MotionEvent;)V
.end method

.method protected a(Lcom/kingroot/kinguser/qj$c;)V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/kingroot/kinguser/qj;->Ec:Lcom/kingroot/kinguser/qj$c;

    .line 482
    iput-object p1, p0, Lcom/kingroot/kinguser/qj;->Ec:Lcom/kingroot/kinguser/qj$c;

    .line 484
    iget-object v1, p0, Lcom/kingroot/kinguser/qj;->Ec:Lcom/kingroot/kinguser/qj$c;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/qj$c;->b(Lcom/kingroot/kinguser/qj$c;)V

    .line 485
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/kingroot/kinguser/qj;->DY:Lcom/kingroot/kinguser/qm;

    invoke-interface {v0}, Lcom/kingroot/kinguser/qm;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected abstract hn()Lcom/kingroot/kinguser/qj$e;
.end method

.method protected abstract ho()Lcom/kingroot/kinguser/qj$a;
.end method

.method protected hp()V
    .locals 2

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qj;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 489
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qj;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 490
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 448
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 457
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 450
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/qj;->Ec:Lcom/kingroot/kinguser/qj$c;

    invoke-interface {v0, p2}, Lcom/kingroot/kinguser/qj$c;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 454
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/qj;->Ec:Lcom/kingroot/kinguser/qj$c;

    invoke-interface {v0, p2}, Lcom/kingroot/kinguser/qj$c;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
