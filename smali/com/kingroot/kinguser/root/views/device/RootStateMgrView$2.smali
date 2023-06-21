.class Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->XF()V
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
    .line 377
    iput-object p1, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 380
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 381
    invoke-static {}, Lcom/kingroot/kinguser/bgl;->abL()Ljava/util/List;

    move-result-object v0

    .line 382
    new-instance v1, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2$1;-><init>(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2;Ljava/util/List;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 388
    return-void
.end method
