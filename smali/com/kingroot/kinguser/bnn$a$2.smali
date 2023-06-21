.class Lcom/kingroot/kinguser/bnn$a$2;
.super Lcom/kingroot/kinguser/bnn$a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bnn$a;->a(Ljava/lang/String;Lcom/kingroot/kinguser/bwd;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bEr:Lcom/kingroot/kinguser/bwd;

.field final synthetic bEt:Lcom/kingroot/kinguser/bnn$a;

.field final synthetic byG:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bnn$a;Landroid/app/Dialog;Lcom/kingroot/kinguser/bwd;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/kingroot/kinguser/bnn$a$2;->bEt:Lcom/kingroot/kinguser/bnn$a;

    iput-object p3, p0, Lcom/kingroot/kinguser/bnn$a$2;->bEr:Lcom/kingroot/kinguser/bwd;

    iput-object p4, p0, Lcom/kingroot/kinguser/bnn$a$2;->byG:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bnn$a$a;-><init>(Lcom/kingroot/kinguser/bnn$a;Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn$a$2;->bEu:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bnn$a$2;->bEu:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn$a$2;->bEu:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn$a$2;->bEr:Lcom/kingroot/kinguser/bwd;

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn$a$2;->bEr:Lcom/kingroot/kinguser/bwd;

    iget-object v1, p0, Lcom/kingroot/kinguser/bnn$a$2;->byG:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/bwd;->onComplete(Ljava/lang/Object;)V

    .line 564
    :cond_1
    return-void
.end method
