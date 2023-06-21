.class Lcom/kingroot/kinguser/axr$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axr;->Qs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ban:Lcom/kingroot/kinguser/bii;

.field final synthetic bao:Lcom/kingroot/kinguser/aks;

.field final synthetic bbr:Lcom/kingroot/kinguser/axr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axr;Lcom/kingroot/kinguser/bii;Lcom/kingroot/kinguser/aks;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/kingroot/kinguser/axr$4;->bbr:Lcom/kingroot/kinguser/axr;

    iput-object p2, p0, Lcom/kingroot/kinguser/axr$4;->ban:Lcom/kingroot/kinguser/bii;

    iput-object p3, p0, Lcom/kingroot/kinguser/axr$4;->bao:Lcom/kingroot/kinguser/aks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$4;->ban:Lcom/kingroot/kinguser/bii;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bii;->dismiss()V

    .line 380
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188d4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 382
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$4;->bao:Lcom/kingroot/kinguser/aks;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->cj(Z)V

    .line 384
    return-void
.end method
