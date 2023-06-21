.class public Lcom/kingroot/kinguser/aeb;
.super Lcom/kingroot/kinguser/uo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aeb$a;
    }
.end annotation


# static fields
.field private static volatile aeF:Lcom/kingroot/kinguser/aeb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingroot/kinguser/uo;-><init>()V

    return-void
.end method

.method public static tV()Lcom/kingroot/kinguser/aeb;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/kingroot/kinguser/aeb;->aeF:Lcom/kingroot/kinguser/aeb;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/kingroot/kinguser/aeb;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aeb;->aeF:Lcom/kingroot/kinguser/aeb;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/kingroot/kinguser/aeb;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aeb;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aeb;->aeF:Lcom/kingroot/kinguser/aeb;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/aeb;->aeF:Lcom/kingroot/kinguser/aeb;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/IIpcCallback;)V
    .locals 5

    .prologue
    .line 45
    const/4 v0, 0x2

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1, p2}, Lcom/kingroot/kinguser/aeb;->a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IIpcCallback;)V

    .line 46
    return-void
.end method

.method public cI(I)V
    .locals 5

    .prologue
    .line 41
    const/4 v0, 0x2

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aeb;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 42
    return-void
.end method

.method public kD()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/up;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    const-class v0, Lcom/kingroot/kinguser/aeb$a;

    return-object v0
.end method

.method public tW()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aeb;->aX(I)V

    .line 37
    return-void
.end method
