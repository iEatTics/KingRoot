.class Lcom/kingroot/kinguser/bjm$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bxm:Lcom/kingroot/kinguser/bjm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjm;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/kingroot/kinguser/bjm$2;->bxm:Lcom/kingroot/kinguser/bjm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/bjm$2;->bxm:Lcom/kingroot/kinguser/bjm;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjm;->b(Lcom/kingroot/kinguser/bjm;)Lcom/kingroot/kinguser/bjm$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/bjm$2;->bxm:Lcom/kingroot/kinguser/bjm;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjm;->b(Lcom/kingroot/kinguser/bjm;)Lcom/kingroot/kinguser/bjm$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bjm$2;->bxm:Lcom/kingroot/kinguser/bjm;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bjm;->isChecked()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/bjm$a;->d(Landroid/view/View;Z)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjm$2;->bxm:Lcom/kingroot/kinguser/bjm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjm;->dismiss()V

    .line 55
    return-void
.end method
