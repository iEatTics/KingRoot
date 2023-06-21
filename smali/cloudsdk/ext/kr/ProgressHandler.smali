.class public Lcloudsdk/ext/kr/ProgressHandler;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcloudsdk/ext/kr/RootConst;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcloudsdk/ext/kr/ProgressHandler$a;
    }
.end annotation


# instance fields
.field private j:Landroid/os/Handler;

.field private k:Lcloudsdk/ext/kr/ProgressHandler$a;

.field private l:J

.field private m:I

.field private mContext:Landroid/content/Context;

.field private n:J

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:Lcloudsdk/ext/kr/RootExtInfo;

.field private t:Lcloudsdk/ext/kr/RootExtInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcloudsdk/ext/kr/ProgressHandler;->n:J

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcloudsdk/ext/kr/ProgressHandler;->o:Z

    .line 44
    iput-object p1, p0, Lcloudsdk/ext/kr/ProgressHandler;->mContext:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcloudsdk/ext/kr/ProgressHandler;->j:Landroid/os/Handler;

    .line 46
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcloudsdk/ext/kr/ProgressHandler;->o:Z

    .line 226
    return-void
.end method

.method public getRootState()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcloudsdk/ext/kr/ProgressHandler;->m:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x4e20

    const-wide/16 v6, 0x0

    .line 153
    iget-boolean v0, p0, Lcloudsdk/ext/kr/ProgressHandler;->o:Z

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcloudsdk/ext/kr/ProgressHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/ext/kr/RootDao;->getCurrProgress()I

    move-result v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 160
    iget-object v1, p0, Lcloudsdk/ext/kr/ProgressHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcloudsdk/ext/kr/RootDao;->setCurrProgress(I)V

    .line 161
    iget-wide v2, p0, Lcloudsdk/ext/kr/ProgressHandler;->n:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcloudsdk/ext/kr/ProgressHandler;->k:Lcloudsdk/ext/kr/ProgressHandler$a;

    invoke-virtual {v1, v0}, Lcloudsdk/ext/kr/ProgressHandler$a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 162
    :cond_2
    iget-object v1, p0, Lcloudsdk/ext/kr/ProgressHandler;->k:Lcloudsdk/ext/kr/ProgressHandler$a;

    int-to-long v2, v0

    iget-wide v4, p0, Lcloudsdk/ext/kr/ProgressHandler;->l:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    const-wide/32 v4, 0x1d4c0

    iput-wide v4, p0, Lcloudsdk/ext/kr/ProgressHandler;->l:J

    :cond_3
    :goto_1
    iget-wide v4, p0, Lcloudsdk/ext/kr/ProgressHandler;->l:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcloudsdk/ext/kr/ProgressHandler$a;->a(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcloudsdk/ext/kr/ProgressHandler;->n:J

    .line 167
    :cond_4
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 168
    const v2, 0x13889

    iput v2, v1, Landroid/os/Message;->what:I

    .line 169
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 170
    const-string v3, "step"

    iget v4, p0, Lcloudsdk/ext/kr/ProgressHandler;->p:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    const-string v3, "solutionCount"

    iget v4, p0, Lcloudsdk/ext/kr/ProgressHandler;->q:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    const-string v3, "solutionIdx"

    iget v4, p0, Lcloudsdk/ext/kr/ProgressHandler;->r:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    const-string v3, "progress"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 175
    iget-object v2, p0, Lcloudsdk/ext/kr/ProgressHandler;->j:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    iget-object v1, p0, Lcloudsdk/ext/kr/ProgressHandler;->k:Lcloudsdk/ext/kr/ProgressHandler$a;

    sget-object v2, Lcloudsdk/ext/kr/ProgressHandler$a;->w:Lcloudsdk/ext/kr/ProgressHandler$a;

    if-ne v1, v2, :cond_6

    .line 178
    const/16 v1, 0x64

    if-lt v0, v1, :cond_9

    .line 179
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 180
    const v1, 0x13887

    iput v1, v0, Landroid/os/Message;->what:I

    .line 181
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 182
    const-string v2, "rootState"

    iget v3, p0, Lcloudsdk/ext/kr/ProgressHandler;->m:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 184
    iget-object v1, p0, Lcloudsdk/ext/kr/ProgressHandler;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcloudsdk/ext/kr/ProgressHandler;->o:Z

    goto/16 :goto_0

    .line 162
    :cond_5
    iget-wide v4, p0, Lcloudsdk/ext/kr/ProgressHandler;->l:J

    cmp-long v4, v4, v8

    if-gez v4, :cond_3

    iput-wide v8, p0, Lcloudsdk/ext/kr/ProgressHandler;->l:J

    goto :goto_1

    .line 189
    :cond_6
    const/16 v1, 0x46

    if-lt v0, v1, :cond_9

    .line 190
    invoke-virtual {p0}, Lcloudsdk/ext/kr/ProgressHandler;->dismiss()V

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    iget-object v1, p0, Lcloudsdk/ext/kr/ProgressHandler;->s:Lcloudsdk/ext/kr/RootExtInfo;

    if-eqz v1, :cond_7

    .line 193
    const-string v1, "mobileRootInfo"

    iget-object v2, p0, Lcloudsdk/ext/kr/ProgressHandler;->s:Lcloudsdk/ext/kr/RootExtInfo;

    invoke-virtual {v2}, Lcloudsdk/ext/kr/RootExtInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 195
    :cond_7
    iget-object v1, p0, Lcloudsdk/ext/kr/ProgressHandler;->t:Lcloudsdk/ext/kr/RootExtInfo;

    if-eqz v1, :cond_8

    .line 196
    const-string v1, "pcRootInfo"

    iget-object v2, p0, Lcloudsdk/ext/kr/ProgressHandler;->t:Lcloudsdk/ext/kr/RootExtInfo;

    invoke-virtual {v2}, Lcloudsdk/ext/kr/RootExtInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 198
    :cond_8
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 199
    const v2, 0x13886

    iput v2, v1, Landroid/os/Message;->what:I

    .line 200
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 201
    iget-object v0, p0, Lcloudsdk/ext/kr/ProgressHandler;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 206
    :cond_9
    iget-wide v0, p0, Lcloudsdk/ext/kr/ProgressHandler;->n:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 208
    const/16 v0, 0x3ec

    iget-wide v2, p0, Lcloudsdk/ext/kr/ProgressHandler;->n:J

    invoke-virtual {p0, v0, v2, v3}, Lcloudsdk/ext/kr/ProgressHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public notifyProgressUpdate()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcloudsdk/ext/kr/ProgressHandler;->o:Z

    .line 218
    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, Lcloudsdk/ext/kr/ProgressHandler;->sendEmptyMessage(I)Z

    .line 219
    return-void
.end method

.method public resetData(Z)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcloudsdk/ext/kr/ProgressHandler;->o:Z

    .line 72
    iput v1, p0, Lcloudsdk/ext/kr/ProgressHandler;->p:I

    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcloudsdk/ext/kr/ProgressHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/RootDao;->setCurrProgress(I)V

    .line 76
    :cond_0
    iput v1, p0, Lcloudsdk/ext/kr/ProgressHandler;->q:I

    .line 77
    iput v1, p0, Lcloudsdk/ext/kr/ProgressHandler;->r:I

    .line 78
    return-void
.end method

.method public setAvgTime(J)V
    .locals 1

    .prologue
    .line 85
    iput-wide p1, p0, Lcloudsdk/ext/kr/ProgressHandler;->l:J

    .line 86
    return-void
.end method

.method public setIntervalMode(Lcloudsdk/ext/kr/ProgressHandler$a;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcloudsdk/ext/kr/ProgressHandler;->k:Lcloudsdk/ext/kr/ProgressHandler$a;

    if-eq v0, p1, :cond_0

    .line 60
    iput-object p1, p0, Lcloudsdk/ext/kr/ProgressHandler;->k:Lcloudsdk/ext/kr/ProgressHandler$a;

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcloudsdk/ext/kr/ProgressHandler;->n:J

    .line 63
    :cond_0
    return-void
.end method

.method public setRootInfo(Lcloudsdk/ext/kr/RootExtInfo;Lcloudsdk/ext/kr/RootExtInfo;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcloudsdk/ext/kr/ProgressHandler;->s:Lcloudsdk/ext/kr/RootExtInfo;

    .line 147
    iput-object p2, p0, Lcloudsdk/ext/kr/ProgressHandler;->t:Lcloudsdk/ext/kr/RootExtInfo;

    .line 148
    return-void
.end method

.method public setRootState(I)V
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcloudsdk/ext/kr/ProgressHandler;->m:I

    .line 133
    return-void
.end method

.method public setRootStep(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcloudsdk/ext/kr/ProgressHandler;->p:I

    .line 113
    return-void
.end method

.method public setSolutionCount(I)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcloudsdk/ext/kr/ProgressHandler;->q:I

    .line 121
    return-void
.end method

.method public setSolutionIdx(I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcloudsdk/ext/kr/ProgressHandler;->r:I

    .line 129
    return-void
.end method
