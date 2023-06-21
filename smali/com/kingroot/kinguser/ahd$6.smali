.class Lcom/kingroot/kinguser/ahd$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ahd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ahd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ahd;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/kingroot/kinguser/ahd$6;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v2, 0x0

    .line 656
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd$6;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahd;->h(Lcom/kingroot/kinguser/ahd;)Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    move-result-object v0

    if-eq v0, p3, :cond_0

    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Si:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne p3, v0, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd$6;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-static {v0, p3}, Lcom/kingroot/kinguser/ahd;->a(Lcom/kingroot/kinguser/ahd;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 660
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne p3, v0, :cond_2

    .line 661
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1896d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 662
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd$6;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahd;->i(Lcom/kingroot/kinguser/ahd;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bhk;->b(Landroid/view/View;FFJ)V

    .line 663
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd$6;->this$0:Lcom/kingroot/kinguser/ahd;

    iget-object v1, p0, Lcom/kingroot/kinguser/ahd$6;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-static {v1}, Lcom/kingroot/kinguser/ahd;->j(Lcom/kingroot/kinguser/ahd;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ahd;->a(Lcom/kingroot/kinguser/ahd;Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_2
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne p3, v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd$6;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahd;->i(Lcom/kingroot/kinguser/ahd;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, v3, v2, v4, v5}, Lcom/kingroot/kinguser/bhk;->b(Landroid/view/View;FFJ)V

    .line 666
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd$6;->this$0:Lcom/kingroot/kinguser/ahd;

    iget-object v1, p0, Lcom/kingroot/kinguser/ahd$6;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-static {v1}, Lcom/kingroot/kinguser/ahd;->k(Lcom/kingroot/kinguser/ahd;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ahd;->a(Lcom/kingroot/kinguser/ahd;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 652
    return-void
.end method
