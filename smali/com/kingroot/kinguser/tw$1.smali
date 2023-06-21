.class final Lcom/kingroot/kinguser/tw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/tw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 119
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/common/utils/system/ProcessUtils;->cc(I)Lcom/kingroot/common/utils/system/ProcessUtils$a;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/tw;->a(Lcom/kingroot/common/utils/system/ProcessUtils$a;)Lcom/kingroot/common/utils/system/ProcessUtils$a;

    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/aat;->pX()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/tw;->w(J)J

    .line 121
    invoke-static {}, Lcom/kingroot/kinguser/aat;->pY()I

    move-result v0

    .line 122
    invoke-static {}, Lcom/kingroot/kinguser/tw;->ke()Lcom/kingroot/common/utils/system/ProcessUtils$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    invoke-static {}, Lcom/kingroot/kinguser/tw;->kf()Lcom/kingroot/common/utils/system/ProcessUtils$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    invoke-static {}, Lcom/kingroot/kinguser/tw;->ke()Lcom/kingroot/common/utils/system/ProcessUtils$a;

    move-result-object v1

    iget-wide v2, v1, Lcom/kingroot/common/utils/system/ProcessUtils$a;->mCpuTime:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 125
    invoke-static {}, Lcom/kingroot/kinguser/tw;->kg()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 126
    invoke-static {}, Lcom/kingroot/kinguser/tw;->kf()Lcom/kingroot/common/utils/system/ProcessUtils$a;

    move-result-object v1

    iget-wide v2, v1, Lcom/kingroot/common/utils/system/ProcessUtils$a;->mCpuTime:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 127
    invoke-static {}, Lcom/kingroot/kinguser/tw;->kh()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 128
    invoke-static {}, Lcom/kingroot/kinguser/tw;->kh()J

    move-result-wide v2

    invoke-static {}, Lcom/kingroot/kinguser/tw;->kg()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 129
    invoke-static {}, Lcom/kingroot/kinguser/tw;->kf()Lcom/kingroot/common/utils/system/ProcessUtils$a;

    move-result-object v1

    iget-wide v2, v1, Lcom/kingroot/common/utils/system/ProcessUtils$a;->mCpuTime:J

    invoke-static {}, Lcom/kingroot/kinguser/tw;->ke()Lcom/kingroot/common/utils/system/ProcessUtils$a;

    move-result-object v1

    iget-wide v4, v1, Lcom/kingroot/common/utils/system/ProcessUtils$a;->mCpuTime:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 130
    mul-int/lit8 v0, v0, 0x64

    int-to-double v0, v0

    invoke-static {}, Lcom/kingroot/kinguser/tw;->kf()Lcom/kingroot/common/utils/system/ProcessUtils$a;

    move-result-object v2

    iget-wide v2, v2, Lcom/kingroot/common/utils/system/ProcessUtils$a;->mCpuTime:J

    invoke-static {}, Lcom/kingroot/kinguser/tw;->ke()Lcom/kingroot/common/utils/system/ProcessUtils$a;

    move-result-object v4

    iget-wide v4, v4, Lcom/kingroot/common/utils/system/ProcessUtils$a;->mCpuTime:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {}, Lcom/kingroot/kinguser/tw;->kh()J

    move-result-wide v2

    invoke-static {}, Lcom/kingroot/kinguser/tw;->kg()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 134
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/kingroot/kinguser/tw$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/kingroot/kinguser/tw$1$1;-><init>(Lcom/kingroot/kinguser/tw$1;D)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 143
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 148
    :cond_0
    return-void
.end method
