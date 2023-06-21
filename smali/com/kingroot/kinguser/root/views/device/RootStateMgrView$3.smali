.class Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$3;
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
    .line 441
    iput-object p1, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$3;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 445
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x1885c

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 447
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const/4 v4, 0x2

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/ady;->a(IIIIIII)V

    .line 449
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$3;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/RootPcGuideActivity;->aL(Landroid/content/Context;)V

    .line 450
    return-void
.end method
