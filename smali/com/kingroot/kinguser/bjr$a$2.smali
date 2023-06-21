.class Lcom/kingroot/kinguser/bjr$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjr$a;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byy:Lcom/kingroot/kinguser/bjr$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjr$a;)V
    .locals 0

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$a$2;->byy:Lcom/kingroot/kinguser/bjr$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1297
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1878f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1298
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1299
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr$a$2;->byy:Lcom/kingroot/kinguser/bjr$a;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bjr$a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/ztool/uninstall/SoftWareRecycleActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1301
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr$a$2;->byy:Lcom/kingroot/kinguser/bjr$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/bjr$a;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bjr;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1302
    return-void
.end method
