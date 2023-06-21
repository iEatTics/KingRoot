.class Lcom/kingroot/kinguser/bbe$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic beM:Lcom/kingroot/kinguser/bbe;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bbe;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/kingroot/kinguser/bbe$5;->beM:Lcom/kingroot/kinguser/bbe;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 445
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 448
    invoke-static {}, Lcom/kingroot/kinguser/ajb;->yT()Lcom/kingroot/kinguser/ajb;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/ajb;->checkAsync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;)V

    .line 450
    invoke-static {}, Lcom/kingroot/kinguser/bdx;->jS()V

    .line 453
    invoke-static {}, Lcom/kingroot/kinguser/aig;->xA()V

    .line 456
    invoke-static {}, Lcom/kingroot/kinguser/aba;->qD()V

    .line 459
    invoke-static {}, Lcom/kingroot/kinguser/asj;->NT()V

    .line 462
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/bbe;->Wk()Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 465
    invoke-static {}, Lcom/kingroot/kinguser/bbx;->WW()V

    .line 468
    invoke-static {}, Lcom/kingroot/kinguser/bcr;->XT()Lcom/kingroot/kinguser/bcr;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bcr;->ig(I)V

    .line 471
    invoke-static {}, Lcom/kingroot/kinguser/ayg;->UZ()V

    .line 474
    iget-object v0, p0, Lcom/kingroot/kinguser/bbe$5;->beM:Lcom/kingroot/kinguser/bbe;

    invoke-static {v0}, Lcom/kingroot/kinguser/bbe;->a(Lcom/kingroot/kinguser/bbe;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 483
    invoke-static {}, Lcom/kingroot/kinguser/awj;->ST()V

    .line 484
    return-void
.end method
