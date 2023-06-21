.class Lcom/kingroot/kinguser/axj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axj;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aZj:Lcom/kingroot/kinguser/axj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axj;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/kingroot/kinguser/axj$2;->aZj:Lcom/kingroot/kinguser/axj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/axj$2;->aZj:Lcom/kingroot/kinguser/axj;

    invoke-static {v0}, Lcom/kingroot/kinguser/axj;->b(Lcom/kingroot/kinguser/axj;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axj$2;->aZj:Lcom/kingroot/kinguser/axj;

    invoke-static {v0}, Lcom/kingroot/kinguser/axj;->b(Lcom/kingroot/kinguser/axj;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18818

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 146
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->be(Z)V

    .line 147
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Dy()V

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/axj$2;->aZj:Lcom/kingroot/kinguser/axj;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axj;->Uh()V

    .line 149
    return-void
.end method
