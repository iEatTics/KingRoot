.class Lcom/kingroot/kinguser/bjo$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjo$c;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bxx:Lcom/kingroot/kinguser/bjo$c;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjo$c;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/kingroot/kinguser/bjo$c$1;->bxx:Lcom/kingroot/kinguser/bjo$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 575
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 576
    iget-object v1, p0, Lcom/kingroot/kinguser/bjo$c$1;->bxx:Lcom/kingroot/kinguser/bjo$c;

    iget-object v1, v1, Lcom/kingroot/kinguser/bjo$c;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bjo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bjo$c$1;->bxx:Lcom/kingroot/kinguser/bjo$c;

    iget-object v2, v2, Lcom/kingroot/kinguser/bjo$c;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-static {v2}, Lcom/kingroot/kinguser/bjo;->d(Lcom/kingroot/kinguser/bjo;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 577
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo$c$1;->bxx:Lcom/kingroot/kinguser/bjo$c;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjo$c;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 578
    return-void
.end method
