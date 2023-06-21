.class Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bhD:Ljava/util/List;

.field final synthetic bhE:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2$1;->bhE:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2$1;->bhD:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2$1;->bhE:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2$1;->bhD:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->setCheckContent(Ljava/util/List;)V

    .line 386
    return-void
.end method
