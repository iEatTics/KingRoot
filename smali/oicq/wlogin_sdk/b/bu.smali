.class public Loicq/wlogin_sdk/b/bu;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/b/bu;->a:J

    const/16 v0, 0x183

    iput v0, p0, Loicq/wlogin_sdk/b/bu;->h:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Loicq/wlogin_sdk/b/bu;->a:J

    return-wide v0
.end method

.method public a(J)[B
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-static {v1, v0, p1, p2}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    iget v0, p0, Loicq/wlogin_sdk/b/bu;->h:I

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/b/bu;->b(I)V

    array-length v0, v1

    invoke-virtual {p0, v1, v0}, Loicq/wlogin_sdk/b/bu;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/bu;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/bu;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 2

    iget v0, p0, Loicq/wlogin_sdk/b/bu;->f:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/b/bu;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/bu;->e:I

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int64([BI)J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/b/bu;->a:J

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
