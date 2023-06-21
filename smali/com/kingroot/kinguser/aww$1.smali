.class Lcom/kingroot/kinguser/aww$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aga$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aww;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aVP:Lcom/kingroot/kinguser/aww;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aww;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/kingroot/kinguser/aww$1;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fn(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18880

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/kingroot/kinguser/aww$1;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aww;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/activitys/AdvancePermAppDetailActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/kingroot/kinguser/aww$1;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aww;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method
