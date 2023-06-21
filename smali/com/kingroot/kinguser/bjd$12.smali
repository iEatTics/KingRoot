.class Lcom/kingroot/kinguser/bjd$12;
.super Lcom/kingroot/kinguser/px;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjd;->a(Lcom/kingroot/common/uilib/KBaseListView;FJLcom/kingroot/kinguser/bjc;ZLcom/kingroot/kinguser/bjd$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bwa:Lcom/kingroot/kinguser/bjd;

.field final synthetic bws:Lcom/kingroot/kinguser/bjd$a;

.field final synthetic bwt:I

.field final synthetic bwu:Lcom/kingroot/common/uilib/KBaseListView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjd;Lcom/kingroot/kinguser/bjd$a;ILcom/kingroot/common/uilib/KBaseListView;)V
    .locals 0

    .prologue
    .line 884
    iput-object p1, p0, Lcom/kingroot/kinguser/bjd$12;->bwa:Lcom/kingroot/kinguser/bjd;

    iput-object p2, p0, Lcom/kingroot/kinguser/bjd$12;->bws:Lcom/kingroot/kinguser/bjd$a;

    iput p3, p0, Lcom/kingroot/kinguser/bjd$12;->bwt:I

    iput-object p4, p0, Lcom/kingroot/kinguser/bjd$12;->bwu:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-direct {p0}, Lcom/kingroot/kinguser/px;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$12;->bws:Lcom/kingroot/kinguser/bjd$a;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$12;->bws:Lcom/kingroot/kinguser/bjd$a;

    iget v1, p0, Lcom/kingroot/kinguser/bjd$12;->bwt:I

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/bjd$a;->a(Landroid/view/animation/Animation;I)V

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$12;->bwu:Lcom/kingroot/common/uilib/KBaseListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/KBaseListView;->setEnabled(Z)V

    .line 909
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/px;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 910
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 895
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/px;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 896
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$12;->bws:Lcom/kingroot/kinguser/bjd$a;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$12;->bws:Lcom/kingroot/kinguser/bjd$a;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bjd$a;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 899
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 887
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/px;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 888
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$12;->bws:Lcom/kingroot/kinguser/bjd$a;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$12;->bws:Lcom/kingroot/kinguser/bjd$a;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bjd$a;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 891
    :cond_0
    return-void
.end method
