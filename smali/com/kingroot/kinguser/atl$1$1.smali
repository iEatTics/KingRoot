.class Lcom/kingroot/kinguser/atl$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aOi:Landroid/graphics/Bitmap;

.field final synthetic aOj:Lcom/kingroot/kinguser/atl$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atl$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iput-object p2, p0, Lcom/kingroot/kinguser/atl$1$1;->aOi:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f020172

    const/16 v3, 0x8

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->b(Lcom/kingroot/kinguser/atl;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    new-instance v1, Lcom/kingroot/kinguser/bih;

    iget-object v2, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v2, v2, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/atl;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bih;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/atl;->a(Lcom/kingroot/kinguser/atl;Lcom/kingroot/kinguser/bih;)Lcom/kingroot/kinguser/bih;

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->c(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bih;->show()V

    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOi:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->c(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bih;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/bih;->setIcon(I)V

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->c(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bih;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/atl$1$1$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atl$1$1$1;-><init>(Lcom/kingroot/kinguser/atl$1$1;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bih;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->c(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bih;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070160

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bih;->d(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->c(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bih;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bih;->iY(I)V

    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->c(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bih;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070161

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bih;->setTitleText(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->c(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bih;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07015e

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bih;->lK(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->c(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bih;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/atl$1$1$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atl$1$1$2;-><init>(Lcom/kingroot/kinguser/atl$1$1;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bih;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 132
    :cond_0
    :goto_1
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->c(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bih;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atl$1$1;->aOi:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bih;->h(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->b(Lcom/kingroot/kinguser/atl;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    new-instance v1, Lcom/kingroot/kinguser/bht;

    iget-object v2, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v2, v2, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/atl;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bht;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/atl;->a(Lcom/kingroot/kinguser/atl;Lcom/kingroot/kinguser/bht;)Lcom/kingroot/kinguser/bht;

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->d(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bht;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bht;->show()V

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOi:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->d(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bht;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/bht;->iS(I)V

    .line 112
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->d(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bht;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/atl$1$1$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atl$1$1$3;-><init>(Lcom/kingroot/kinguser/atl$1$1;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bht;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->d(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bht;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bht;->iY(I)V

    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->d(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bht;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07015f

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bht;->setTitleText(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->d(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bht;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c7

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bht;->lK(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->d(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bht;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/atl$1$1$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atl$1$1$4;-><init>(Lcom/kingroot/kinguser/atl$1$1;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bht;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 130
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DW()V

    goto/16 :goto_1

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->d(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bht;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v1}, Lcom/kingroot/kinguser/atl;->a(Lcom/kingroot/kinguser/atl;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/ast;->bd(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bht;->g(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method
