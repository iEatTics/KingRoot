.class Lcom/kingroot/kinguser/biv$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/biv;->aG(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic buY:Lcom/kingroot/kinguser/biv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/biv;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/kingroot/kinguser/biv$5;->buY:Lcom/kingroot/kinguser/biv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/biv$5;->buY:Lcom/kingroot/kinguser/biv;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/biv;->a(Lcom/kingroot/kinguser/biv;Landroid/view/View;)V

    .line 192
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188e2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 193
    return-void
.end method
