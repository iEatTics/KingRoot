.class Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$7;
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
    .line 499
    iput-object p1, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$7;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 502
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$7;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->cS(Z)V

    .line 504
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const/4 v5, 0x2

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/ady;->a(IIIIIII)V

    .line 506
    return-void
.end method
