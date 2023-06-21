.class Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$4;
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
    .line 455
    iput-object p1, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$4;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$4;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-static {v0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->a(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;)Lcom/kingroot/kinguser/bcp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 459
    iget-object v2, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$4;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    new-instance v3, Lcom/kingroot/kinguser/bcp;

    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$4;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v4, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$4;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/kingroot/kinguser/bcp;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->a(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;Lcom/kingroot/kinguser/bcp;)Lcom/kingroot/kinguser/bcp;

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$4;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-static {v0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->a(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;)Lcom/kingroot/kinguser/bcp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcp;->show()V

    .line 463
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const/4 v6, 0x2

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/ady;->a(IIIIIII)V

    .line 465
    return-void
.end method
