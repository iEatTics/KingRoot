.class Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$6;
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
    .line 485
    iput-object p1, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$6;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 489
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const/4 v7, 0x2

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/ady;->a(IIIIIII)V

    .line 492
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$6;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/AdaptRankingActivity;->aL(Landroid/content/Context;)V

    .line 493
    return-void
.end method
