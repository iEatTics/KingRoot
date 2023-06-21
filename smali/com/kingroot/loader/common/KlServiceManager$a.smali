.class public abstract Lcom/kingroot/loader/common/KlServiceManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/loader/common/KlServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private byK:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/loader/common/KlServiceManager$a;->byK:Ljava/lang/Object;

    .line 59
    if-eqz v0, :cond_0

    .line 60
    monitor-exit p0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/loader/common/KlServiceManager$a;->aeB()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/common/KlServiceManager$a;->byK:Ljava/lang/Object;

    monitor-exit p0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract aeB()Ljava/lang/Object;
.end method
