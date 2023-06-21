.class public Lcom/kingroot/kinguser/cfb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private bZA:I

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfb$a;->mLock:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/cfb$a;->bZA:I

    return-void
.end method


# virtual methods
.method public alo()I
    .locals 3

    .prologue
    .line 50
    iget-object v1, p0, Lcom/kingroot/kinguser/cfb$a;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget v0, p0, Lcom/kingroot/kinguser/cfb$a;->bZA:I

    .line 52
    iget v2, p0, Lcom/kingroot/kinguser/cfb$a;->bZA:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kingroot/kinguser/cfb$a;->bZA:I

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
