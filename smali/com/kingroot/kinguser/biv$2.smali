.class Lcom/kingroot/kinguser/biv$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/biv;->Qs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ban:Lcom/kingroot/kinguser/bii;

.field final synthetic bao:Lcom/kingroot/kinguser/aks;

.field final synthetic buY:Lcom/kingroot/kinguser/biv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/biv;Lcom/kingroot/kinguser/bii;Lcom/kingroot/kinguser/aks;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/kingroot/kinguser/biv$2;->buY:Lcom/kingroot/kinguser/biv;

    iput-object p2, p0, Lcom/kingroot/kinguser/biv$2;->ban:Lcom/kingroot/kinguser/bii;

    iput-object p3, p0, Lcom/kingroot/kinguser/biv$2;->bao:Lcom/kingroot/kinguser/aks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/kingroot/kinguser/biv$2;->ban:Lcom/kingroot/kinguser/bii;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bii;->dismiss()V

    .line 309
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188d4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 311
    iget-object v0, p0, Lcom/kingroot/kinguser/biv$2;->bao:Lcom/kingroot/kinguser/aks;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->cj(Z)V

    .line 313
    return-void
.end method
