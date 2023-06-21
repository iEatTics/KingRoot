.class Lcom/kingroot/kinguser/bjo$c;
.super Lcom/kingroot/kinguser/acw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic bxv:Lcom/kingroot/kinguser/bjo;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bjo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/kingroot/kinguser/bjo$c;->bxv:Lcom/kingroot/kinguser/bjo;

    .line 563
    invoke-direct {p0, p2, p3}, Lcom/kingroot/kinguser/acw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 564
    return-void
.end method


# virtual methods
.method protected oI()V
    .locals 3

    .prologue
    .line 568
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjo$c;->ck(I)V

    .line 569
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo$c;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/kingroot/common/utils/ui/ImageViewDot;->setVisibility(I)V

    .line 571
    new-instance v0, Lcom/kingroot/kinguser/bjo$c$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjo$c$1;-><init>(Lcom/kingroot/kinguser/bjo$c;)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjo$c;->c(Landroid/view/View$OnClickListener;)V

    .line 580
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo$c;->sg()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0110

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 581
    return-void
.end method
