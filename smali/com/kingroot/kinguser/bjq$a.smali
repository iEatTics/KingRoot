.class Lcom/kingroot/kinguser/bjq$a;
.super Lcom/kingroot/kinguser/acw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic bxW:Lcom/kingroot/kinguser/bjq;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bjq;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/kingroot/kinguser/bjq$a;->bxW:Lcom/kingroot/kinguser/bjq;

    .line 772
    invoke-direct {p0, p2, p3}, Lcom/kingroot/kinguser/acw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 773
    return-void
.end method


# virtual methods
.method protected oI()V
    .locals 3

    .prologue
    .line 777
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjq$a;->ck(I)V

    .line 778
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$a;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/kingroot/common/utils/ui/ImageViewDot;->setVisibility(I)V

    .line 780
    new-instance v0, Lcom/kingroot/kinguser/bjq$a$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjq$a$1;-><init>(Lcom/kingroot/kinguser/bjq$a;)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjq$a;->c(Landroid/view/View$OnClickListener;)V

    .line 789
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq$a;->sg()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0110

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 790
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq$a;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0336

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 791
    return-void
.end method
