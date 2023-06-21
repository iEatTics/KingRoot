.class Lcom/kingroot/kinguser/atl$1$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atl$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aOk:Lcom/kingroot/kinguser/atl$1$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atl$1$1;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/kingroot/kinguser/atl$1$1$2;->aOk:Lcom/kingroot/kinguser/atl$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DP()I

    move-result v0

    .line 91
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 92
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187b1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1$2;->aOk:Lcom/kingroot/kinguser/atl$1$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity;->c(Landroid/app/Activity;)V

    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1$2;->aOk:Lcom/kingroot/kinguser/atl$1$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->c(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bih;->dismiss()V

    .line 99
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1$2;->aOk:Lcom/kingroot/kinguser/atl$1$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 100
    return-void

    .line 94
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 95
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187b3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0
.end method
