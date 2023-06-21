.class public Lcom/kingroot/kinguser/apf$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/apf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private aHA:[Landroid/widget/ImageView;

.field private aHB:I

.field private aHC:[Ljava/lang/String;

.field private aHD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aHE:Lcom/kingroot/kinguser/apk;

.field private aHe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private aHh:I

.field private aHi:I

.field private aHj:Lcom/kingroot/kinguser/apl;

.field private aHl:Lcom/kingroot/kinguser/apj;

.field private aHm:Lcom/kingroot/kinguser/api;

.field private backgroundColor:I

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-object p1, p0, Lcom/kingroot/kinguser/apf$a;->context:Landroid/content/Context;

    .line 486
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/apf;Landroid/widget/ImageView;)Lcom/kingroot/kinguser/apf;
    .locals 2

    .prologue
    .line 549
    invoke-virtual {p1}, Lcom/kingroot/kinguser/apf;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    :goto_0
    return-object p1

    .line 551
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/ape;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ape;-><init>()V

    .line 553
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$a;->aHe:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/apf$a;->aHe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$a;->aHe:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ape;->aU(Ljava/util/List;)V

    .line 559
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$a;->aHD:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/apf$a;->aHD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$a;->aHD:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ape;->aV(Ljava/util/List;)V

    .line 565
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$a;->aHE:Lcom/kingroot/kinguser/apk;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ape;->a(Lcom/kingroot/kinguser/apk;)V

    .line 567
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$a;->aHl:Lcom/kingroot/kinguser/apj;

    if-nez v0, :cond_3

    .line 568
    new-instance v0, Lcom/kingroot/kinguser/apo;

    invoke-direct {v0}, Lcom/kingroot/kinguser/apo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ape;->a(Lcom/kingroot/kinguser/apj;)V

    .line 573
    :goto_3
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$a;->aHj:Lcom/kingroot/kinguser/apl;

    if-nez v0, :cond_4

    .line 574
    new-instance v0, Lcom/kingroot/kinguser/apn;

    invoke-direct {v0}, Lcom/kingroot/kinguser/apn;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ape;->a(Lcom/kingroot/kinguser/apl;)V

    .line 579
    :goto_4
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$a;->aHm:Lcom/kingroot/kinguser/api;

    if-nez v0, :cond_5

    .line 580
    invoke-static {}, Lcom/kingroot/kinguser/aph;->Lm()Lcom/kingroot/kinguser/aph;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ape;->a(Lcom/kingroot/kinguser/api;)V

    .line 585
    :goto_5
    iget v0, p0, Lcom/kingroot/kinguser/apf$a;->aHh:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ape;->setOffscreenPageLimit(I)V

    .line 586
    iget v0, p0, Lcom/kingroot/kinguser/apf$a;->backgroundColor:I

    if-nez v0, :cond_7

    const/high16 v0, -0x1000000

    :goto_7
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ape;->setBackgroundColor(I)V

    .line 587
    iget v0, p0, Lcom/kingroot/kinguser/apf$a;->aHB:I

    if-gez v0, :cond_8

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ape;->fU(I)V

    .line 588
    iget v0, p0, Lcom/kingroot/kinguser/apf$a;->aHi:I

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ape;->fW(I)V

    .line 589
    invoke-virtual {v1, p2}, Lcom/kingroot/kinguser/ape;->b(Landroid/widget/ImageView;)V

    .line 591
    invoke-static {p1, v1}, Lcom/kingroot/kinguser/apf;->a(Lcom/kingroot/kinguser/apf;Lcom/kingroot/kinguser/ape;)V

    goto :goto_0

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$a;->aHA:[Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ape;->aU(Ljava/util/List;)V

    goto :goto_1

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$a;->aHC:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ape;->aV(Ljava/util/List;)V

    goto :goto_2

    .line 570
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$a;->aHl:Lcom/kingroot/kinguser/apj;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ape;->a(Lcom/kingroot/kinguser/apj;)V

    goto :goto_3

    .line 576
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$a;->aHj:Lcom/kingroot/kinguser/apl;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ape;->a(Lcom/kingroot/kinguser/apl;)V

    goto :goto_4

    .line 582
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$a;->aHm:Lcom/kingroot/kinguser/api;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ape;->a(Lcom/kingroot/kinguser/api;)V

    goto :goto_5

    .line 585
    :cond_6
    iget v0, p0, Lcom/kingroot/kinguser/apf$a;->aHh:I

    goto :goto_6

    .line 586
    :cond_7
    iget v0, p0, Lcom/kingroot/kinguser/apf$a;->backgroundColor:I

    goto :goto_7

    .line 587
    :cond_8
    iget v0, p0, Lcom/kingroot/kinguser/apf$a;->aHB:I

    goto :goto_8
.end method

.method public aW(Ljava/util/List;)Lcom/kingroot/kinguser/apf$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;)",
            "Lcom/kingroot/kinguser/apf$a;"
        }
    .end annotation

    .prologue
    .line 494
    iput-object p1, p0, Lcom/kingroot/kinguser/apf$a;->aHe:Ljava/util/List;

    .line 495
    return-object p0
.end method

.method public aX(Ljava/util/List;)Lcom/kingroot/kinguser/apf$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kingroot/kinguser/apf$a;"
        }
    .end annotation

    .prologue
    .line 524
    iput-object p1, p0, Lcom/kingroot/kinguser/apf$a;->aHD:Ljava/util/List;

    .line 525
    return-object p0
.end method

.method public fY(I)Lcom/kingroot/kinguser/apf$a;
    .locals 0

    .prologue
    .line 499
    iput p1, p0, Lcom/kingroot/kinguser/apf$a;->aHB:I

    .line 500
    return-object p0
.end method

.method public fZ(I)Lcom/kingroot/kinguser/apf$a;
    .locals 0

    .prologue
    .line 504
    iput p1, p0, Lcom/kingroot/kinguser/apf$a;->aHh:I

    .line 505
    return-object p0
.end method

.method public ga(I)Lcom/kingroot/kinguser/apf$a;
    .locals 0

    .prologue
    .line 509
    iput p1, p0, Lcom/kingroot/kinguser/apf$a;->backgroundColor:I

    .line 510
    return-object p0
.end method

.method public gb(I)Lcom/kingroot/kinguser/apf$a;
    .locals 0

    .prologue
    .line 514
    iput p1, p0, Lcom/kingroot/kinguser/apf$a;->aHi:I

    .line 515
    return-object p0
.end method
