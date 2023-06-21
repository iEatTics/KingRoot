.class Lcom/kingroot/kinguser/bjq$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjq$a;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bxY:Lcom/kingroot/kinguser/bjq$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjq$a;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Lcom/kingroot/kinguser/bjq$a$1;->bxY:Lcom/kingroot/kinguser/bjq$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 784
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 785
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq$a$1;->bxY:Lcom/kingroot/kinguser/bjq$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/bjq$a;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bjq;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bjq$a$1;->bxY:Lcom/kingroot/kinguser/bjq$a;

    iget-object v2, v2, Lcom/kingroot/kinguser/bjq$a;->bxW:Lcom/kingroot/kinguser/bjq;

    iget v2, v2, Lcom/kingroot/kinguser/bjq;->bxN:I

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 786
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$a$1;->bxY:Lcom/kingroot/kinguser/bjq$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjq$a;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 787
    return-void
.end method
