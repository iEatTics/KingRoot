.class final Lcom/kingroot/kinguser/bjj$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field final synthetic bxe:Lcom/kingroot/kinguser/bjj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjj;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/kingroot/kinguser/bjj$f;->bxe:Lcom/kingroot/kinguser/bjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 443
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x186d8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 444
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 445
    iget-object v1, p0, Lcom/kingroot/kinguser/bjj$f;->bxe:Lcom/kingroot/kinguser/bjj;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bjj;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/ztool/uninstall/SoftWareCoreActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 447
    iget-object v1, p0, Lcom/kingroot/kinguser/bjj$f;->bxe:Lcom/kingroot/kinguser/bjj;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bjj;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 448
    return-void
.end method
