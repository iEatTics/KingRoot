.class Lcom/kingroot/kinguser/cfk$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ccF:Lcom/kingroot/kinguser/cfk;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfk;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/kingroot/kinguser/cfk$2;->ccF:Lcom/kingroot/kinguser/cfk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/kingroot/kinguser/cfk$2;->ccF:Lcom/kingroot/kinguser/cfk;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk$2;->ccF:Lcom/kingroot/kinguser/cfk;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfk;->d(Lcom/kingroot/kinguser/cfk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk$2;->ccF:Lcom/kingroot/kinguser/cfk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfk;->ami()V

    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk$2;->ccF:Lcom/kingroot/kinguser/cfk;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/cfk;->a(Lcom/kingroot/kinguser/cfk;Z)Z

    .line 103
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
