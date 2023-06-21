.class Lcom/kingroot/kinguser/agf$1;
.super Lcom/kingroot/kinguser/bhk$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/agf;->c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic alg:Lcom/kingroot/kinguser/agf$a;

.field final synthetic alh:Lcom/kingroot/kinguser/agf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/agf;Lcom/kingroot/kinguser/agf$a;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/kingroot/kinguser/agf$1;->alh:Lcom/kingroot/kinguser/agf;

    iput-object p2, p0, Lcom/kingroot/kinguser/agf$1;->alg:Lcom/kingroot/kinguser/agf$a;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bhk$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bhk$a;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/agf$1;->alg:Lcom/kingroot/kinguser/agf$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/agf$a;->alm:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    return-void
.end method
