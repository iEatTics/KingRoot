.class Lcom/kingroot/kinguser/bik$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bik;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btA:Lcom/kingroot/kinguser/bik;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bik;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/kingroot/kinguser/bik$7;->btA:Lcom/kingroot/kinguser/bik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 466
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$7;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->g(Lcom/kingroot/kinguser/bik;)V

    .line 468
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$7;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bik;->a(Lcom/kingroot/kinguser/bik;Z)Z

    .line 469
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$7;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->i(Lcom/kingroot/kinguser/bik;)V

    .line 470
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$7;->btA:Lcom/kingroot/kinguser/bik;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bik;->dismiss()V

    .line 472
    invoke-static {}, Lcom/kingroot/kinguser/bfm;->aah()Lcom/kingroot/kinguser/bfi;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/bfi;->ai(II)V

    .line 473
    return-void
.end method
