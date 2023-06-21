.class public Lcom/kingroot/kinguser/cby;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RET_EOF:I = 0x2

.field public static final RET_ERR:I = 0x1

.field public static final RET_OK:I = 0x0

.field public static final RET_TIMEOUT:I = 0x3


# instance fields
.field public final mCmdFlag:Ljava/lang/String;

.field public final mExitValue:Ljava/lang/Integer;

.field public final mStdErr:Ljava/lang/String;

.field public final mStdOut:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/kingroot/kinguser/cby;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/kingroot/kinguser/cby;->mCmdFlag:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/kingroot/kinguser/cby;->mExitValue:Ljava/lang/Integer;

    .line 41
    iput-object p3, p0, Lcom/kingroot/kinguser/cby;->mStdOut:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/kingroot/kinguser/cby;->mStdErr:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public success()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/cby;->mExitValue:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/cby;->mExitValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
