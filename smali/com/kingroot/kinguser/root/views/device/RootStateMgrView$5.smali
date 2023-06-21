.class Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$5;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 475
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188c0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 476
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 477
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$5;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/activitys/RootMgrActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 478
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$5;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 479
    return-void
.end method
