.class final enum Lcloudsdk/ext/kr/ProgressHandler$a$1;
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
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, p1, v0, v0}, Lcloudsdk/ext/kr/ProgressHandler$a;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(JJ)J
    .locals 11

    .prologue
    const/16 v10, 0x28

    const/16 v9, 0xf

    const/4 v8, 0x0

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    const-wide/16 v4, 0x7d0

    .line 247
    const-wide/16 v0, 0x0

    .line 248
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 249
    const/4 v0, -0x1

    invoke-static {v0, v8, v4, v5}, Lcloudsdk/ext/kr/ProgressHandler$a;->a(IIJ)J

    move-result-wide v0

    .line 262
    :cond_0
    :goto_0
    return-wide v0

    .line 250
    :cond_1
    const-wide/16 v2, 0xf

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    .line 251
    invoke-static {v8, v9, v4, v5}, Lcloudsdk/ext/kr/ProgressHandler$a;->a(IIJ)J

    move-result-wide v0

    goto :goto_0

    .line 252
    :cond_2
    const-wide/16 v2, 0x28

    cmp-long v2, p1, v2

    if-gez v2, :cond_3

    .line 253
    long-to-double v0, p3

    mul-double/2addr v0, v6

    double-to-long v0, v0

    invoke-static {v9, v10, v0, v1}, Lcloudsdk/ext/kr/ProgressHandler$a;->a(IIJ)J

    move-result-wide v0

    goto :goto_0

    .line 254
    :cond_3
    const-wide/16 v2, 0x32

    cmp-long v2, p1, v2

    if-gez v2, :cond_4

    .line 255
    const/16 v0, 0x32

    invoke-static {v10, v0, v4, v5}, Lcloudsdk/ext/kr/ProgressHandler$a;->a(IIJ)J

    move-result-wide v0

    goto :goto_0

    .line 256
    :cond_4
    const-wide/16 v2, 0x46

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 257
    const/16 v0, 0x32

    const/16 v1, 0x46

    const-wide v2, 0x4115f90000000000L    # 360000.0

    long-to-double v4, p3

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcloudsdk/ext/kr/ProgressHandler$a;->a(IIJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method final a(I)Z
    .locals 1

    .prologue
    .line 241
    if-eqz p1, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x28

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
