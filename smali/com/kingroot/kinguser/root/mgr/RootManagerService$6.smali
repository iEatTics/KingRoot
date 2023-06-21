.class Lcom/kingroot/kinguser/root/mgr/RootManagerService$6;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/root/mgr/RootManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bfG:Lcom/kingroot/kinguser/root/mgr/RootManagerService;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/root/mgr/RootManagerService;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService$6;->bfG:Lcom/kingroot/kinguser/root/mgr/RootManagerService;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 820
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 821
    new-instance v0, Lcom/kingroot/kinguser/root/mgr/RootManagerService$6$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService$6$1;-><init>(Lcom/kingroot/kinguser/root/mgr/RootManagerService$6;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    return-void
.end method
