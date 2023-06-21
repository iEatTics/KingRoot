.class Lcom/kingroot/kinguser/bic$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bic;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btc:Lcom/kingroot/kinguser/bic;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bic;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/kingroot/kinguser/bic$1;->btc:Lcom/kingroot/kinguser/bic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bic$1;->btc:Lcom/kingroot/kinguser/bic;

    invoke-static {v0}, Lcom/kingroot/kinguser/bic;->a(Lcom/kingroot/kinguser/bic;)Lcom/kingroot/kinguser/bic$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/bic$1;->btc:Lcom/kingroot/kinguser/bic;

    invoke-static {v0}, Lcom/kingroot/kinguser/bic;->a(Lcom/kingroot/kinguser/bic;)Lcom/kingroot/kinguser/bic$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bic$1;->btc:Lcom/kingroot/kinguser/bic;

    invoke-static {v1}, Lcom/kingroot/kinguser/bic;->b(Lcom/kingroot/kinguser/bic;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/bic$a;->d(Landroid/view/View;Z)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bic$1;->btc:Lcom/kingroot/kinguser/bic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bic;->dismiss()V

    .line 45
    return-void
.end method
