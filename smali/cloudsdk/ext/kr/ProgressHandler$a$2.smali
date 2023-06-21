.class final enum Lcloudsdk/ext/kr/ProgressHandler$a$2;
.super Lcloudsdk/ext/kr/ProgressHandler$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcloudsdk/ext/kr/ProgressHandler$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 269
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcloudsdk/ext/kr/ProgressHandler$a;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(JJ)J
    .locals 9

    .prologue
    const/16 v8, 0x32

    const/16 v7, 0x23

    const/16 v6, 0xf

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 279
    const-wide/16 v0, 0x0

    .line 280
    const-wide/16 v2, 0x5

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 281
    const/4 v0, 0x0

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v5, v2, v3}, Lcloudsdk/ext/kr/ProgressHandler$a;->a(IIJ)J

    move-result-wide v0

    .line 293
    :cond_0
    :goto_0
    return-wide v0

    .line 282
    :cond_1
    const-wide/16 v2, 0xf

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    .line 283
    const-wide/16 v0, 0x7530

    invoke-static {v5, v6, v0, v1}, Lcloudsdk/ext/kr/ProgressHandler$a;->a(IIJ)J

    move-result-wide v0

    goto :goto_0

    .line 284
    :cond_2
    const-wide/16 v2, 0x23

    cmp-long v2, p1, v2

    if-gez v2, :cond_3

    .line 285
    shl-long v0, p3, v4

    invoke-static {v6, v7, v0, v1}, Lcloudsdk/ext/kr/ProgressHandler$a;->a(IIJ)J

    move-result-wide v0

    goto :goto_0

    .line 286
    :cond_3
    const-wide/16 v2, 0x32

    cmp-long v2, p1, v2

    if-gez v2, :cond_4

    .line 287
    const-wide/16 v0, 0x7d0

    invoke-static {v7, v8, v0, v1}, Lcloudsdk/ext/kr/ProgressHandler$a;->a(IIJ)J

    move-result-wide v0

    goto :goto_0

    .line 288
    :cond_4
    const-wide/16 v2, 0x46

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 289
    const/16 v0, 0x46

    const-wide/32 v2, 0x4f588

    shl-long v4, p3, v4

    sub-long/2addr v2, v4

    invoke-static {v8, v0, v2, v3}, Lcloudsdk/ext/kr/ProgressHandler$a;->a(IIJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method final a(I)Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x32

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
