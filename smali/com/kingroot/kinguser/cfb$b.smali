.class public Lcom/kingroot/kinguser/cfb$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private bZB:B

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfb$b;->mLock:Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/kingroot/kinguser/cfb$b;->bZB:B

    return-void
.end method


# virtual methods
.method public alB()B
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/kingroot/kinguser/cfb$b;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-byte v0, p0, Lcom/kingroot/kinguser/cfb$b;->bZB:B

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_0

    .line 78
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/kingroot/kinguser/cfb$b;->bZB:B

    .line 80
    :cond_0
    iget-byte v0, p0, Lcom/kingroot/kinguser/cfb$b;->bZB:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/kingroot/kinguser/cfb$b;->bZB:B

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
