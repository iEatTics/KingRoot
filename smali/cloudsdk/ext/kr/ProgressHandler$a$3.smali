.class final enum Lcloudsdk/ext/kr/ProgressHandler$a$3;
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
    .line 300
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcloudsdk/ext/kr/ProgressHandler$a;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(JJ)J
    .locals 5

    .prologue
    const-wide/16 v2, 0x64

    .line 310
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 311
    const-wide/16 v0, 0x1770

    sub-long/2addr v2, p1

    div-long/2addr v0, v2

    .line 315
    :goto_0
    return-wide v0

    .line 313
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method final a(I)Z
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method
